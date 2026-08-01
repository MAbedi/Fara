unit FrTreeChart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, System.IniFiles, Telegram, AdvChartGDIP, ShlObj,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DB, Data.Win.ADODB, VclTee.TeCanvas, AdvOpenGLControl,
  AdvChartView3D, AdvChartView, DBAdvChartView, AdvChartViewGDIP,
  DBAdvChartViewGDIP, AdvChart, AdvChartTypeSelector,
  AdvChartSerieEditor, AdvChartSelectors, Vcl.Printers, AdvChartPaneEditor,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmTreeChart = class(TFrame)
    Panel1: TPanel;
    CmbShow1: TComboBox;
    GroupBox1: TGroupBox;
    rdoPosition: TRadioGroup;
    btnShow: TButton;
    Panel2: TPanel;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    Panel3: TPanel;
    btnTelegram: TBitBtn;
    DataSource1: TDataSource;
    DBAdvGDIPChartView1: TDBAdvGDIPChartView;
    btnClearSeries: TSpeedButton;
    mmoFields: TMemo;
    btnAddSerie: TSpeedButton;
    cmbColor: TColorBox;
    PrinterSetupDialog1: TPrinterSetupDialog;
    btnPrint: TBitBtn;
    pnlChartType: TPanel;
    btnChartTypeUp: TSpeedButton;
    btnChartTypeDown: TSpeedButton;
    AdvChartPanesEditorDialog1: TAdvChartPanesEditorDialog;
    Button1: TButton;
    Panel4: TPanel;
    cmbValue1: TComboBox;
    btnSetAllField: TSpeedButton;
    btnPic: TBitBtn;
    chk3D: TCheckBox;
    chkShowValues: TCheckBox;
    procedure btnPrintClick(Sender: TObject);
    procedure btnShowClick(Sender: TObject);
    procedure CmbShow1Click(Sender: TObject);
    procedure cmbValue1Click(Sender: TObject);
    procedure rdoPositionClick(Sender: TObject);
    procedure btnChartTypeDownClick(Sender: TObject);
    procedure btnChartTypeUpClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnTelegramClick(Sender: TObject);
    procedure btnClearSeriesClick(Sender: TObject);
    procedure btnAddSerieClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnSetAllFieldClick(Sender: TObject);
    procedure btnPicClick(Sender: TObject);
  private
    __qry: TADOQuery;
    fldLabel1: TField;
    fldValueX: TField;
    NextChart: Byte;
    priorChart: Byte;
    FooterString, FilterCaption: String;
    keyname: String;
    configIni, SettingsSaved, memSaved: String;
    procedure SetChart(n: Byte);
    procedure saveOption;
    function Read_iniChart(iniName, key, Deafult: string): string;
    procedure Save_iniChart(iniName, key, value: string);
    procedure ReadOption;

    { Private declarations }
  public
    procedure showChart(qry: TADOQuery; frParent: TForm;
      limited, Filter_Caption: String);
    constructor Create(AOwner: TComponent); override;
    procedure initCombo;
    procedure UnSetChart;
    destructor Destroy; override;

    { Public declarations }
  end;

implementation

uses dm, GlobalPro, FaraConsts;

{$R *.dfm}

procedure TfrmTreeChart.SetChart(n: Byte);
var
  I: integer;
begin
  // DBAdvGDIPChartView1.Panes[0].BorderColor := clBlack;
  // DBAdvGDIPChartView1.Panes[0].BorderWidth := 3;

  with DBAdvGDIPChartView1.Panes[0] do
  begin
    DataSource1.DataSet := __qry;
    DataSource := DataSource1;
    YAxis.Size := 100;
    xAxis.Text := 'x';
    YAxis.Text := 'Y';

    // XAxis.Position := xBottom;
    // YAxis.Position := yLeft;
    // Title.Color := RGB(255, 255, 210);
    // Title.ColorTo := RGB(255, 255, 210);
    // Title.BorderColor := clBlack;
    // Title.BorderWidth := 1;
    // Title.GradientDirection := cgdVertical;
    // Title.Size := 10;
    Title.Text := FooterString + FilterCaption;
    // Title.Font.Size := 14;
    // Title.Font.Style := [fsBold];
    // Background.GradientType := gtHatch;
    // Background.HatchStyle := HatchStyleWideDownwardDiagonal;
    // Background.Color := RGB(255, 255, 210);
    // Background.ColorTo := clWhite;
    // Legend.Visible := False;
    // Margin.LeftMargin := 0;
    // Margin.rightMargin := 0;
    // Margin.TopMargin := 0;
    // Series.DonutMode := dmStacked;

    YAxis.AutoUnits := True;
    //
    //
    // YGrid.MajorDistance := 50;
    // YGrid.MinorDistance := 10;
    // YGrid.MinorLineColor := clSilver;
    // YGrid.MajorLineColor := clDkGray;
    // YGrid.MinorLineStyle := psDash;

    // Series.Add;

    for I := 0 to Series.Count - 1 do
    begin
      with Series[I] do
      begin
        // XGrid.MinorLineColor:=   clNone;
        YAxis.MajorUnit := 1500;
        // YAxis.MajorUnit := 25;
        // Pie.LegendTitleVisible := true;
        // Pie.LegendOpacity := 50;
        // Pie.LegendOpacityto := 0;
        // Pie.LegendTitleOpacity := 50;
        // Pie.LegendGradientType := gtForwardDiagonal;
        // Pie.LegendBorderColor := clBlack;
        // Pie.Position := spCustom;
        // Pie.Left := Self.Width div 3;
        // Pie.Top := Self.Height div 2;
        // Pie.LegendFont.Size := 10;
        ValueFormatType := vftFloat;
        ValueFormat := '#,##0';
        // ValueType:=
        // Pie.ValueFont.Size := 10;
        ChartType := TChartType(n);
        // Opacity := 50;
        // LineColor := clBlack;
        AutoRange := arCommonZeroBased;
        // Pie.Size := 400;
        Pie.ShowValues := chkShowValues.Checked;
        // Pie.ValuePosition := vpOutSideSlice;
        // Pie.LegendPosition := spCustom;
        // Pie.LegendOffsetLeft := Self.Width - 150;
      end;
    end;
    // open connection
    // __qry.Active := False;
    __qry.Active := True;
    LoadData;
  end;
end;

procedure TfrmTreeChart.UnSetChart;
var
  I: integer;
begin
  with DBAdvGDIPChartView1.Panes[0] do
  begin
    for I := 0 to Series.Count - 1 do
      with Series[I] do
      begin
        // Active := False;
        DataSource := nil;
        FieldNameXAxis := '';
        FieldNameValue := '';
        // xValues.ValueSource := '';
        // CheckDataSource;
      end; // with

  end;

end;

procedure TfrmTreeChart.btnChartTypeDownClick(Sender: TObject);
begin
  if priorChart <> 0 then
    Dec(priorChart);
  NextChart := priorChart;
  pnlChartType.Caption := priorChart.ToString;
  SetChart(priorChart);
end;

procedure TfrmTreeChart.btnChartTypeUpClick(Sender: TObject);
begin
  if NextChart < 41 then
    Inc(NextChart)
  else
    NextChart := 0;
  priorChart := NextChart;
  pnlChartType.Caption := NextChart.ToString;
  SetChart(NextChart);
end;

procedure TfrmTreeChart.btnSetAllFieldClick(Sender: TObject);
var
  I: integer;
begin
  for I := cmbValue1.ItemIndex to cmbValue1.Items.Count - 2 do
  begin
    cmbValue1.ItemIndex := I;
    CmbShow1Click(CmbShow1);
    cmbValue1Click(cmbValue1);
    btnAddSerie.Click;
  end;
end;

procedure TfrmTreeChart.btnClearSeriesClick(Sender: TObject);
begin
  initCombo
end;

procedure TfrmTreeChart.showChart(qry: TADOQuery; frParent: TForm;
  limited, Filter_Caption: String);
begin
  SettingsSaved := __AppData + APPID + 'ChartSettingsSaved.dat';
  memSaved := __AppData + APPID + 'ChartSettingsSavedMem.dat';
  configIni := __AppData + APPID + '_TreeChart.ini';
  __qry := qry;
  keyname := frParent.Name + '__' + frParent.Caption;
  Caption := ' نمودار ' + frParent.Caption;
  FooterString := limited;
  FilterCaption := Filter_Caption;
  initCombo;
  ReadOption;
end;

procedure TfrmTreeChart.initCombo;
var
  I: integer;
begin
  DBAdvGDIPChartView1.Panes[0].Series.Clear;
  mmoFields.Lines.Clear;
  if ((__qry <> nil) and (__qry.Active)) then
    with __qry do
    begin
      CmbShow1.Clear;
      cmbValue1.Clear;
      for I := 0 to Fields.Count - 1 do
      begin
        if (Fields[I].Tag and 1) <> 1 then
          Continue;
        CmbShow1.AddItem(Fields[I].DisplayLabel, TObject(I));
        // if (Fields[i] is TNumericField) then
        begin
          cmbValue1.AddItem(Fields[I].DisplayLabel, TObject(I));
        end;
      end; // for
    end; // with
  cmbColor.Selected := clRed;
end;

procedure TfrmTreeChart.CmbShow1Click(Sender: TObject);
var
  I: integer;
begin
  if CmbShow1.Items.Count = 0 then
    initCombo;
  if CmbShow1.ItemIndex = -1 then
    Exit;
  I := integer(CmbShow1.Items.Objects[CmbShow1.ItemIndex]);
  fldLabel1 := __qry.Fields[I];
end;

constructor TfrmTreeChart.Create(AOwner: TComponent);
begin
  inherited;
  NextChart := 3;
  priorChart := 2;
end;

destructor TfrmTreeChart.Destroy;
begin
  saveOption;
  inherited;
end;

procedure TfrmTreeChart.cmbValue1Click(Sender: TObject);
var
  I: integer;
begin
  if cmbValue1.ItemIndex = -1 then
    Exit;
  I := integer(cmbValue1.Items.Objects[cmbValue1.ItemIndex]);
  fldValueX := __qry.Fields[I];
end;

procedure TfrmTreeChart.rdoPositionClick(Sender: TObject);
begin
  DBAdvGDIPChartView1.Panes[0].Legend.Visible := rdoPosition.ItemIndex < 4;
  if rdoPosition.ItemIndex < 4 then
    DBAdvGDIPChartView1.Panes[0].Legend.Alignment :=
      TChartLegendAlignment(rdoPosition.ItemIndex);
end;

procedure TfrmTreeChart.btnAddSerieClick(Sender: TObject);
var
  I: integer;
begin
  with DBAdvGDIPChartView1.Panes[0] do
  begin
    Series.Add;
    I := Series.Count - 1;
    with Series[I] do
    begin
      // Pie.LegendOffsetTop := (Self.Height div 2) - 150;
      Color := cmbColor.Selected;
      LineColor := Color;
      LineWidth := 3;
      Pie.LegendColor := Color;
      FieldNameValue := fldValueX.FieldName;

      FieldNameXAxis := fldLabel1.FieldName;
      mmoFields.Lines.Add(FieldNameValue + '=' + FieldNameXAxis);
      LegendText := fldValueX.FieldName;
      Pie.LegendTitleColor := Color;
      Pie.ValueFont.Color := Color;
      Pie.ShowGrid := True;
      xAxis.Visible := True;
      YAxis.Visible := True;

      // XAxis.text := '';
      // yAxis.text := '';

      XGrid.Visible := True;
      YGrid.Visible := True;
      XGrid.MinorLineColor := clNone;
      YGrid.MinorLineColor := clNone;

      ShowValue := chkShowValues.Checked;
      ShowInLegend := True;
      ShowValueInTracker := chkShowValues.Checked;
      ShowAnnotationsOnTop := True;
    end;
    btnShow.Click;
    if cmbColor.ItemIndex < cmbColor.Items.Count - 1 then
      cmbColor.ItemIndex := cmbColor.ItemIndex + 1
    else
      cmbColor.ItemIndex := 1;



    // if Series.Count = 0 then
    // begin
    // Series.Add;
    // with Series[0] do
    // begin
    // //   Pie.LegendOffsetTop := (Self.Height div 2) - 150;
    // Pie.LegendColor := clRed;
    // Color :=TColor(0);
    // FieldNameValue := fldValueX.FieldName;
    // FieldNameXAxis := fldLabel1.FieldName;
    // LegendText := fldValueX.FieldName;
    // Pie.LegendTitleColor := clRed;
    // Pie.ValueFont.Color := clRed;
    // end;
    // end
    // else if Series.Count = 1 then
    // begin
    // Series.Add;
    // with Series[1] do
    // begin
    // //    Pie.LegendOffsetTop := (Self.Height div 2);
    // Pie.LegendColor := clGreen;
    // Color := clGreen;
    // Pie.ShowGrid := False;
    // YAxis.Visible := True;
    // FieldNameValue := fldValueX.FieldName;
    // FieldNameXAxis := fldLabel1.FieldName;
    // LegendText := fldValueX.FieldName;
    // Pie.LegendTitleColor := clGreen;
    // Pie.ValueFont.Color := clGreen;
    // End;
    // end
    // else if Series.Count = 2 then
    // begin
    // Series.Add;
    // with Series[2] do
    // begin
    // //   Pie.LegendOffsetTop := (Self.Height div 2) + 150;
    // Pie.LegendColor := clBlue;
    // Color := clBlue;
    // Pie.ShowGrid := False;
    // YAxis.Visible := False;
    // FieldNameValue := fldValueX.FieldName;
    // FieldNameXAxis := fldLabel1.FieldName;
    // LegendText := fldValueX.FieldName;
    // Pie.LegendTitleColor := clBlue;
    // Pie.ValueFont.Color := clBlue;
    // end;
    // end;

  end;

end;

procedure TfrmTreeChart.btnPicClick(Sender: TObject);
var
  FilePath: array [0 .. MAX_PATH] of char;
  Bitmap_FileName, Path: string;
begin
  SHGetFolderPath(0, 0, 0, 0, FilePath);
  Path := FilePath;
  Bitmap_FileName := Path + '\' + MakeUniqDBBackupName(APPBank.Name,
    var_glb_CurrentDate) + '.JPEG';
  DBAdvGDIPChartView1.SaveToImage(Bitmap_FileName, Screen.Width, Screen.Height,
    itJPEG, 100);
  RunDoc(Path);
  RunDoc(Bitmap_FileName);
end;

procedure TfrmTreeChart.btnPrintClick(Sender: TObject);
var
  r: TRectI;
begin
  if PrinterSetupDialog1.Execute then
  begin
    with printer do
    begin
      Orientation := poLandscape;
      BeginDoc;

      // The rectangle to print the      DBAdvGDIPChartView1.
      r := Rect(0, 0, printer.PageWidth, printer.PageHeight);
      // DBAdvGDIPChartView1.PrintAllPanes(printer.Canvas, r);
      // OR print a single pane.
      DBAdvGDIPChartView1.PrintPane(0, printer.Canvas, r);

      EndDoc;
    end;
  end;

end;

procedure TfrmTreeChart.btnTelegramClick(Sender: TObject);
var
  T: TTelegram;
  s, Bitmap_FileName, TelegramChatID: string;
begin
  TelegramChatID := Read_iniChart(configIni, 'LsatTelegramChatID', '84956004');
  TelegramChatID := get_box('تلگرام', 'Telegram ChatID را وارد كنيد.',
    TelegramChatID);
  if TelegramChatID <> EmptyStr then
  begin
    Save_iniChart(configIni, 'LsatTelegramChatID', TelegramChatID);

    Bitmap_FileName := __TheTempDIR + '\' + MakeUniqDBBackupName(APPBank.Name,
      var_glb_CurrentDate) + '.JPEG';
    // DBAdvGDIPChartView1.SaveAllPanesToBitmap(Bitmap_FileName, 1280, 1024);

    DBAdvGDIPChartView1.SaveToImage(Bitmap_FileName, Screen.Width,
      Screen.Height, itJPEG, 100);

    if Length(FilterCaption) > 1 then
      s := '< نمودار >' + FooterString + #13#10 + FilterCaption
    else
      s := Caption + #13#10 + FooterString + #13#10 + '< نمودار >' +
        CmbShow1.Text + '>' + cmbValue1.Text + ' ' + #13#10 + FilterCaption;

    T := TTelegram.Create;
    try
      try
        T.Token := TelgeramUserBot;
        begin
          T.SendPhoto(TelegramChatID, s, Bitmap_FileName);
          T.SendDocument(TelegramChatID, s, Bitmap_FileName);
        end;
      except
      end;
    finally
      T.Free;
    end;

  end;
end;

procedure TfrmTreeChart.ReadOption;
begin
  // CmbShow1.ItemIndex := 0;
  // StrToInt(Read_iniChart(configIni, 'ShowCombo', '0'));
  // cmbValue1.ItemIndex := cmbValue1.Items.Count - 1;
  // StrToInt(Read_iniChart(configIni, 'ValuCombo', '0'));
  rdoPosition.ItemIndex := StrToInt(Read_iniChart(configIni, 'Position', '0'));
  // DBChart1.Title.Text.Text := APPBank.CompanyName + #13#10 + Self.Caption;
  // DBChart1.Foot.Text.Text := FooterString;
  // CmbShow1Click(CmbShow1);
  // cmbValue1Click(cmbValue1);
  rdoPositionClick(rdoPosition);

  // if FileExists(memSaved) then
  // mmoFields.Lines.LoadFromFile(memSaved);
  //
  // if FileExists(SettingsSaved) then
  // with DBAdvGDIPChartView1.Panes[0] do
  // begin
  // DBAdvGDIPChartView1.LoadFromFile(SettingsSaved);
  // LoadData;
  // end;

end;

procedure TfrmTreeChart.saveOption;
var
  configIni: String;
begin
  if SettingsSaved <> EmptyStr then
  begin
    configIni := __AppData + APPID + '_TreeChart.ini';
    // Save_iniChart(configIni, 'ShowCombo', IntToStr(CmbShow1.ItemIndex));
    // Save_iniChart(configIni, 'ValuCombo', IntToStr(cmbValue1.ItemIndex));
    Save_iniChart(configIni, 'Position', IntToStr(rdoPosition.ItemIndex));
    mmoFields.Lines.SaveToFile(memSaved);
    DBAdvGDIPChartView1.SaveToFile(SettingsSaved);
  end;

end;

function TfrmTreeChart.Read_iniChart(iniName, key, Deafult: string): string;
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(iniName);
  try
    Result := ini.ReadString(keyname, key, Deafult);
  finally
    ini.Free;
  end; // try
end;

procedure TfrmTreeChart.Save_iniChart(iniName, key, value: string);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(iniName);
  try
    ini.WriteString(keyname, key, value);
  finally
    ini.Free;
  end; // try
end;

procedure TfrmTreeChart.btnShowClick(Sender: TObject);
begin
  SetChart(NextChart);
end;

procedure TfrmTreeChart.Button1Click(Sender: TObject);
begin
  AdvChartPanesEditorDialog1.ChartView := DBAdvGDIPChartView1;
  AdvChartPanesEditorDialog1.Execute
end;

procedure TfrmTreeChart.Button2Click(Sender: TObject);
begin
  DBAdvGDIPChartView1.UpdateZoomControl;
  btnPrint.Enabled := False;


end;

end.
