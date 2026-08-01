unit WordTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, StdCtrls, ImgList, DBActns, ActnList, ExtCtrls,
  Buttons, DB, ADODB;

type
  TWordTestF = class(Ttemplate2MDIF)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    qryList: TADOQuery;
    srcList: TDataSource;
    qryListc_PersonelNo: TStringField;
    qryListc_name: TStringField;
    qryListc_lastName: TStringField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WordTestF: TWordTestF;

implementation

uses GlobalPro, DM, mmessage;

{$R *.dfm}

procedure TWordTestF.Button1Click(Sender: TObject);
var
  i:  Byte;
  p:  String;
begin
  inherited;
  BigMessage('œ— Õ«· «—”«· »Â Ê—œ ....',0);
//  qryList.Filtered:=True;
  qryList.Active:=True;
  p:=IncludeTrailingBackslash(ExtractFilePath(ParamStr(0)));
  try
    CreateDocFromTemplate(p +'mytest.doc' ,p + 'list1.doc',qryList);
  finally
    CloseMessage;
//    qryList.Filtered:=False;
  end;//try
end;

end.
