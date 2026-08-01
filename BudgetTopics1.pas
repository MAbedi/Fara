unit BudgetTopics1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DBCtrls, Mask, DB, ADODB, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppReport, ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TBudgetTopics1f = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    PnlGrid: TPanel;
    Panel5: TPanel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    SrcBudgetTopics: TDataSource;
    BitBtn6: TBitBtn;
    qryBudgetTopics: TADOQuery;
    qryBudgetTopicsBudgetTopicID: TIntegerField;
    qryBudgetTopicsBudgetCaption: TStringField;
    qryBudgetTopicsAccCode: TIntegerField;
    qryBudgetTopicsDetailCode: TIntegerField;
    qryBudgetTopicsCTopic1: TIntegerField;
    qryBudgetTopicsLevelID: TIntegerField;
    qryBudgetTopicsNote: TStringField;
    qryBudgetTopicsNextYearCalType: TWordField;
    qryBudgetTopicsEssence: TWordField;
    qryBudgetTopicsDecExtPerecent: TIntegerField;
    qryBudgetTopicsGroupTopic: TIntegerField;
    qryBudgetTopicsPortionPerecentReclamation: TIntegerField;
    qryBudgetTopicsPortionPerecentExp: TIntegerField;
    Panel6: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    PnlGroupOnTopics: TPanel;
    Label6: TLabel;
    CmbGroupTopic: TDBComboBox;
    PnlEssense: TPanel;
    Label3: TLabel;
    PnlNextYear: TPanel;
    Label4: TLabel;
    CmbNextYearCalType: TDBComboBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    PnlPercent: TPanel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    PnlAccCode: TPanel;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    qryInit: TADOQuery;
    qryInitLevelID: TIntegerField;
    qryInitLevelCaption: TStringField;
    qryInitprvLevelID: TIntegerField;
    qryInitCodeLength: TWordField;
    qryInitEssenseSelectable: TWordField;
    qryInitAccRelationType: TWordField;
    qryInitTopicType: TWordField;
    qryInitAssignedForm: TIntegerField;
    qryInitReportFileName: TStringField;
    qryInitNextYearSelectType: TWordField;
    qryInitGroupOnTopicsVisible: TWordField;
    qryInitSelectPercentType: TWordField;
    qryInitHasRelateOnProjects: TWordField;
    qryInitPrvCodeLength: TWordField;
    qryCategories: TADOQuery;
    qryDetails: TADOQuery;
    qryCenterTopics: TADOQuery;
    qryPrDefalt: TADOQuery;
    qryPrDefaltBudgetTopicID: TIntegerField;
    qryPrDefaltBudgetCaption: TStringField;
    qryPrDefaltAccCode: TIntegerField;
    qryPrDefaltDetailCode: TIntegerField;
    qryPrDefaltCTopic1: TIntegerField;
    qryPrDefaltLevelID: TIntegerField;
    qryPrDefaltNote: TStringField;
    qryPrDefaltNextYearCalType: TWordField;
    qryPrDefaltEssence: TWordField;
    qryPrDefaltDecExtPerecent: TIntegerField;
    qryPrDefaltGroupTopic: TIntegerField;
    qryPrDefaltPortionPerecentReclamation: TIntegerField;
    qryPrDefaltPortionPerecentExp: TIntegerField;
    actRelation: TAction;
    qryProjectsRange: TADOQuery;
    qryProjectsRangeProjectID: TIntegerField;
    qryProjectsRangeBudgetTopicID: TIntegerField;
    SrcProjectRange: TDataSource;
    DBGrid2: TDBGrid;
    qrySelectTopicId: TADOQuery;
    qrySelectTopicIdProjectID: TIntegerField;
    qrySelectTopicIdProjectCaption: TStringField;
    qryProjectsRange_ProjectName: TStringField;
    actSendToExcel: TAction;
    qryCategoriesTopicCode: TLargeintField;
    qryCategoriesMoeenName: TStringField;
    qryBudgetTopics_MoeenName: TStringField;
    qryBudgetTopics_DetailCode: TStringField;
    qryBudgetTopics__CTopicName: TStringField;
    qryPrDefaltBudgetCaption_L2: TStringField;
    qryPrDefaltNote_L2: TStringField;
    qryCategoriesMoeenName_L2: TStringField;
    qryBudgetTopicsBudgetCaption_L2: TStringField;
    qryBudgetTopicsNote_L2: TStringField;
    qrySelectTopicIdProjectCaption_L2: TStringField;
    CmbEssence: TDBComboBox;
    qryFormsInfo: TADOQuery;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoInfoName_L1: TStringField;
    qryFormsInfoInfoName_L2: TStringField;
    qryFormsInfoInfoID: TWordField;
    Panel4: TPanel;
    buttonProject: TBitBtn;
    del: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel10: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine6: TppLine;
    BitBtn11: TBitBtn;
    actPrint: TAction;
    actSORT: TAction;
    Pnllevel_L1: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Pnllevel_L2: TPanel;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    actNote: TAction;
    qryProjectsRange_ProjectName_l2: TStringField;
    BitBtn2: TBitBtn;
    procedure SrcBudgetTopicsStateChange(Sender: TObject);
    procedure SetDefaltDate;
    procedure Initform;
    procedure FormCreate(Sender: TObject);
    procedure qryBudgetTopicsGroupTopicGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryBudgetTopicsGroupTopicSetText(Sender: TField;
      const Text: String);
    procedure qryBudgetTopicsNextYearCalTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryBudgetTopicsNextYearCalTypeSetText(Sender: TField;
      const Text: String);
    procedure qryBudgetTopicsAfterInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryBudgetTopicsAfterDelete(DataSet: TDataSet);
    procedure qryBudgetTopicsAfterPost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure actRelationExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryBudgetTopicsBeforePost(DataSet: TDataSet);
    procedure qryBudgetTopicsAfterScroll(DataSet: TDataSet);
    procedure qryBudgetTopicsBeforeDelete(DataSet: TDataSet);
    procedure CmbEssenceDropDown(Sender: TObject);
    procedure qryBudgetTopicsEssenceGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryBudgetTopicsEssenceSetText(Sender: TField;
      const Text: String);
    procedure CmbGroupTopicDropDown(Sender: TObject);
    procedure CmbNextYearCalTypeDropDown(Sender: TObject);
    procedure qryProjectsRangeBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure qryBudgetTopicsBeforeEdit(DataSet: TDataSet);
    procedure qryBudgetTopicsBeforeCancel(DataSet: TDataSet);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSORTExecute(Sender: TObject);
    procedure actNoteExecute(Sender: TObject);
    procedure qryBudgetTopicsBudgetTopicIDChange(Sender: TField);
  private
    formType:Byte;
    BeforeEditBudgect:integer;
    procedure checkBudget;        
//    Res:Byte;
  public
    { Public declarations }
     function CheckTopicId: Byte;
  end;

var
  BudgetTopics1f: TBudgetTopics1f;

implementation

uses dm, GlobalPro, StrUtils, mmessage,
  BudgetTopicsRelation, search2, sort2, NoteBudject,
  searchCode_L1_L2;

{$R *.dfm}

procedure TBudgetTopics1f.SrcBudgetTopicsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryBudgetTopics.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting,'','',Self.Name);
end;



procedure TBudgetTopics1f.SetDefaltdate;
var
 PrvBudget:string;
begin
  qryBudgetTopics.FieldByName('LevelID').AsInteger:=formType;
//  qryBudgetTopics.FieldByName('Essence').AsInteger:=2;

  PrvBudget:=LeftStr(qryBudgetTopicsBudgetTopicID.AsString,qryInitPrvCodeLength.AsInteger);
  if PrvBudget <> '' then begin
     with qryPrDefalt do begin
        Active:=false;
        Parameters.ParamByName('prvTopId').Value:=PrvBudget;
        Parameters.ParamByName('prvLeveId').Value:=qryInit.FieldByName('prvLevelID').asinteger;
        Active:=true;
     end;//with
     if qryInitprvLevelID.AsInteger<>0 then
      begin
          if qryInitEssenseSelectable.AsInteger=2 then
             qryBudgetTopicsEssence.AsInteger:=qryPrDefaltEssence.AsInteger;

          if qryInitAccRelationType.AsInteger=2 then begin
             qryBudgetTopicsAccCode.AsInteger:=qryPrDefaltAccCode.AsInteger;
             qryBudgetTopicsDetailCode.AsInteger:=qryPrDefaltDetailCode.AsInteger;
             qryBudgetTopicsCTopic1.AsInteger:=qryPrDefaltCTopic1.AsInteger;
          end;

          if qryInitNextYearSelectType.AsInteger=2 then
          begin
             qryBudgetTopicsNextYearCalType.AsInteger:=qryPrDefaltNextYearCalType.AsInteger;
             qryBudgetTopicsDecExtPerecent.AsInteger:=qryPrDefaltDecExtPerecent.AsInteger;
          end;

          if qryInitSelectPercentType.AsInteger=2 then
          begin
             qryBudgetTopicsPortionPerecentReclamation.AsInteger:=qryPrDefaltPortionPerecentReclamation.AsInteger;
             qryBudgetTopicsPortionPerecentExp.AsInteger:=qryPrDefaltPortionPerecentExp.AsInteger;
          end;
      end;
  end;
end;

function TBudgetTopics1f.CheckTopicId: Byte;
var
  PrvBudgetTopic:String;
  Res: Byte;
begin
  Res:=0;
  PrvBudgetTopic:=LeftStr(qryBudgetTopics.Fieldbyname('BudgetTopicID').AsString,qryInit.Fieldbyname('PrvCodeLength').AsInteger);
  if qryBudgetTopics.FieldByName('BudgetTopicID').AsString='' then  Res:=1
   else
    if Length(qryBudgetTopics.Fieldbyname('BudgetTopicID').AsString)<>qryInit.FieldByName('CodeLength').AsInteger then
     Res:=2
     else
      if PrvBudgetTopic <> '' then begin
       with qryPrDefalt do begin
        Active:=false;
         Parameters.ParamByName('prvTopId').Value:=PrvBudgetTopic;
         Parameters.ParamByName('prvLeveId').Value:=qryInit.FieldByName('prvLevelID').asinteger;
        Active:=true;
       end;//with
       if qryPrDefalt.IsEmpty then
         Res:=3;
//         else  begin
//           with Dmf.qryTmpTmp do begin
//              Active:=false;
//               SQL.Text:='SELECT  BudgetTopicID FROM  BudgetItems WHERE (BudgetTopicID = '+PrvBudgetTopic+')';
//              Active:=true;
//              if Not IsEmpty then
//                Res:=4
//                else
//                  Active:=false;
//                   SQL.Text:='SELECT  BudgetTopicID FROM    ProjectsRange WHERE (BudgetTopicID = '+PrvBudgetTopic+')';
//                  Active:=true;
//                  if Not IsEmpty then
//                   Res:=4;
//           end;
//        end;
      end;

//  if (qryBudgetTopics.State in [dsinsert]) or (BeforeEditBudgect<>qryBudgetTopicsBudgetTopicID.AsInteger) then
//   with Dmf.qry_Temp do begin
//    Active:=false;
//    SQL.Text:='SELECT BudgetTopicID FROM dbo.BudgetTopics'+
//            ' WHERE LevelID='+qryInitLevelID.AsString+' AND BudgetTopicID = '+qryBudgetTopics.Fieldbyname('BudgetTopicID').AsString;
//    Active:=true;
//    if FieldByName('BudgetTopicID').AsString<>'' then
//     Res:=5;
//   end ;
   case Res Of
    1:Warn('كد بودجه را وارد نمائيد.‏');
    2:Warn('طول كد بودجه معتبر نمي باشد.‏');
    3:Warn('كد تعريف شده '+PrvBudgetTopic+'معتبر نمي باشد.‏');
//    4:Warn('به علت استفاده از كد  '+PrvBudgetTopic+'در اطلاعات بودجه شما مجاز به ايجاد زير سطح براي آن نمي باشيد.‏‏');
    5:warn('كد بودجه تكراري است');
   end;//case
   Result := Res;
   if Res<>0 then    dbedit1.SetFocus else
   DBGrid1.SetFocus;

end;

procedure TBudgetTopics1f.Initform;
begin
  formType:=var_glb_gParam;
  with qryInit do begin
    Active:=false;
     Parameters.ParamByName('LevelID').Value:=formType;
    Active:=true;
    if FieldByName('SelectPercentType').AsInteger=0 then PnlPercent.Visible:=false;
    if FieldByName('EssenseSelectable').AsInteger=0 then  PnlEssense.Visible:=false;
    if FieldByName('GroupOnTopicsVisible').AsInteger=0 then  PnlGroupOnTopics.Visible:=false;
    if FieldByName('NextYearSelectType').AsInteger=0 then  PnlNextYear.Visible:=false;
    if FieldByName('HasRelateOnProjects').AsInteger=0 then PnlGrid.Visible:=false;
    if FieldByName('AccRelationType').AsInteger=0 then  PnlAccCode.Visible:=false;
  end;//with
  with qryBudgetTopics do
  begin
    Active:=false;
    Parameters.ParamByName('LevId').Value:=qryInit.Fieldbyname('LevelID').AsInteger;
    Active:=true;
  end;//with
  if qryBudgetTopics.RecordCount=0 then  buttonProject.Enabled:=false
  else buttonProject.Enabled:=true;

end;
procedure TBudgetTopics1f.FormCreate(Sender: TObject);
begin
  inherited;
   qryFormsInfo.Active:=true;
   Initform;
end;

procedure TBudgetTopics1f.qryBudgetTopicsGroupTopicGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
 if sender.AsInteger<=0 then Exit;
  if   opt.primaryLanguage=0 then
        Text:=VarToStr(qryFormsInfo.Lookup('FormInfoID',sender.AsInteger,'InfoName_L1'))
  else  Text:=VarToStr(qryFormsInfo.Lookup('FormInfoID',sender.AsInteger,'InfoName_L2'));
end;

procedure TBudgetTopics1f.qryBudgetTopicsGroupTopicSetText(Sender: TField;
  const Text: String);
begin
  inherited;
     Sender.AsInteger:=integer(TDBComboBox(FindComponent('Cmb' +
  Sender.FieldName)).Items.Objects[TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TBudgetTopics1f.qryBudgetTopicsNextYearCalTypeGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if sender.AsInteger<=0 then Exit;
  if   opt.primaryLanguage=0 then
        Text:=VarToStr(qryFormsInfo.Lookup('FormInfoID',sender.AsInteger,'InfoName_L1'))
  else  Text:=VarToStr(qryFormsInfo.Lookup('FormInfoID',sender.AsInteger,'InfoName_L2'));
end;

procedure TBudgetTopics1f.qryBudgetTopicsNextYearCalTypeSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger:=integer(TDBComboBox(FindComponent('Cmb' +
  Sender.FieldName)).Items.Objects[TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);

end;

procedure TBudgetTopics1f.qryBudgetTopicsAfterInsert(DataSet: TDataSet);
var
 txt:string;
 id,BudgetTopicID:integer;
begin
  inherited;
  DBEdit1.SetFocus;
  id:=StrToInt(LeftStr('1'+'00000000000000',qryInit.FieldByName('CodeLength').AsInteger))+1;
  txt:='SELECT max(BudgetTopicID) FROM dbo.BudgetTopics WHERE LevelID='+qryInit.Fieldbyname('LevelID').AsString ;
  BudgetTopicID:=GetANewCode(Self.Name,Txt,'BudgetTopicID',Dmf.adcAccounting);

  DataSet.FieldByName('BudgetTopicID').AsString:=IfThen(DataSet.RecordCount=0,IntToStr(id),IntToStr( BudgetTopicID));

  SetDefaltDate;
end;

procedure TBudgetTopics1f.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TBudgetTopics1f.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
  SetColSize(DBGrid2,1);
end;

procedure TBudgetTopics1f.FormShow(Sender: TObject);
begin
  inherited;
  qryBudgetTopics.Active:=true;
end;

procedure TBudgetTopics1f.qryBudgetTopicsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.',1);
end;

procedure TBudgetTopics1f.qryBudgetTopicsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.',1);
end;

procedure TBudgetTopics1f.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TBudgetTopics1f.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid2.DataSource.DataSet.RecNo) then
      DBGrid2.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TBudgetTopics1f.SpeedButton3Click(Sender: TObject);
var
  txt:String;
  result:array [0..2] of String;
begin
  inherited;
txt:='SELECT dbo.Categories.TopicCode, dbo.Categories.MoeenName_L1, dbo.Categories.MoeenName_L2 '+
     ' FROM dbo.Categories LEFT OUTER JOIN dbo.CategoriesForUse ON dbo.Categories.TopicCode = dbo.CategoriesForUse.PrvTopicCode '+
     'WHERE  (dbo.CategoriesForUse.PrvTopicCode IS NULL)';
  if searchCode_L1_L2F.SearchCode2(DMF.adcAccounting,'حسابهاي معین',txt,
       ['کد','نام حساب','Caption'],result,[50,150,150],alLeft) then begin
   if not (qryBudgetTopics.state in dsEditModes) then qryBudgetTopics.edit;
   qryBudgetTopics['AccCode']:=Result[0];
  end;
end;

procedure TBudgetTopics1f.SpeedButton1Click(Sender: TObject);
var
  txt:String;
  result:array [0..2] of String;
begin
  inherited;
 txt:='SELECT  dbo.DetailRange.DetailCode, dbo.Details.DetailName_L1, dbo.Details.DetailName_L2'+
       ' FROM  dbo.DetailRange INNER JOIN   dbo.Details ON dbo.DetailRange.DetailCode = dbo.Details.DetailCode WHERE (dbo.DetailRange.TopicCode ='+IntToStr(qryBudgetTopicsAccCode.asinteger)+')';
  if searchCode_L1_L2F.SearchCode2(DMF.adcAccounting,'حسابهاي تفصيلي',txt,
       ['کد','نام حساب','Caption'],result,[50,150,150],alLeft) then begin
   if not (qryBudgetTopics.state in dsEditModes) then qryBudgetTopics.edit;
   qryBudgetTopics['DetailCode']:=Result[0];
  end;
end;

procedure TBudgetTopics1f.SpeedButton2Click(Sender: TObject);
var
  txt:String;
  result:array [0..2] of String;
begin
  inherited;
 txt:='SELECT dbo.CenterTopicRange.CTopicCode, dbo.CenterTopics.CTopicName_L1, dbo.CenterTopics.CTopicName_L2 '+
       ' FROM  dbo.CenterTopicRange LEFT OUTER JOIN  dbo.CenterTopics ON dbo.CenterTopicRange.CTopicCode = dbo.CenterTopics.CTopicCode '+
       ' WHERE (dbo.CenterTopicRange.TopicCode ='+IntToStr(qryBudgetTopicsDetailCode.AsInteger)+')';
   if searchCode_L1_L2F.SearchCode2(DMF.adcAccounting,'مراكز هزينه',txt,
       ['کد','نام حساب','Caption'],result,[50,150,150],alLeft) then begin
   if not (qryBudgetTopics.state in dsEditModes) then qryBudgetTopics.edit;
   qryBudgetTopics['CTopic1']:=Result[0];
  end;
end;

procedure TBudgetTopics1f.actRelationExecute(Sender: TObject);
begin
  inherited;
  if qryBudgetTopics.State in [dsinsert] then
   if get_response('براي ارتباط با طرح و برنامه تغييرات ذخيره شوند ؟‏')<>mrYes then Abort
     else
       qryBudgetTopics.Post;
  BudgetTopicsRelationF.enter(1);
end;

procedure TBudgetTopics1f.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBudgetTopics);
end;

procedure TBudgetTopics1f.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TBudgetTopics1f.qryBudgetTopicsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CheckTopicId <> 0 then Abort;
  if not CheckRequiredFields(qryBudgetTopics) then begin
   Abort;
   exit;
  end;//if    
  if qryInitSelectPercentType.AsInteger<>0 then
   if qryBudgetTopicsPortionPerecentReclamation.AsInteger+qryBudgetTopicsPortionPerecentExp.AsInteger<>100 then begin
    warn('مجموع مقدار درصد سهم عمراني و جاري همواره 100 مي باشد');
    Abort;
   end;
end;

procedure TBudgetTopics1f.qryBudgetTopicsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryProjectsRange do
   begin
      Active:=False;
      Parameters.ParamByName('BudTo').Value:=qryBudgetTopicsBudgetTopicID.AsInteger;
      Active:=true;
   end;

//   PrBudgetTopicID:=LeftStr(qryBudgetTopicsBudgetTopicID.AsString,qryInitPrvCodeLength.AsInteger);
//   if PrBudgetTopicID <> '' THEN begin
//     with qryPrDefalt do begin
//        Active:=false;
//        Parameters.ParamByName('prvTopId').Value:=PrBudgetTopicID;
//        Parameters.ParamByName('prvLeveId').Value:=qryInit.FieldByName('prvLevelID').asinteger;
//        Active:=true;
//     end;//with
//   end;
end;

procedure TBudgetTopics1f.qryBudgetTopicsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with Dmf.qry_Temp do begin
   Active:=false;
    SQL.Text:='SELECT  BudgetTopicID FROM dbo.BudgetTopics '+
              ' where left(BudgetTopicID,'+qryInitCodeLength.AsString+') = '+qryBudgetTopicsBudgetTopicID.AsString;
   Active:=true;
   if Dmf.qry_Temp.RecordCount>1 then begin
    warn('به دليل وجود كد زير سطح ,امكان حذف وجود ندارد');
    abort;
   end;//if
  end;//with
  If get_response('آيا براي حذف اين ركورد مطمئن هستيد؟')<>mrYes then
    Abort;
end;

procedure TBudgetTopics1f.CmbEssenceDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((sender as TDBComboBox),5);
  if qryBudgetTopicsEssence.AsString<>'' then
   CmbEssence.Text:=VarToStr(qryFormsInfo.Lookup('FormInfoID',qryBudgetTopicsEssence.AsInteger,'InfoName_L1'))
end;

procedure TBudgetTopics1f.qryBudgetTopicsEssenceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if sender.AsInteger<=0 then Exit;
  if   opt.primaryLanguage=0 then
        Text:=VarToStr(qryFormsInfo.Lookup('FormInfoID',sender.AsInteger,'InfoName_L1'))
  else  Text:=VarToStr(qryFormsInfo.Lookup('FormInfoID',sender.AsInteger,'InfoName_L2'));
end;

procedure TBudgetTopics1f.qryBudgetTopicsEssenceSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=integer(TDBComboBox(FindComponent('Cmb' +
  Sender.FieldName)).Items.Objects[TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TBudgetTopics1f.CmbGroupTopicDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((sender as TDBComboBox),8);
  if qryBudgetTopicsGroupTopic.AsString<>'' then
   CmbGroupTopic.Text:=VarToStr(qryFormsInfo.Lookup('FormInfoID',qryBudgetTopicsGroupTopic.AsInteger,'InfoName_L1'))
end;

procedure TBudgetTopics1f.CmbNextYearCalTypeDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((sender as TDBComboBox),9);
  if qryBudgetTopicsNextYearCalType.AsString<>'' then
   CmbNextYearCalType.Text:=VarToStr(qryFormsInfo.Lookup('FormInfoID',qryBudgetTopicsNextYearCalType.AsInteger,'InfoName_L1'))
end;

procedure TBudgetTopics1f.qryProjectsRangeBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   If get_response('آيا براي حذف اين ارتباط مطمئن هستيد؟')<>mrYes then
    Abort;
end;

procedure TBudgetTopics1f.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(key,qryBudgetTopics.FieldByName('BudgetTopicID'));
end;

procedure TBudgetTopics1f.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(key,qryProjectsRange.FieldByName('ProjectID'));
end;

procedure TBudgetTopics1f.qryBudgetTopicsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  BeforeEditBudgect:=qryBudgetTopicsBudgetTopicID.AsInteger;
end;

procedure TBudgetTopics1f.qryBudgetTopicsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  If get_response('آيا براي انصراف اين ركورد مطمئن هستيد؟')<>mrYes then
    Abort;
end;

procedure TBudgetTopics1f.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TBudgetTopics1f.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TBudgetTopics1f.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TBudgetTopics1f.actSORTExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBudgetTopics);
end;

procedure TBudgetTopics1f.actNoteExecute(Sender: TObject);
begin
  inherited;
  NoteBudjectF.enter(qryBudgetTopics.FieldByName('BudgetTopicID').AsString);
end;

procedure TBudgetTopics1f.checkBudget;
var
 PrvBudgetTopic:string;
begin
  if formType<>1 then begin
    PrvBudgetTopic:=LeftStr(qryBudgetTopics.Fieldbyname('BudgetTopicID').AsString,qryInit.Fieldbyname('PrvCodeLength').AsInteger);
     with Dmf.qryTmpTmp do begin
        Active:=false;
         SQL.Text:='SELECT  BudgetTopicID FROM  BudgetItems WHERE (BudgetTopicID = '+PrvBudgetTopic+')';
        Active:=true;
        if Not IsEmpty then begin
           Warn('به علت استفاده از كد  '+PrvBudgetTopic+'در اطلاعات بودجه شما مجاز به ايجاد زير سطح براي آن نمي باشيد.‏‏');
           Abort;
        end
          else
            Active:=false;
             SQL.Text:='SELECT  BudgetTopicID FROM    ProjectsRange WHERE (BudgetTopicID = '+PrvBudgetTopic+')';
            Active:=true;
            if Not IsEmpty then begin
               Warn('به علت استفاده از كد  '+PrvBudgetTopic+'در اطلاعات طرح و پروژه شما مجاز به ايجاد زير سطح براي آن نمي باشيد.‏‏');
               Abort;
            end;
     end;//with
  end;//if
end;

procedure TBudgetTopics1f.qryBudgetTopicsBudgetTopicIDChange(
  Sender: TField);
begin
  inherited;
  checkBudget;
end;

end.
