unit explorarMDI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorar, Menus,   Db, IBCustomDataSet, IBQuery,
       StdCtrls,
   Mask, DBCtrls,
   jpeg,     ComCtrls,
  Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmExplorarMDI = class(TfrmExplorar)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{var
  frmExplorarMDI: TfrmExplorarMDI;}

implementation

{$R *.DFM}

end.
