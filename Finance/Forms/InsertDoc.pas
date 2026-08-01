unit InsertDoc;

interface
 uses Windows, SysUtils, Messages, Classes, Graphics, Controls, ExtCtrls, Forms,DBGrids , ADODB
  ,Grids, Math, Dialogs, db , strutils, StdCtrls ;


type

  TCheckDoc = class(TComponent)
  private
    QTemp:TADOQuery;
    FConnection: TADOConnection;
  
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public

  published

    Property  Connection :TADOConnection read FConnection write SetConnection ;

  end;

implementation

end.
