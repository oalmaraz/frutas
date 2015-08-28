unit capturar_transportistas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturar_base_sujetos, ImgList,  Db, IBStoredProc, IBTable,
   IBCustomDataSet, IBQuery,

    StdCtrls, ComCtrls,  DBCtrls, Mask,
     jpeg,  ExtCtrls,
  Menus, ExtDlgs,   Buttons,
     Grids, DBGrids, System.ImageList;

type
  TfrmCapturar_transportistas = class(TfrmCapturar_base_sujetos)
    TCapturarID: TIntegerField;
    TCapturarSUJETO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_transportistas: TfrmCapturar_transportistas;

implementation

uses explorar_transportistas, IBModulo;

{$R *.DFM}

end.
