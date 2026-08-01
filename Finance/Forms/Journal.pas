unit Journal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Mask, Grids, DBGrids, DB, ADODB;

type
  TJournalF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    BitBtn3: TBitBtn;
    DBEdit6: TDBEdit;
    DBNavigator2: TDBNavigator;
    qryJournal: TADOQuery;
    srcJournal: TDataSource;
    BitBtn8: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    ActionList1: TActionList;
    Action1: TAction;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    Action2: TAction;
    DataSetDelete1: TDataSetDelete;
    actFilter: TAction;
    actShowForm: TAction;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JournalF: TJournalF;

implementation

uses Dm;

{$R *.dfm}

end.
