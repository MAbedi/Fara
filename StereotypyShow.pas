// mahmood 1400/10/19
unit StereotypyShow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ActnList, db, ComCtrls,
  Mask, DBCtrls, System.Actions, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Data.Win.ADODB;

type
  TStereotypyShowF = class(Ttemplate0F)
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    Panel1: TPanel;
    imgStuff: TImage;
    qry_Stereotypy: TADOQuery;
    qry_StereotypyImageType: TIntegerField;
    qry_StereotypyStuffImage: TBlobField;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    procedure initJPEGImage;
    { Private declarations }
  public
    procedure enter(StereotypyID: Integer);
    { Public declarations }
  end;

var
  StereotypyShowF: TStereotypyShowF;

implementation

{$R *.dfm}

procedure TStereotypyShowF.actOkExecute(Sender: TObject);
begin
  inherited;
  StereotypyShowF.Close;
end;

procedure TStereotypyShowF.enter(StereotypyID: Integer);
begin
  StereotypyShowF := TStereotypyShowF.Create(Application);
  try
    with StereotypyShowF do
    begin
      with qry_Stereotypy do
      begin
        Active := False;
        Parameters.ParamByName('StereotypyID').Value := StereotypyID;
        Active := True;
      end;
      initJPEGImage;
      ShowModal;
    end; // with
  finally
    FreeAndNil(StereotypyShowF);
  end;
end;

procedure TStereotypyShowF.actCancelExecute(Sender: TObject);
begin
  inherited;
  StereotypyShowF.Close;
end;

procedure TStereotypyShowF.initJPEGImage;
var
  m: TMemoryStream;
  JPEGImage: TJpegImage;
  pngimage: Tpngimage;
  BitmapImage: TBitmap;
begin
  m := TMemoryStream.Create;

  case qry_StereotypyImageType.AsInteger of
    0:
      begin
        JPEGImage := TJpegImage.Create;
        try
          qry_StereotypyStuffImage.SaveToStream(m);
          // pnlimgStuff.Visible := (m.Size <> 0);
          if (m.Size <> 0) then
          begin
            m.Position := 0;
            JPEGImage.LoadFromStream(m);
            imgStuff.Picture.Assign(JPEGImage);
          end;
        finally
          m.Free;
          JPEGImage.Free;
        end;
      end;
    1:
      begin
        pngimage := Tpngimage.Create;
        try
          qry_StereotypyStuffImage.SaveToStream(m);
          // pnlimgStuff.Visible := (m.Size <> 0);
          if (m.Size <> 0) then
          begin
            m.Position := 0;
            pngimage.LoadFromStream(m);
            imgStuff.Picture.Assign(pngimage);
          end;
        finally
          m.Free;
          pngimage.Free;
        end;
      end;
    2:
      begin
        BitmapImage := TBitmap.Create;
        try
          qry_StereotypyStuffImage.SaveToStream(m);
          // pnlimgStuff.Visible := (m.Size <> 0);
          if (m.Size <> 0) then
          begin
            m.Position := 0;
            BitmapImage.LoadFromStream(m);
            imgStuff.Picture.Assign(BitmapImage);
          end;
        finally
          m.Free;
          BitmapImage.Free;
        end;
      end;
  end;
end;

end.
