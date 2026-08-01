unit ReciptsReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ppViewr, ppComm, ppRelatv, ppProd, ppClass, ppReport,StrUtils;

type
  TReciptsReportsF = class(Ttemplate2MDIF)
    ppViewer1: TppViewer;
    lstListFiles: TListBox;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure lstListFilesClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    ReportName:TppReport;
    FilterName:String;
    procedure Enter(out ReportName:TppReport;out FilterName:String);
    { Public declarations }
  end;

var
  ReciptsReportsF: TReciptsReportsF;

implementation

uses  mmessage, GlobalPro;

{$R *.dfm}


procedure TReciptsReportsF.Enter;
begin
  CreateMDIForm2(TReciptsReportsF,ReciptsReportsF,Self);
  ReciptsReportsF.ppViewer1.Report:=ReportName;
end;


procedure TReciptsReportsF.FormCreate(Sender: TObject);
var
  ListsPath:  String;
  srch:   TSearchRec;
begin
  inherited;
  ListsPath:=IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))+'Report\');
  if not DirectoryExists(ListsPath) then begin
    Warn('„”»— Ê«—œ ‘œÂ „⁄ »— ‰Ì” .');
    Exit;
  end;//if
  lstListFiles.Items.Clear;
//  lstListFiles.Sorted:=True;
  if FindFirst(ListsPath +'*.rtm',faAnyFile,srch)=0 then begin
    repeat       
      if (pos('recipt',LowerCase(srch.Name))<>0) or

          (pos('invoice',LowerCase(srch.Name))<>0   )
        then srch.Name:='->'+srch.Name;
      lstListFiles.Items.AddObject(srch.Name,TObject(0));
    until FindNext(srch)<>0;
    FindClose(srch);
  end;//if

end;

procedure TReciptsReportsF.lstListFilesClick(Sender: TObject);
var
  s:String;
begin
  inherited;
  s:=IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))+'Report\');
  with ReportName do begin
    Reset;
    Template.FileName:=s+StringReplace(lstListFiles.Items[lstListFiles.ItemIndex]
                         ,'->','',[]);
     try
       if FileExists(Template.FileName) then
          Template.LoadFromFile
     finally
       ppViewer1.RegenerateReport  ;
     end;//try
  end;//with
end;

procedure TReciptsReportsF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ppViewer1.RegenerateReport
end;

end.
