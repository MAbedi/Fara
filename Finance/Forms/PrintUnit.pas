(* Autor Shalonkin Alex
   e-mail alex@vita-samara.ru *)

unit PrintUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
  StdCtrls, DB, DBTables, Printers,dbgrids,extctrls,comctrls,Forms;

const MaxColums=10;
      NumerateColumnWidth=30;
      NumerateFieldName='Num';

type
  TOnLogChangeEvent = procedure (Sender: TObject; aStr:String) of object;
  TOnNextPageEvent = procedure (Sender: TObject; NumPage:Integer) of object;

  PBoundRec = ^TBoundRec;
  TBoundRec=record
    aPos:Integer; // Смещение относительно верхней точки
    aStr:String;
    aFontSize:Integer;
    aFontStyle:TFontStyles;
    aAligment:TAlignment;
  end;

  TPrintBound=class(TList)
  private
    FMaxPos:Integer;
    function GetBItem(Index:Integer):TBoundRec;
  public
    constructor Create;
    function Add(aPos:Integer;aStr:String;aFontSize:Integer;aFontStyle:TFontStyles;aAligment:TAlignment):Integer;
    property Items[Index:Integer]:TBoundRec read GetBItem;
    property MaxPos:Integer read FMaxPos;
  end;

  TColumnRect=record
    Left:Integer;
    Right:Integer;
    Top:Integer;
    Alignment:TAlignment;
    Font:TFont;
    Color:TColor;
    TitleFont:TFont;
    TitleAlignment:TAlignment;
    TitleColor:TColor;
    TitleStr:String;
    FieldName:String;
  end;

  TPrintReport = class(TComponent)
  private
    FDataSet:TDataSet;
    FDBGrid:TDBGrid;
    FPreviewImage: TImage;
    FOnLogChangeEvent: TOnLogChangeEvent; //Срабатывает когда происходит событие изменения лога
    FOnNextPageEvent:TOnNextPageEvent;
    FLogPanel:TPanel; // Панель для вывода лога
    FVisibleColumn:Integer; //Количество видимых столбцов
    FAvtoNumerate:Boolean; //Нужно ли нумировать столбци
    FPrintDialog: Boolean; //Показывать или нет принт диалог
    FPrintProgressBar:TProgressBar; //Прогресс бар для печати
    FPrintOrientation: TPrinterOrientation; //Ориентация для печати
    FWidth:Integer; FHeight:Integer; // Ширина и высота канваса
    FLeftMergin:Integer; FRightMergin:Integer; FTopMergin:Integer; FBottomMergin:Integer; // Отступ от краев при распечатке
    FPageNumberTop:Integer;
    FBoundMergine:Integer; // Отступ от баунда до таблици и от таблици до баунда
    procedure SetDBGrid(const Value: TDBGrid);
    procedure SetPreviewImage(const Value: TImage);
  protected
    FActiveTopPosition:Integer; //Верхняя граница для прорисовки
    FColumns:Array [0..MaxColums-1] of TColumnRect;
    FCanvas:TCanvas; // Канвас на котором выводится изображение мб принтер или картинка
    FMaxTitleHeight:Integer;
    FMaxColumnHeight:Integer;
    FAutoNumber:Integer;
    FPageNumber:Integer;
    FUsePrinter:Boolean;
    procedure PaintCanvas;
    procedure AddInLog(aStr:String);
    procedure PaintBound(Bound:TPrintBound);
    procedure ProcessingGridCoord;
    procedure PrintGridTitle;
    procedure PrintRows;
    procedure PrintRow;
    procedure PrintPageNumber;
  public
    Title:TPrintBound;
    Bottom:TPrintBound;
    Logs:TStringList;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Preview:Boolean;
    function Print:Boolean;
  published
    property DBGrid:TDBGrid read FDBGrid write SetDBGrid;
    property ONLogChangeEvent: TOnLogChangeEvent read FOnLogChangeEvent write FOnLogChangeEvent;
    property ONNextPageEvent: TOnNextPageEvent read FOnNextPageEvent write FOnNextPageEvent;
    property LogPanel:TPanel read FLogPanel write FLogPanel;
    property PrintOrientation:TPrinterOrientation read FPrintOrientation write FPrintOrientation default poPortrait;
    property PrintProgressBar:TProgressBar read FPrintProgressBar write FPrintProgressBar;
    property AvtoNumerate:Boolean read FAvtoNumerate write FAvtoNumerate default False;
    property PrintDialog: Boolean read FPrintDialog write FPrintDialog default True;
    property PreviewImate:TImage read FPreviewImage write SetPreviewImage;
  end;

implementation
// Сдвигает рект по вертикали и горизонтали
function MoveRect(Rect:TColumnRect;x,y:Integer):TColumnRect;
begin
  Result.Left:=Rect.Left+x;
  Result.Right:=Rect.Right+x;
  Result.Top:=Rect.Top+y;
end;
// Выводит текс внутрь ячейки
procedure PaintCells(aCanvas:TCanvas;aRect:TRect;aFont:TFont;aAlignment:TAlignment;aColor:TColor;aStr:String);
var LeftPoint:Integer;
    lWidth:Integer;
    TopPoint:Integer;
begin
  //Закрашиваем прямоугольники
  aCanvas.Brush.Color:=aColor;
  aCanvas.FillRect(Rect(aRect.Left+1,aRect.Top+1,aRect.Right,aRect.Bottom));

  aCanvas.Font:=aFont;

  While (Length(aStr)>0)and(aCanvas.TextWidth(aStr)>(aRect.Right-aRect.Left)-aCanvas.TextWidth('А')) do Delete(aStr,Length(aStr),1);

  case aAlignment of
    taLeftJustify:LeftPoint:=aRect.Left+2;
    taCenter:begin
        LeftPoint:=aRect.Left+((aRect.Right-aRect.Left) div 2)-aCanvas.TextWidth(aStr) div 2;
      end;
    taRightJustify:LeftPoint:=aRect.Right-aCanvas.TextWidth(aStr)-1;
  end;

  TopPoint:=aRect.Top+
    ((aRect.Bottom-aRect.Top) div 2)-aCanvas.TextHeight(aStr) div 2;

  aCanvas.TextOut(LeftPoint,TopPoint,aStr);
end;

constructor TPrintReport.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Title:=TPrintBound.Create;
  Bottom:=TPrintBound.Create;
  Logs:=TStringList.Create;
  FAvtoNumerate:=False;
  FLogPanel:=nil;
  FPrintProgressBar:=nil;
  FPrintOrientation:=poPortrait;
  FPreviewImage:=nil;
  FWidth:=0; FHeight:=0;
  FLeftMergin:=10;
  FRightMergin:=10; FBottomMergin:=10;
  FActiveTopPosition:=0;
  FBoundMergine:=10;
  FUsePrinter:=True;
end;

destructor TPrintReport.Destroy;
begin
  Title.Free; Title:=nil;
  Bottom.Free; Bottom:=nil;
  Logs.Free; Logs:=nil;
  inherited Destroy;
end;

function TPrintReport.Preview: Boolean;
begin
  AddInLog('Формирование предпросмотра');
  Result:=Assigned(FPreviewImage);
  if Result then begin
    FCanvas:=FPreviewImage.Canvas;
    FWidth:=FPreviewImage.Width;
    FHeight:=FPreviewImage.Height;
    FUsePrinter:=False;
    PaintCanvas;
  end;
  AddInLog('Формирование завершено');
end;

procedure TPrintReport.PaintCanvas;
begin
  AddInLog('Вывод изображения');
  if FUsePrinter then begin FTopMergin:=200; FPageNumberTop:=50; end else begin FTopMergin:=20; FPageNumberTop:=10; end;
  FActiveTopPosition:=FTopMergin; FPageNumber:=1;
  PrintPageNumber;
  if Title.Count>0 then begin
    PaintBound(Title);
    FActiveTopPosition:=FActiveTopPosition+FBoundMergine;
  end;
  ProcessingGridCoord;
  PrintGridTitle;
  PrintRows;
  if Bottom.Count>0 then begin
    FActiveTopPosition:=FActiveTopPosition+FMaxColumnHeight+FBoundMergine;
    PaintBound(Bottom);
  end;
end;

procedure TPrintReport.SetDBGrid(const Value: TDBGrid);
var i:Integer;
begin
  FDBGrid := Value;
  FDataSet:=FDBGrid.DataSource.DataSet;
  FVisibleColumn:=0;
  For i:=0 to FDBGrid.Columns.Count-1 do begin
    if FDBGrid.Columns[i].Visible then Inc(FVisibleColumn);
    Application.ProcessMessages;
  end;
end;

{ TPrintBound }
function TPrintBound.Add(aPos: Integer; aStr: String; aFontSize: Integer;
  aFontStyle: TFontStyles; aAligment: TAlignment): Integer;
var B:PBoundRec;
begin
  New(B);
  B^.aPos:=aPos;
  B^.aStr:=aStr;
  B^.aFontSize:=aFontSize;
  B^.aFontStyle:=aFontStyle;
  B^.aAligment:=aAligment;
  if FMaxPos<aPos then FMaxPos:=aPos;
  Result:=inherited Add(B);
end;

constructor TPrintBound.Create;
begin
  inherited;
  FMaxPos:=0;
end;

function TPrintBound.GetBItem(Index: Integer): TBoundRec;
begin
  Result:=PBoundRec(inherited Items[Index])^;
end;

procedure TPrintReport.SetPreviewImage(const Value: TImage);
begin
  FPreviewImage := Value;
  FWidth:=FPreviewImage.Width;
  FHeight:=FPreviewImage.Height;
  FCanvas:=Value.Canvas;
  FUsePrinter:=False;
end;

procedure TPrintReport.AddInLog(aStr: String);
begin
  Logs.Add(aStr);
  if Assigned(FOnLogChangeEvent) then FOnLogChangeEvent(Logs, aStr);
  if Assigned(FPrintProgressBar) then FPrintProgressBar.StepIt;
  if Assigned(FLogPanel) then begin
    FLogPanel.Caption:=aStr;
    FLogPanel.Refresh;
  end;
end;


procedure TPrintReport.PaintBound(Bound:TPrintBound);
var I:Integer;
    LeftPoint:Integer;
    lWidth:Integer;
    MaxHeight:Integer;
begin
  AddInLog('Прорисовка баундов');
  MaxHeight:=0;
  For i:=0 to Bound.Count-1 do begin
    FCanvas.Brush.Color:=clWhite;
    FCanvas.Font.Size:=Bound.Items[i].aFontSize;
    FCanvas.Font.Style:=Bound.Items[i].aFontStyle;
    FCanvas.Font.Name:='MS Sans Serif';
    case Bound.Items[i].aAligment of
      taLeftJustify:LeftPoint:=FLeftMergin;
      taCenter:begin
        lWidth:=(FWidth-(FLeftMergin+FRightMergin)) div 2;
        LeftPoint:=FLeftMergin+lWidth-FCanvas.TextWidth(Bound.Items[i].aStr) div 2;
      end;
      taRightJustify:LeftPoint:=FWidth-FRightMergin-FCanvas.TextWidth(Bound.Items[i].aStr);
    end;
    FCanvas.TextOut(LeftPoint,FActiveTopPosition,Bound.Items[i].aStr);
    if FCanvas.TextHeight(Bound.Items[i].aStr)>MaxHeight then MaxHeight:=FCanvas.TextHeight(Bound.Items[i].aStr);
    if i<Bound.Count-1 then
      if Bound.Items[i+1].aPos>Bound.Items[i].aPos then begin
        FActiveTopPosition:=FActiveTopPosition+MaxHeight;
        MaxHeight:=0;
      end;
  end;
  FActiveTopPosition:=FActiveTopPosition+MaxHeight;
end;

procedure TPrintReport.ProcessingGridCoord;
var i:Integer;
    lWidth:Integer;
    lKoeff:Real;
    j:Integer;
    LeftPoint:Integer;
begin
  AddInLog('Подсчет кол-ва видимых столбцов и общую ширину таблицы');
  lWidth:=0; FMaxColumnHeight:=0;
  For i:=0 to FDBGrid.Columns.Count-1 do begin
    if FDBGrid.Columns[i].Visible then begin
      lWidth:=lWidth+FDBGrid.Columns[i].Width;
      FCanvas.Font:=FDBGrid.Columns[i].Font;
      if FMaxColumnHeight<FCanvas.TextHeight('ВЫСОТА СТРОКИ') then FMaxColumnHeight:=FCanvas.TextHeight('ВЫСОТА СТРОКИ')+2;
      FCanvas.Font:=FDBGrid.Columns[i].Title.Font;
      if FMaxTitleHeight<FCanvas.TextHeight('ВЫСОТА СТРОКИ') then FMaxTitleHeight:=FCanvas.TextHeight('ВЫСОТА СТРОКИ')+2;
    end;
  end;

  if FAvtoNumerate then begin
    Inc(FVisibleColumn);
    lWidth:=lWidth+NumerateColumnWidth;
  end;

  AddInLog('Расчитывается коэффициент для сжатия/растягивания изображения');
  lKoeff:=(FWidth-(FLeftMergin+FRightMergin))/lWidth;

  AddInLog('Если еть поле авто номер то добавляем еще один столбец');
  j:=0; LeftPoint:=FLeftMergin;
  if FAvtoNumerate then begin
    FColumns[j].Alignment:=taRightJustify;
    FColumns[j].Font:=FDBGrid.Columns[0].Font;
    FColumns[j].Color:=FDBGrid.Columns[0].Color;
    FColumns[j].FieldName:=NumerateFieldName;

    FColumns[j].TitleFont:=FDBGrid.Columns[0].Title.Font;
    FColumns[j].TitleAlignment:=taLeftJustify;
    FColumns[j].TitleColor:=FDBGrid.Columns[0].Title.Color;
    FColumns[j].TitleStr:='№';

    FColumns[j].Top:=0;
    FColumns[j].Left:=LeftPoint;
    FColumns[j].Right:=LeftPoint+Trunc(NumerateColumnWidth*lKoeff);
    LeftPoint:=FColumns[j].Right;
    Inc(j);
  end;

  AddInLog('Расчитываем координаты столбцов для одной строки');
  For i:=0 to FDBGrid.Columns.Count-1 do begin
    if FDBGrid.Columns[i].Visible then begin
      FColumns[j].Alignment:=FDBGrid.Columns[i].Alignment;
      FColumns[j].Font:=FDBGrid.Columns[i].Font;
      FColumns[j].Color:=FDBGrid.Columns[i].Color;
      FColumns[j].FieldName:=FDBGrid.Columns[i].FieldName;

      FColumns[j].TitleFont:=FDBGrid.Columns[i].Title.Font;
      FColumns[j].TitleAlignment:=FDBGrid.Columns[i].Title.Alignment;
      FColumns[j].TitleColor:=FDBGrid.Columns[i].Title.Color;
      FColumns[j].TitleStr:=FDBGrid.Columns[i].Title.Caption;

      FColumns[j].Top:=0;
      FColumns[j].Left:=LeftPoint;
      FColumns[j].Right:=LeftPoint+Trunc(FDBGrid.Columns[i].Width*lKoeff);
      LeftPoint:=FColumns[j].Right;
      Inc(j);
    end;
  end;
end;

procedure TPrintReport.PrintGridTitle;
var i:Integer;
    lRect:TColumnRect;
    lHeight:Integer;
begin
  AddInLog('Вывод заголовков у таблици');
  For i:=0 to FVisibleColumn-1 do begin
    lRect:=MoveRect(FColumns[i],0,FActiveTopPosition);
    //Рисуем первый столбец черту "|"
    if i=0 then begin
      FCanvas.MoveTo(lRect.Left,lRect.Top);
      FCanvas.LineTo(lRect.Left,FMaxTitleHeight+FActiveTopPosition);
    end;
    //Рисуем оставшуюся часть столбца
    FCanvas.MoveTo(lRect.Left,lRect.Top);
    FCanvas.LineTo(lRect.Right,lRect.Top);
    FCanvas.LineTo(lRect.Right,FMaxTitleHeight+FActiveTopPosition);
    FCanvas.LineTo(lRect.Left,FMaxTitleHeight+FActiveTopPosition);
    //Выводит текст
    PaintCells(FCanvas,Rect(lRect.Left,lRect.Top,
      lRect.Right,FMaxTitleHeight+FActiveTopPosition),
      FColumns[i].TitleFont,
      FColumns[i].TitleAlignment,
      FColumns[i].TitleColor,
      FColumns[i].TitleStr);
  end;
  FActiveTopPosition:=FMaxTitleHeight+FActiveTopPosition;
end;

procedure TPrintReport.PrintRow;
var i:Integer;
    lRect:TColumnRect;
begin
  AddInLog('Вывод строки таблиц');
  For i:=0 to FVisibleColumn-1 do begin
    lRect:=MoveRect(FColumns[i],0,FActiveTopPosition);
    //Рисуем первый столбец черту "|"
    if i=0 then begin
      FCanvas.MoveTo(lRect.Left,lRect.Top);
      FCanvas.LineTo(lRect.Left,FMaxColumnHeight+FActiveTopPosition);
    end;
    //Рисуем оставшуюся часть столбца
    FCanvas.MoveTo(lRect.Left,FMaxColumnHeight+FActiveTopPosition);
    FCanvas.LineTo(lRect.Right,FMaxColumnHeight+FActiveTopPosition);
    FCanvas.LineTo(lRect.Right,lRect.Top);
    //Выводит текст
    if FColumns[i].FieldName=NumerateFieldName then begin
      PaintCells(FCanvas,Rect(lRect.Left,lRect.Top,
        lRect.Right,FMaxColumnHeight+FActiveTopPosition),
        FColumns[i].Font,
        FColumns[i].Alignment,
        FColumns[i].Color,
        IntToStr(FAutoNumber));
    end else begin
      PaintCells(FCanvas,Rect(lRect.Left,lRect.Top,
        lRect.Right,FMaxColumnHeight+FActiveTopPosition),
        FColumns[i].Font,
        FColumns[i].Alignment,
        FColumns[i].Color,
        FDataSet.FieldByName(FColumns[i].FieldName).asString);
    end;
  end;
end;


procedure TPrintReport.PrintRows;
var Bookmark:TBookmark;
begin
  AddInLog('Подготовка к выводу строк');
  FAutoNumber:=1;
  FDataSet.DisableControls;
  Bookmark:=FDataSet.GetBookmark;
  FDataSet.First;
  While not FDataSet.Eof do begin
    PrintRow;
    FDataSet.Next;
    Inc(FAutoNumber);
    FActiveTopPosition:=FActiveTopPosition+FMaxColumnHeight;
    if FActiveTopPosition+FMaxColumnHeight>FHeight-FBottomMergin then begin
      Inc(FPageNumber);
      if Assigned(FOnNextPageEvent) then FOnNextPageEvent(Self,FPageNumber);
      if FUsePrinter then begin
        Printer.NewPage;
        FActiveTopPosition:=FTopMergin;
        PrintPageNumber;
        PrintGridTitle;
      end;
    end;
  end;
  FDataSet.GotoBookmark(Bookmark);
  FDataSet.EnableControls;
end;

function TPrintReport.Print: Boolean;
begin
  AddInLog('Печать документа');
  Result:=True;
  FUsePrinter:=True;
  if (FPrintDialog) then
  with TPrintDialog.Create(Self) do
  try
    Result:=Execute;
  finally
    Free;
  end;
  if Result then begin
    Printer.Orientation:=FPrintOrientation;
    FCanvas:=Printer.Canvas;
    FWidth:=Printer.PageWidth;
    FHeight:=Printer.PageHeight;
    Printer.BeginDoc;
    PaintCanvas;
    Printer.EndDoc;
  end;
  AddInLog('Печать завершена');
end;

procedure TPrintReport.PrintPageNumber;
begin
  AddInLog('Вывод номера страници');
  FCanvas.Font.Color:=clBlack;
  FCanvas.Font.Size:=6;
  FCanvas.Font.Style:=[];
  FCanvas.Font.Name:='Times New Roman';
  FCanvas.TextOut(FWidth-FCanvas.TextWidth('Лист '+IntToStr(FPageNumber))-FRightMergin,FPageNumberTop,'Лист '+IntToStr(FPageNumber));
end;

end.
