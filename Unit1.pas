unit Unit1;

interface
uses ppDBPipe,Classes ,ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB,  ppVar,ppCtrls,SysUtils;
type
   TppDBPipeline=class(ppDBPipe.TppDBPipeline)

  published

    end;

implementation

uses DM;
//constructor TppDBPipeline.Create(aOwner: TComponent);
//var
//  appLabel:TppLabel;
//  i:  Integer;
//begin
//  inherited;
//  if opt.Carton then
//  for i:=0 to Self.ComponentCount-1 do begin
//    if Components[i] is TppLabel then begin
//       appLabel:=TppLabel(Components[i]);
//       if Pos('„ﬁœ«—',LowerCase(appLabel.Caption))<>0 then
//          appLabel.Caption:=StringReplace(appLabel.Caption,'„ﬁœ«—',opt.EntityCaption,[]);
//       if Pos('Ê“‰',LowerCase(appLabel.Caption))<>0 then
//          appLabel.Caption:=StringReplace(appLabel.Caption,'Ê“‰',opt.WeightCaption,[]);
//    end;//if
//  end;//for
//
//end;
//procedure TppDBPipeline(Sender: TObject);
//var
//  appLabel:TppLabel;
//  i:  Integer;
//begin
//  if opt.Carton then
//  for i:=0 to Self.ComponentCount-1 do begin
//    if Components[i] is TppLabel then begin
//       appLabel:=TppLabel(Components[i]);
//       if Pos('„ﬁœ«—',LowerCase(appLabel.Caption))<>0 then
//          appLabel.Caption:=StringReplace(appLabel.Caption,'„ﬁœ«—',opt.EntityCaption,[]);
//       if Pos('Ê“‰',LowerCase(appLabel.Caption))<>0 then
//          appLabel.Caption:=StringReplace(appLabel.Caption,'Ê“‰',opt.WeightCaption,[]);
//    end;//if
//  end;//for

//end;

end.
 