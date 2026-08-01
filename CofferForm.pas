unit CofferForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, Mask, DBCtrls, ADODB;

type
  TCofferFormsF = class(Ttemplate2MDIF)
    qryRecipts: TADOQuery;
    qryRecipts_PersonName1: TStringField;
    qryRecipts_PersonName2: TStringField;
    srcRecipts: TDataSource;
    PnlPerson: TPanel;
    LblPerson1: TLabel;
    SpeedButton1: TSpeedButton;
    TxtCustomerID1: TDBText;
    EdtCustomerID1: TDBEdit;
    LblPerson2: TLabel;
    EdtCustomerID2: TDBEdit;
    SpeedButton6: TSpeedButton;
    TxtCustomerID2: TDBText;
    Label8: TLabel;
    EdtFNum: TDBEdit;
    SpeedButton2: TSpeedButton;
    EdtFormDate: TDBEdit;
    LblReciptDate: TLabel;
    Panel1: TPanel;
    PnlNote: TPanel;
    GrpBoxAccount: TGroupBox;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    DBText3: TDBText;
    Label9: TLabel;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    Label1: TLabel;
    SpeedButton4: TSpeedButton;
    DBText4: TDBText;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    qryReciptsFormID: TIntegerField;
    qryReciptsFormType: TWordField;
    qryReciptsFormNumber: TIntegerField;
    qryReciptsFormDate: TStringField;
    qryReciptsCustomerID1: TIntegerField;
    qryReciptsCustomerID2: TIntegerField;
    qryReciptsAmount: TBCDField;
    qryReciptsBudgetCode: TIntegerField;
    qryReciptsTopicCode: TStringField;
    qryReciptsDetailCode: TStringField;
    qryReciptsCTopicCode: TStringField;
    qryReciptsFomNote: TStringField;
    qryCustomers: TADOQuery;
    Panel5: TPanel;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBText1: TDBText;
    Label4: TLabel;
    Label5: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CofferFormsF: TCofferFormsF;

implementation

uses DM;

{$R *.dfm}

end.
