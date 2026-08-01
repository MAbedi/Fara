unit MyReport;

interface

Uses
  ppProd, ppClass, ppReport,Db,Graphics,

  ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache,pptypes;



Procedure CreateGroup(Rpt:TppReport;fldName:String);
Procedure CreateText(Rpt:TppReport;aBand:TppBand;aCaption:String;
                      atop,aLeft,aWidth,aHeight:Single;
                     aBorder:TppBorderPositions = [];aAutoSize:Boolean = false;
                     aAlign:TppTextAlignment = taRightJustified );


Procedure CreateDBText(Rpt:TppReport;aBand:TppBand;fldName:String;
                      atop,aLeft,aWidth,aHeight:Single;
                     aBorder:TppBorderPositions= [] ;aAutoSize:Boolean = false;
                     aAlign:TppTextAlignment = taRightJustified );


Procedure CreateLine(Rpt:TppReport;aBand:TppBand;aTop,aLeft,aWidth,aHeight:Single;
                     aPosition:TppLinePositionType;PenWidth:Byte = 1;
                     PWidth:Boolean =false;PHeight:Boolean=false );


Procedure CreateDBCalc(Rpt:TppReport;aBand:TppBand;fldName:String;
                      atop,aLeft,aWidth,aHeight:Single;
                     aBorder:TppBorderPositions= [] ;aAutoSize:Boolean = false;
                     aAlign:TppTextAlignment = taRightJustified );

implementation


Procedure CreateGroup(Rpt:TppReport;fldName:String);
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
   lGroup.KeepTogether := True ;
   lGroup.Report := Rpt;
   lGroupFooter.Group := lGroup;
   lGroupHeader.Group := lGroup;
   lGroupHeader.Height := 0.28130001;
   lGroupfooter.Height := 0.28130001;
end;

Procedure CreateText;

begin
  with TppLabel.Create(Rpt) do
  begin
     AutoSize:=aAutoSize;
     Band:=aBand ;
     left := aLeft;
     Height:= aHeight ;
     Top:= atop;
     width := awidth ;
     border.BorderPositions := aBorder;
     Font.Name:='Yagut';
   //  Font.Style:=[fsBold];
     Font.Size:=10;
     Caption :=aCaption;
     border.Weight := 1;
     TextAlignment := aAlign;
  end;//with
end;

Procedure CreateDBText;
//var
//  aDataSet:TDataSet;
begin
   with TppDBText.Create(rpt) do
   begin

       AutoSize:=aAutoSize;
       Font.Name:='badr';
       Font.Size:=10;
       Font.Style:=[fsBold,fsitalic];

       DataField := fldName;
       Band:=aband;
       Left:= aLeft;
       width := awidth;
       top := aTop;
       TextAlignment := aAlign;
       DataPipeline:=rpt.DataPipeline;
    end;

end;


Procedure CreateLine;
begin

  with TppLine.Create(Rpt) do
  begin
    Position:=aPosition;
    top:=atop;
    Height:=aHeight;
    Width:=awidth;
    Left:=aleft;
    Band:=aband;
    pen.Width := penwidth;
    ParentWidth:=PWidth;
    ParentHeight:=PHeight;
  end;//with

end;

Procedure CreateDBCalc;
//var
//  aDataSet:TDataSet;
begin
   with TppDBCalc.Create(rpt) do
   begin
        AutoSize:=aAutoSize;
        Font.Name := 'Badr';
        Font.Size := 10;
        Font.Style:=[fsBold];
        DisplayFormat := '#,0;(#,0)';
        Border.Visible := False;
        DataField := fldName;
        DataPipeline:=rpt.DataPipeline;
        resetGroup := TppGroupBand(aband).Group;
        Band:=aband;
        Left:= aLeft;
        width := awidth;
        top := aTop;
        TextAlignment := aAlign;
   end;

end;



end.
