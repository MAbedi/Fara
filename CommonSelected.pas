unit CommonSelected;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, CheckLst, ADODB;

type
  TCommonSelectedF = class(TForm)
    chklstSelect: TCheckListBox;
    Panel1: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
  private

    { Private declarations }
  public
    function GetSelected(SqlText: string; out SelectedIDs: string;
      out SelectedCaptions: string): Boolean;
    { Public declarations }
  end;

var
  CommonSelectedF: TCommonSelectedF;

implementation

uses DM;

{$R *.dfm}

function TCommonSelectedF.GetSelected(SqlText: string; out SelectedIDs: string;
  out SelectedCaptions: string): Boolean;
var
  i: Integer;
begin
  CommonSelectedF := TCommonSelectedF.Create(Application);
  with CommonSelectedF do
    try
      with TADOQuery.Create(nil) do
      begin
        try
          Connection := DMf.adcBSell;
          SQL.Text := SqlText;
          Open;
          GetFieldNames(chklstSelect.Items)
          // while not Eof do
          // begin
          // chklstSelect.AddItem(Fields[1].AsString,
          // TObject(Fields[0].AsInteger));
          // Next;
          // end;
        finally
          Free;
        end;
      end;
      ShowModal;
      if ModalResult = mrOk then
      begin
        for i := 0 to chklstSelect.Items.Count - 1 do
          if chklstSelect.Checked[i] then
          begin
            SelectedCaptions := SelectedCaptions + '[' + chklstSelect.Items[i] +
              ']' + ',';
            // SelectedIDs := SelectedIDs + '['+chklstSelect.Items.Objects[i]
            // .ToString + ',';
          end;
        SelectedCaptions := Trim(SelectedCaptions);
        SetLength(SelectedCaptions, length(SelectedCaptions) - 1);
        // SetLength(SelectedIDs, length(SelectedIDs) - 1);
      end;
    finally
      FreeAndNil(CommonSelectedF);
    end;
end;

end.
