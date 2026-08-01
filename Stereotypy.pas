{ -----------------------------------------------------------------------------
  Unit Name: Stereotypy
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit Stereotypy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ComCtrls, DBCtrls, Mask, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, SumDBGrid, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, Vcl.ExtDlgs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Vcl.Grids, Vcl.DBGrids;

type
  TStereotypyF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    qry_Stereotypy: TADOQuery;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    lblGate: TLabel;
    Src_Stereotypy: TDataSource;
    lblStereotypyField: TLabel;
    DataSetDelete2: TDataSetDelete;
    actSendExcel: TAction;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSysVarPageNo: TppSystemVariable;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    BitBtn9: TBitBtn;
    actSort: TAction;
    ppLine3: TppLine;
    edtStereotypyCaption: TDBEdit;
    edtStereotypyID: TDBEdit;
    Label4: TLabel;
    SumGrid1: TSumGrid;
    ProgressBar1: TProgressBar;
    pnlimgStuff: TPanel;
    imgStuff: TImage;
    Panel7: TPanel;
    btnSaveToFile: TSpeedButton;
    qry_StereotypyStereotypyID: TIntegerField;
    qry_StereotypyStereotypyCaption: TStringField;
    qry_StereotypyImageType: TIntegerField;
    qry_StereotypyStuffImage: TBlobField;
    OpenPictureDialog1: TOpenPictureDialog;
    DBGrid1: TCedarDbgrid;
    actViewFile: TAction;
    BitBtn10: TBitBtn;
    // procedure qry_StereotypyAfterInsert(DataSet: TDataSet);
    // procedure qry_StereotypyAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qry_StereotypyBeforeCancel(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure btnSaveToFileClick(Sender: TObject);
    procedure Src_StereotypyStateChange(Sender: TObject);
    procedure qry_StereotypyAfterDelete(DataSet: TDataSet);
    procedure qry_StereotypyAfterScroll(DataSet: TDataSet);
    procedure imgStuffClick(Sender: TObject);
    procedure qry_StereotypyAfterInsert(DataSet: TDataSet);
    procedure qry_StereotypyBeforeDelete(DataSet: TDataSet);
    procedure actViewFileExecute(Sender: TObject);
  private
    { Private declarations }
    procedure initForm;
    procedure initJPEGImage;
    // function ValidData: Boolean;
  public
    { Public declarations }
  end;

var
  StereotypyF: TStereotypyF;

implementation

uses sndkey32, DM, GlobalPro, mmessage, shamsiDate, searchCode_ADO, Math,
  search2, sort2, FormFunctions, main, FaraConsts, filter_ADO, FilterClass_ADO,
  ViewFileOnServer;

{$R *.dfm}

procedure TStereotypyF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm;
end;

procedure TStereotypyF.Src_StereotypyStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_Stereotypy.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);

end;

procedure TStereotypyF.qry_StereotypyBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if get_response('تغييرات لغو شوند؟') <> mrYes then
    Abort;
end;

procedure TStereotypyF.qry_StereotypyBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TStereotypyF.initForm;
begin
  qry_Stereotypy.Active := True;

end;

procedure TStereotypyF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Stereotypy);
end;

procedure TStereotypyF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStereotypyF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_Stereotypy.DisableControls;
    InitReportFile(ppReport1, 'Stereotypy', True);
  finally
    qry_Stereotypy.EnableControls;
  end;
end;

procedure TStereotypyF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TStereotypyF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStereotypyF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TStereotypyF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Stereotypy);
end;

procedure TStereotypyF.actViewFileExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(qry_StereotypyStereotypyID.AsString,
    'StereoTypy', False);
end;

procedure TStereotypyF.btnSaveToFileClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  s := __TheTempDIR;

  case qry_StereotypyImageType.AsInteger of
    0:
      s := s + qry_StereotypyStereotypyID.AsString + '.jpg';

    1:
      s := s + qry_StereotypyStereotypyID.AsString + '.png';

    2:
      s := s + qry_StereotypyStereotypyID.AsString + '.bmp';

  end;

  imgStuff.Picture.SaveToFile(s);
  RunDoc(s);
end;

procedure TStereotypyF.qry_StereotypyAfterDelete(DataSet: TDataSet);
begin
  inherited;
  imgStuff.Picture := nil
end;

procedure TStereotypyF.qry_StereotypyAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('StereotypyID').AsInteger :=
    GetANewCode(Self.Name, 'Stereotypy', 'StereotypyID');
  qry_StereotypyImageType.AsInteger := 0;
  imgStuffClick(imgStuff);

end;

procedure TStereotypyF.qry_StereotypyAfterScroll(DataSet: TDataSet);
begin
  inherited;
  initJPEGImage
end;

procedure TStereotypyF.imgStuffClick(Sender: TObject);
const
  HSize = 220;
  WSize = 220;
var
  Jpg: TJpegImage;
  Btm: TBitmap;
  Png: Tpngimage;
  m: TMemoryStream;
  bytes: TBytes;
  // HMaxSize: Real;
  // WMaxSize: Real;
  // MaxSize: Real;
  NewHSize: Integer;
  NewWSize: Integer;
  ImageType: Integer;
  FileExt: string;
  SizeChange: Boolean;
begin
  inherited;
  // TitTYPES = (itJPG=0, itPNG=1, itBMP=2)

  if OpenPictureDialog1.Execute then
    try
      Jpg := TJpegImage.Create;
      Png := Tpngimage.Create;
      Btm := TBitmap.Create;
      m := TMemoryStream.Create;

      imgStuff.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      Btm.Height := imgStuff.Picture.Height;
      Btm.Width := imgStuff.Picture.Width;
      SizeChange := (Btm.Height > HSize) or (Btm.Width > WSize);
      SizeChange :=False;
      if SizeChange then
      begin
        // HMaxSize := Btm.Height / HSize;
        // WMaxSize := Btm.Width / WSize;
        //
        // MaxSize := HMaxSize;
        // if WMaxSize > HMaxSize then
        // MaxSize := WMaxSize;
        // NewHSize := Round(Btm.Height / MaxSize);
        // NewWSize := Round(Btm.Width / MaxSize);

{$REGION 'مهدویی'}
        if Btm.Height > Btm.Width then
        begin
          NewWSize := Round(HSize * Btm.Width / Btm.Height);
          NewHSize := HSize;
        end
        else if Btm.Height < Btm.Width then
        begin
          NewHSize := Round(WSize * Btm.Height / Btm.Width);
          NewWSize := WSize;
        end
        else
        begin
          NewHSize := HSize;
          NewWSize := WSize;
        end;
{$ENDREGION}
        Btm.Height := NewHSize;
        Btm.Width := NewWSize;
        Btm.Canvas.StretchDraw(Rect(0, 0, NewWSize, NewHSize),
          imgStuff.Picture.Graphic);
        Btm.SetSize(NewWSize, NewHSize);

      end
      else
        Btm.Canvas.Draw(0, 0, imgStuff.Picture.Graphic);

      FileExt := LowerCase(ExtractFileExt(OpenPictureDialog1.FileName));
      if FileExt = '.jpg' then
        ImageType := 0
      else if FileExt = '.png' then
        ImageType := 1
      else if FileExt = '.bmp' then
        ImageType := 2
      else
        ImageType := 0;

      case ImageType of
        0:
          begin
            if SizeChange then
              Jpg.Assign(Btm)
            else
              Jpg.LoadFromFile(OpenPictureDialog1.FileName);
            Jpg.SaveToStream(m);
          end;
        1:
          begin
            if SizeChange then
              Png.Assign(Btm)
            else
              Png.LoadFromFile(OpenPictureDialog1.FileName);
            Png.SaveToStream(m);
          end;
        2:
          begin
            Btm.SaveToStream(m);
          end;
      end;

      m.Position := 0;
      SetLength(bytes, m.Size);
      m.Read(bytes, m.Size);
      if not(qry_Stereotypy.State in dsEditModes) then
        qry_Stereotypy.Edit;
      qry_StereotypyStuffImage.AsBytes := bytes;
      qry_StereotypyImageType.AsInteger := ImageType;
      qry_Stereotypy.Post;
      // imgStuff.Picture.Assign(Jpg);

    finally
      Jpg.Free;
      Png.Free;
      Btm.Free;
      m.Free;
      initJPEGImage   ;
    end;

end;

procedure TStereotypyF.initJPEGImage;
var
  m: TMemoryStream;
  JPEGImage: TJpegImage;
  pngimage: Tpngimage;
  BitmapImage: TBitmap;
begin
  m := TMemoryStream.Create;

  case qry_StereotypyImageType.AsInteger of
    0:
      begin
        JPEGImage := TJpegImage.Create;
        try
          qry_StereotypyStuffImage.SaveToStream(m);
          pnlimgStuff.Visible := (m.Size <> 0);
          if (m.Size <> 0) then
          begin
            m.Position := 0;
            JPEGImage.LoadFromStream(m);
            imgStuff.Picture.Assign(JPEGImage);
          end;
        finally
          m.Free;
          JPEGImage.Free;
        end;
      end;
    1:
      begin
        pngimage := Tpngimage.Create;
        try
          qry_StereotypyStuffImage.SaveToStream(m);
          pnlimgStuff.Visible := (m.Size <> 0);
          if (m.Size <> 0) then
          begin
            m.Position := 0;
            pngimage.LoadFromStream(m);
            imgStuff.Picture.Assign(pngimage);
          end;
        finally
          m.Free;
          pngimage.Free;
        end;
      end;
    2:
      begin
        BitmapImage := TBitmap.Create;
        try
          qry_StereotypyStuffImage.SaveToStream(m);
          pnlimgStuff.Visible := (m.Size <> 0);
          if (m.Size <> 0) then
          begin
            m.Position := 0;
            BitmapImage.LoadFromStream(m);
            imgStuff.Picture.Assign(BitmapImage);
          end;
        finally
          m.Free;
          BitmapImage.Free;
        end;
      end;
  end;
end;

end.
