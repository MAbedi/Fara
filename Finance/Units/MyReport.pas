unit MyReport;

interface

Uses
  ppProd, ppClass, ppReport, Db, Graphics,

  ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache,
  pptypes;

Procedure CreateGroup(Rpt: TppReport; fldName: String);
function CreateText(Rpt: TppReport; aBand: TppBand; aCaption: String;
  atop, aLeft, aWidth, aHeight: Single; aBorder: TppBorderPositions = [];
  aAutoSize: Boolean = false; aAlign: TppTextAlignment = taRightJustified;
  aStyle: TFontStyles = []):TppLabel;

function CreateDBText(Rpt: TppReport; aBand: TppBand; fldName: String;
  atop, aLeft, aWidth, aHeight: Single; aBorder: TppBorderPositions = [];
  aAutoSize: Boolean = false; aAlign: TppTextAlignment = taRightJustified;
  aStyle: TFontStyles = [fsBold, fsitalic]): TppDBText;

Procedure CreateLine(Rpt: TppReport; aBand: TppBand;
  atop, aLeft, aWidth, aHeight: Single; aPosition: TppLinePositionType;
  PenWidth: Byte = 1; PWidth: Boolean = false; PHeight: Boolean = false);

Procedure CreateDBCalc(Rpt: TppReport; aBand: TppBand; fldName: String;
  atop, aLeft, aWidth, aHeight: Single; aBorder: TppBorderPositions = [];
  aAutoSize: Boolean = false; aAlign: TppTextAlignment = taRightJustified);

implementation

Procedure CreateGroup(Rpt: TppReport; fldName: String);
var
  lGroup: TppGroup;
  lGroupHeader: TppGroupHeaderBand;
  lGroupFooter: TppGroupFooterBand;
begin
  lGroup := TppGroup.Create(Rpt);
  lGroupHeader := TppGroupHeaderBand.Create(Rpt);
  lGroupFooter := TppGroupFooterBand.Create(Rpt);
  lGroup.BreakName := fldName;
  lGroup.DataPipeline := Rpt.DataPipeline;
  lGroup.KeepTogether := True;
  lGroup.Report := Rpt;
  lGroupFooter.Group := lGroup;
  lGroupHeader.Group := lGroup;
  lGroupHeader.Height := 0.28130001;
  lGroupFooter.Height := 0.28130001;
end;

function CreateText(Rpt: TppReport; aBand: TppBand; aCaption: String;
  atop, aLeft, aWidth, aHeight: Single; aBorder: TppBorderPositions = [];
  aAutoSize: Boolean = false; aAlign: TppTextAlignment = taRightJustified;
  aStyle: TFontStyles = []):TppLabel;
var
  lblText: TppLabel;
begin
  lblText := TppLabel.Create(Rpt);
  with lblText do
  begin
    AutoSize := aAutoSize;
    Band := aBand;
    left := aLeft;
    Height := aHeight;
    Top := atop;
    width := aWidth;
    border.BorderPositions := aBorder;
    Font.Name := 'Yagut';
    Font.Style := aStyle;
    Font.Size := 10;
    Caption := aCaption;
    border.Weight := 1;

    TextAlignment := aAlign;
    result := lblText;
  end; // with
end;

function CreateDBText(Rpt: TppReport; aBand: TppBand; fldName: String;
  atop, aLeft, aWidth, aHeight: Single; aBorder: TppBorderPositions = [];
  aAutoSize: Boolean = false; aAlign: TppTextAlignment = taRightJustified;
  aStyle: TFontStyles = [fsBold, fsitalic]): TppDBText;
begin
  result := TppDBText.Create(Rpt);
  with result do
  begin
    Band := aBand;
    AutoSize := aAutoSize;
    TextAlignment := aAlign;
    Font.Name := 'badr';
    Font.Size := 10;
    Font.Style := aStyle;
    // Color := clRed;
    DataField := fldName;
    width := aWidth;
    left := aLeft;
    Top := atop;

    DataPipeline := Rpt.DataPipeline;
  end;

end;

Procedure CreateLine;
begin

  with TppLine.Create(Rpt) do
  begin
    Band := aBand;
    Position := aPosition;
    Top := atop;
    Height := aHeight;
    width := aWidth;
    left := aLeft;
    pen.width := PenWidth;
    ParentWidth := PWidth;
    ParentHeight := PHeight;
  end; // with

end;

Procedure CreateDBCalc;
// var
// aDataSet:TDataSet;
begin
  with TppDBCalc.Create(Rpt) do
  begin
    AutoSize := aAutoSize;
    Font.Name := 'Badr';
    Font.Size := 10;
    Font.Style := [fsBold];
    DisplayFormat := '#,0;(#,0)';
    border.Visible := false;
    DataField := fldName;
    DataPipeline := Rpt.DataPipeline;
    resetGroup := TppGroupBand(aBand).Group;
    Band := aBand;
    left := aLeft;
    width := aWidth;
    Top := atop;
    TextAlignment := aAlign;
  end;

end;

end.
