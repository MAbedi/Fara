unit MyDBGridsSort;

interface

implementation

uses DBGrids,Grids;

type
  TCustomDBGrid = class(TCustomGrid)
    protected
      procedure TitleClick(Column: TColumn); dynamic;

  end;// TCustomDBGrid

end.
