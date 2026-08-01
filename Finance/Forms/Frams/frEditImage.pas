unit frEditImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ieview, imageenview, imageenproc, ImgList,
  ActnList, imageenio;

type
  TKindRefresh = (uDelete, uSave);
  TRefreshEvent = procedure(Sender: TObject; KindRefresh: TKindRefresh)
    of object;

  TfrEditImageF = class(TFrame)
    ImageList1: TImageList;
    ActionList: TActionList;
    actCrop: TAction;
    actRotateLeft: TAction;
    actFlipVertical: TAction;
    actFlipHorizontal: TAction;
    actScan: TAction;
    actErase: TAction;
    actLasso: TAction;
    actSave: TAction;
    actRotateRight: TAction;
    actprint: TAction;
    actDelete: TAction;
    tlb1: TToolBar;
    ToolButton1: TToolButton;
    btnFlipHorizontal: TToolButton;
    btnFlipVertical: TToolButton;
    btnErase: TToolButton;
    btnLasso: TToolButton;
    btnRotateRight: TToolButton;
    btnRotateLeft: TToolButton;
    btnprint: TToolButton;
    ToolButton2: TToolButton;
    btnSave: TToolButton;
    ImageEnView1: TImageEnView;
    actUndo: TAction;
    procedure actCropExecute(Sender: TObject);
    procedure actFlipVerticalExecute(Sender: TObject);
    procedure actFlipHorizontalExecute(Sender: TObject);
    procedure actEraseExecute(Sender: TObject);
    procedure actLassoExecute(Sender: TObject);
    procedure actRotateLeftExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure ImageEnView1DblClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actprintExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actUndoExecute(Sender: TObject);
  private
    FRotate: Integer;
    FImage: TImageEnView;
    FOnRefresh: TRefreshEvent;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    property Image: TImageEnView read FImage;
  published
    property OnRefresh: TRefreshEvent read FOnRefresh write FOnRefresh;
  protected
    procedure DoRefresh(KindRefresh: TKindRefresh); virtual;
    { Public declarations }
  end;

Const
  CRotate = 10;

implementation

uses GlobalPro;

{$R *.dfm}

procedure TfrEditImageF.actCropExecute(Sender: TObject);
begin
  ImageEnView1.Proc.CropSel;
end;

procedure TfrEditImageF.actDeleteExecute(Sender: TObject);
begin
  if (get_response('آیا حذف مطمئن هستید') = mrYes) then
  begin
    DeleteFile(Image.IO.Params.FileName);
    Image.Clear;
    DoRefresh(uDelete);
  end;
end;

procedure TfrEditImageF.actEraseExecute(Sender: TObject);
begin
  ImageEnView1.Proc.ClearSel();
end;

procedure TfrEditImageF.actFlipHorizontalExecute(Sender: TObject);
begin
  ImageEnView1.Proc.Flip(fdHorizontal);
end;

procedure TfrEditImageF.actFlipVerticalExecute(Sender: TObject);
begin
  ImageEnView1.Proc.Flip(fdVertical);
end;

procedure TfrEditImageF.Action1Execute(Sender: TObject);
begin
  if (Sender as TAction).Tag = 1 then
    FRotate := FRotate + CRotate
  else
    FRotate := FRotate - CRotate;
  ImageEnView1.Proc.undo;
  ImageEnView1.Proc.Rotate(FRotate, False, ierFast);
  ImageEnView1.Fit;
end;

procedure TfrEditImageF.actLassoExecute(Sender: TObject);
begin
  if btnLasso.Down then
    ImageEnView1.MouseInteract := [miSelectLasso]
  else
    ImageEnView1.MouseInteract := [miSelect];
end;

procedure TfrEditImageF.actprintExecute(Sender: TObject);
begin
  Image.IO.DoPrintPreviewDialog(iedtDialog, '');
end;

procedure TfrEditImageF.actRotateLeftExecute(Sender: TObject);
begin
  if (Sender as TAction).Tag = 1 then
    FRotate := FRotate + CRotate
  else
    FRotate := FRotate - CRotate;
  ImageEnView1.Proc.undo;
  ImageEnView1.Proc.Rotate(FRotate, False, ierFast);
  ImageEnView1.Fit;
end;

procedure TfrEditImageF.actSaveExecute(Sender: TObject);
begin
  Image.IO.SaveToFile(Image.IO.Params.FileName);
  Image.Proc.ClearUndo;
  DoRefresh(uSave);
end;

procedure TfrEditImageF.actUndoExecute(Sender: TObject);
begin
  Image.Proc.Undo();
end;

constructor TfrEditImageF.Create(AOwner: TComponent);
begin
  inherited;
  FImage := ImageEnView1;
end;

procedure TfrEditImageF.DoRefresh(KindRefresh: TKindRefresh);
begin
  if Assigned(FOnRefresh) then
    FOnRefresh(Self, KindRefresh)
end;

procedure TfrEditImageF.ImageEnView1DblClick(Sender: TObject);
begin
  actCrop.Execute;
end;

end.
