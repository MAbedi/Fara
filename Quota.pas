unit Quota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Mask, DBCtrls, Grids, Vcl.DBGrids, SumDBGrid,Math,sndkey32,
  Menus, ppBands, ppCache, ppClass, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppReport, ppVar, ppPrnabl, ppCtrls, ppParameter, ppStrtch,
  ppSubRpt, ppDesignLayer, System.ImageList, System.Actions;

type
  TQuotaF = class(Ttemplate2MDIF)
    qryQuota: TADOQuery;
    qryQuotaItems: TADOQuery;
    qryQuotaQuotaID: TIntegerField;
    qryQuotaYearID: TIntegerField;
    qryQuotaUseOtherID: TWideStringField;
    qryQuotaAmount: TBCDField;
    qryQuotaRunDate: TStringField;
    qryQuotaCutDate: TStringField;
    qryQuotaItemsEntity: TFloatField;
    qryQuotaItemsWeight: TFloatField;
    pnl1: TPanel;
    lbl1: TLabel;
    dsQuota: TDataSource;
    lbl2: TLabel;
    dbedtRunDate: TDBEdit;
    lbl3: TLabel;
    dbedtAmount: TDBEdit;
    lbl4: TLabel;
    dbedtCutDate: TDBEdit;
    dsQuotaItems: TDataSource;
    qryStuff_Unit_TecInf: TADOQuery;
    qryQuotaItems_StuffName: TStringField;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete2: TDataSetDelete;
    pnlNewPanel: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    pnlOkPanel: TPanel;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btnBtnExcel: TBitBtn;
    actGetExcel: TAction;
    pnl2: TPanel;
    btnDelete2: TBitBtn;
    SumGrid1: TSumGrid;
    dbtxtDBTxtUseOtherID: TDBText;
    btnUseOtherID: TSpeedButton;
    edtUseOtherID: TDBEdit;
    grdQuotaItems: TDBGrid;
    qryUseOthers: TADOQuery;
    qryQuota_UseOtherID: TStringField;
    dbnvgr1: TDBNavigator;
    btnSearch_: TBitBtn;
    btnSort: TBitBtn;
    btnSendExcel: TBitBtn;
    btn8: TBitBtn;
    btnPrint: TBitBtn;
    actSort: TAction;
    actSendExcel: TAction;
    popOther: TPopupMenu;
    actPrint: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    mnuGetExcel: TMenuItem;
    actPrintVijeh: TAction;
    mnuPrintVijeh: TMenuItem;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand2: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    qryQuotaItemsQuotaItemsID: TIntegerField;
    qryQuotaItemsQuotaID: TIntegerField;
    qryQuotaItemsYearID: TIntegerField;
    btn6: TSpeedButton;
    qryQuotaItemsStuffCode: TLargeintField;
    qryQuota_Addres: TStringField;
    qryQuota_HealthNumber: TStringField;
    qryQuota_Rate: TFloatField;
    qryQuota_Name: TStringField;
    qryQuota_CustName: TStringField;
    dbtxt_HealthNumber: TDBText;
    Label1: TLabel;
    procedure qryQuotaAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure qryQuotaAfterInsert(DataSet: TDataSet);
    procedure qryQuotaAfterPost(DataSet: TDataSet);
    procedure qryQuotaBeforeCancel(DataSet: TDataSet);
    procedure qryQuotaBeforeDelete(DataSet: TDataSet);
    procedure qryQuotaBeforePost(DataSet: TDataSet);
    procedure qryQuotaItemsAfterDelete(DataSet: TDataSet);
    procedure qryQuotaItemsAfterInsert(DataSet: TDataSet);
    procedure qryQuotaItemsBeforeDelete(DataSet: TDataSet);
    procedure qryQuotaItemsBeforeEdit(DataSet: TDataSet);
    procedure qryQuotaItemsBeforeInsert(DataSet: TDataSet);
    procedure qryQuotaItemsBeforePost(DataSet: TDataSet);
    procedure dsQuotaStateChange(Sender: TObject);
    procedure btnUseOtherIDClick(Sender: TObject);
    procedure grdQuotaItemsEditButtonClick(Sender: TObject);
    procedure grdQuotaItemsKeyPress(Sender: TObject; var Key: Char);
    procedure grdQuotaItemsEnter(Sender: TObject);
    procedure edtUseOtherIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSendExcelExecute(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure btn6Click(Sender: TObject);
  private
    procedure gridkeyenter(Sender: TObject; var key: char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuotaF: TQuotaF;

implementation

uses DM, GetExcel, mmessage, GlobalPro, FormFunctions, searchCode_ADO,
  sort2, search2, DBGrid2Print;

{$R *.dfm}

procedure TQuotaF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryQuota);
  SetLookUpCash(qryQuotaItems);
  With qryQuota do
  begin
    Close;
    Parameters.ParamByName('YearID').Value:=APPBank.Year;
    Open;
  end;
end;

procedure TQuotaF.qryQuotaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryQuotaItems do
  begin
    Close;
    Parameters.ParamByName('QuotaID').Value:=DataSet.FieldByName('QuotaID').AsInteger;
    Parameters.ParamByName('YearID').Value:=DataSet.FieldByName('YearID').AsInteger;
    Open;
  end;
end;

procedure TQuotaF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryQuotaItems)
end;

procedure TQuotaF.qryQuotaAfterInsert(DataSet: TDataSet);
var
  Txt:String;
begin
  inherited;
  Txt:='SELECT MAX(QuotaID) FROM Quota WHERE ( YearID='+
        IntToStr(APPBank.Year)+') ';
  DataSet.FieldByName('QuotaID').AsInteger:=GetANewCode('',Txt,'QuotaID');
  DataSet.FieldByName('YearID').AsInteger:=APPBank.Year;
  DataSet.FieldByName('RunDate').AsString:=var_glb_CurrentDate;
  edtUseOtherID.SetFocus;
end;

procedure TQuotaF.qryQuotaAfterPost(DataSet: TDataSet);
var
  QuotaID,YearID:Integer;
begin
  inherited;
  if qryQuotaItems.State in dseditModes then qryQuotaItems.Post;
    try
      qryQuotaItems.UpdateBatch;
        BigMessage('À»  ‘œ.',1);
    except
      DataToExcel(qryQuotaItems);
    end;//try
  QuotaID:=qryQuota.Fieldbyname('QuotaID').AsInteger;
  YearID:=qryQuota.Fieldbyname('YearID').AsInteger;
  qryQuota.Requery();
  qryQuota.Locate('QuotaID;YearID',VarArrayOf([QuotaID,YearID]),[]);
end;

procedure TQuotaF.qryQuotaBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if get_response(' €ÌÌ—«  ·€Ê ‘Ê‰œø')<>mrYes then Abort;
  qryQuotaItems.Cancel;
  qryQuotaItems.Requery();
end;

procedure TQuotaF.qryQuotaBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ”Â„ÌÂ Ê ﬂ·ÌÂ¡ ﬂ«·«Â«Ì ¬‰ „ÿ„∆‰ Â” Ìœø')<> mrYes then
    Abort;
end;

procedure TQuotaF.qryQuotaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryQuotaItems.State in dseditModes then qryQuotaItems.Post;
  TrimStringFields(qryQuota);
  if not CheckRequiredFields(qryQuota) then Abort;
  if not ValidateDatasetDates(DataSet) then Abort;
end;

procedure TQuotaF.qryQuotaItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ﬂ«·« Õ–› ‘œ.',1)
end;

procedure TQuotaF.qryQuotaItemsAfterInsert(DataSet: TDataSet);
var
  txt:String;
begin
  inherited;
  if not CheckRequiredFields(qryQuota) then
  begin
    DataSet.Cancel;
    Exit;
  end;
  if not (qryQuota.state in dsEditModes) then   qryQuota.edit;
  DataSet.FieldByName('QuotaID').AsInteger:=qryQuota.FieldByName('QuotaID').AsInteger;
  DataSet.FieldByName('YearID').AsInteger:=qryQuota.Fieldbyname('YearID').AsInteger;
  grdQuotaItems.SelectedIndex:=0;
  Txt:='SELECT MAX(QuotaItemsID) FROM QuotaItems WHERE ( YearID='+
        IntToStr(APPBank.Year)+') AND (QuotaID = '+
        qryQuota.FieldByName('QuotaID').AsString+') ';
  DataSet.FieldByName('QuotaItemsID').AsInteger:=GetANewCode('',Txt,'QuotaItemsID');
  DataSet.FieldByName('Entity').AsFloat:=0;
  DataSet.FieldByName('Weight').AsFloat:=0;
end;

procedure TQuotaF.qryQuotaItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂ«·« „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort
end;

procedure TQuotaF.qryQuotaItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not (qryQuota.state in dsEditModes) then Abort
end;

procedure TQuotaF.qryQuotaItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not (qryQuota.state in dsEditModes) then Abort
end;

procedure TQuotaF.qryQuotaItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('_StuffName').IsNull
  then
  begin
    DataSet.Cancel;
    BigMessage('‰«„ ﬂ«·« Ê«—œ ‰‘œÂ',1);
    pnlOkPanel.SetFocus;
    Abort
  end;
  TrimStringFields(qryQuotaItems);
  if not CheckRequiredFields(qryQuotaItems) then Abort;
end;

procedure TQuotaF.dsQuotaStateChange(Sender: TObject);
begin
  inherited;
  qryQuotaItems.Filtered:=False;
  pnlOkPanel.Visible:=qryQuota.State in dsEditModes;
  pnlnewPanel.Visible:=not pnlokPanel.Visible;

  BtnReject.Cancel:=pnlnewPanel.Visible;
  BtnDelete2.Visible:=pnlOkPanel.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
  SumGrid1.Visible:=pnlNewPanel.Visible;
  if SumGrid1.Visible then SumGrid1.MasterGrid:=grdQuotaItems
    else begin
      SumGrid1.MasterGrid:=nil;
      grdQuotaItems.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
    end;

end;

procedure TQuotaF.btnUseOtherIDClick(Sender: TObject);
begin
  inherited;
  SpeedButtonUseOthers(qryQuota,'')
end;

procedure TQuotaF.gridkeyenter(Sender: TObject;var key: char);
var
  nextIndex:  Integer;
  curIndex:   Integer;
  aDataSet: TDataSet;
begin
  curIndex:=(Sender as TDBGrid).SelectedIndex;
  nextIndex:=curIndex;
  case key of
    #13:  begin
      if shiftDown then exit;
      aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
      key:=#0;
      case curIndex of
        0: nextIndex:=IfThen(aDataSet.FieldByName('_StuffName').AsString = EmptyStr,0,1);
        1: nextIndex:=2;
        2: nextIndex:=3;
        3: nextIndex:=-1;
      end;//case
    end;//#13
    '+': begin
      key:=#0;
      nextIndex:=curIndex-1;
      while (nextIndex>=0) and (not ((sender as TDBGrid).Columns[nextIndex].Visible) OR ((sender as TDBGrid).Columns[nextIndex].ReadOnly)) do
        Dec(nextIndex);
      if nextIndex<0 then nextIndex:=-3;
    end;// +
    '*':  begin
      key:=#0;
      SendKeys('000',false);
    end;// *
    #27: if (sender as TDBGrid).DataSource.DataSet.State in dseditmodes then (sender as TDBGrid).DataSource.DataSet.Cancel;
    #32,#157:  if curIndex in [0] then begin
      key:=#0;
      //grdQuotaItemsEditButtonClick(sender);
      (sender as TDBGrid).OnEditButtonClick(sender);
    end;//if
  end;//case
   if nextIndex>=0 then
    while (nextIndex<(sender as TDBGrid).Columns.Count) and (not ((sender as TDBGrid).Columns[nextIndex].Visible) OR ((sender as TDBGrid).Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex>=(Sender as TDBGrid).Columns.Count then nextIndex:=-1;
  if (curindex<>nextindex) then
    case nextindex of
       -1: begin
            sendkey(vk_down,[],false);
            (sender as TDBGrid).selectedindex:=0;
          end;//0
       -2:  begin
              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
              Perform(WM_NEXTDLGCTL,0,0);
            end;//-2
       -3:  begin
              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
              Perform(WM_NEXTDLGCTL,1,0);
            end;//-3
       else
            (sender as TDBGrid).selectedindex:=nextIndex;
    end;//case
end;

procedure TQuotaF.grdQuotaItemsEditButtonClick(Sender: TObject);
var
   aDataSet:  TDataSet;
   TmpChar: Char;
   sqlText: String;
   Results: array[0..4] of String;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then exit;
  aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
  if not (aDataSet.State in dseditmodes) then aDataSet.Edit;
  case (Sender as TDBGrid).SelectedIndex of
   0:Begin
        sqlText:='SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, ' +
        ' abcd.SUMEntity, abcd.SUMWeight' +
        ' FROM StuffCoding LEFT OUTER JOIN' +
        ' (SELECT ReciptItems.StuffCode, MAX((CASE ReciptTypes.EffectType WHEN 2 THEN' +
        ' ReciptItems.UnitSellPrice ELSE 0 END))AS MaxUnitSellPrice, ' +
        ' ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity), 3) AS SUMEntity,' +
        ' ROUND(SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight), 3) AS SUMWeight' +
        ' FROM ReciptItems INNER JOIN' +
        ' Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN' +
        ' ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType' +
        ' WHERE (Recipts.ReciptDate <= '''+qryQuota.FieldByName('RunDate').AsString+ ''') '+
        ' AND (ReciptTypes.EffectType IN (2,4)) AND (Recipts.ReciptState < 3)' +
        ' GROUP BY ReciptItems.StuffCode' +
        ' HAVING (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) >= 0.0001) OR' +
        ' (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) <= - 0.0001) OR' +
        ' (SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) >= 0.0001) OR' +
        ' (SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) <= - 0.0001)) AS abcd ON' +
        ' StuffCoding.c_StuffCode = abcd.StuffCode';
       if searchCode_ADOF.SearchCode2(dmF.adcBSell,'ﬂ«·«Â«', sqlText,
                      ['ﬂœ ','‘—Õ','›‰Ì','„ﬁœ«— „ÊÃÊœÌ','Ê“‰ „ÊÃÊœÌ'],results,[80,250,80,80,80],alLeft)
       then
       begin
          aDataSet.FieldByName('StuffCode').AsString:=results[0];
          TmpChar:=#13;
          gridkeyenter(Sender,TmpChar);
       end;//if
     end;
  end;//0
end;

procedure TQuotaF.grdQuotaItemsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender,Key)
end;

procedure TQuotaF.grdQuotaItemsEnter(Sender: TObject);
begin
  inherited;
  grdQuotaItems.SelectedIndex:=0;
end;

procedure TQuotaF.edtUseOtherIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=32 then   btnUseOtherID.Click;
end;

procedure TQuotaF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdQuotaItems);
end;

procedure TQuotaF.btn8Click(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TQuotaF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1,'Quota',True);
end;

procedure TQuotaF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grdQuotaItems,1,True)
end;

procedure TQuotaF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grdQuotaItems)
end;

procedure TQuotaF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryQuotaItems)
end;

procedure TQuotaF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryQuotaItems)
end;

procedure TQuotaF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grdQuotaItems,0);
end;

procedure TQuotaF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName
end;

procedure TQuotaF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=Caption
end;

procedure TQuotaF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=GetPrintDate
end;

procedure TQuotaF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TQuotaF.btn6Click(Sender: TObject);
var
  txt:String;
  result:array [0..4] of String;
begin
  inherited;
  txt:='SELECT Quota.QuotaID, Quota.UseOtherID, UseOthers.UseOtherName, Quota.Amount, Quota.RunDate '+
       'FROM Quota INNER JOIN UseOthers ON Quota.UseOtherID = UseOthers.UseOtherID '+
       'WHERE Quota.YearID = '+IntToStr(APPBank.Year);
  if searchCode_ADOF.SearchCode2(dmF.adcBSell,'Ã” ÃÊ ”Â„ÌÂ',txt,
      ['','ﬂœ','⁄‰Ê«‰',' ⁄œ«œ',' «—ÌŒ «Ã—«'],result,[0,50,100,100,100],alLeft)
  then
      qryQuota.locate('QuotaID',result[0],[]);
end;

end.
