unit FrRadioDisplayFormType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB;

type
  TfrmRadioDisplayFormType = class(TFrame)
    rgpFormType: TRadioGroup;
    procedure rgpFormTypeClick(Sender: TObject);
  private
    { Private declarations }
  public
    FormType: Integer;
    procedure InitType(ReciptType, DisplayFormType: Integer);
    { Public declarations }

  end;

implementation

uses
  FaraConsts;

{$R *.dfm}
{ TfrmRadioDisplayFormType }

procedure TfrmRadioDisplayFormType.InitType(ReciptType, DisplayFormType
  : Integer);
var
  qry: TADOQuery;
begin
  rgpFormType.Items.Clear;
  qry := TADOQuery.Create(Self);
  with qry do
    try
      Connection := theMainConnection;
      SQL.Text :=
        'SELECT FormTypes.FormType, FormTypes.DisplayFormType, FormTypes.FormCaption';
      SQL.Add('FROM FormTypes INNER JOIN');
      SQL.Add('(SELECT part');
      SQL.Add('FROM dbo.SplitString');
      SQL.Add('((SELECT CofferType');
      SQL.Add('FROM ReciptTypes1');
      SQL.Add('WHERE (ReciptType = :ReciptType)), '','') AS SplitString_1) AS derivedtbl_1 ON');
      SQL.Add('FormTypes.FormType = derivedtbl_1.part');

      SQL.Add('WHERE (DisplayFormType = :DisplayFormType)');

      SQL.Add('ORDER BY FormTypes.FormType');
      Parameters.ParamByName('ReciptType').Value := ReciptType;
      Parameters.ParamByName('DisplayFormType').Value := DisplayFormType;
      Active := True;
      rgpFormType.Columns := RecordCount;
      while not Eof do
      begin
        rgpFormType.Items.AddObject(FieldByName('FormCaption').AsString,
          TObject(FieldByName('FormType').AsInteger));
        Next;
      end;
    finally
      Free;
    end;
  if rgpFormType.Items.Count > 0 then
  begin
    rgpFormType.ItemIndex := 0;
   //////// rgpFormTypeClick(rgpFormType);
  end
  else
    rgpFormType.Items.Text := 'روی تایپ ' + ReciptType.ToString +
      'فرم هاي خزانه داري قابل ارتباط تنظیم نشده'

end;

procedure TfrmRadioDisplayFormType.rgpFormTypeClick(Sender: TObject);
begin
  FormType := Integer(rgpFormType.Items.Objects[rgpFormType.ItemIndex]);
end;

end.
