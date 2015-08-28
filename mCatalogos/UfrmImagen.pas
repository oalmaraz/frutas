unit UfrmImagen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,  ExtCtrls;

type
  TfrmImagen = class(TForm)
    imImagen: TImage;
    Label1: TLabel;
    laButtom: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure imImagenDblClick(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
    awrImagen : TMemoryStream;
    procedure setImagenS(Stream : TMemoryStream);
    procedure setImagenP(Imagen : TImage);
  public
    { Public declarations }
    procedure LoadImagen(var dato : TMemoryStream);
  published
     property IMAGEN_STREAM : TMemoryStream write setImagenS;
     property IMAGEN_PICT   : TImage write setImagenP;
  end;

var
  frmImagen: TfrmImagen;

implementation

uses
   jpeg;

{$R *.DFM}

procedure TfrmImagen.setImagenP(Imagen : TImage);
begin
   imImagen.Picture := Imagen.Picture;
   Self.Height      := imImagen.Height + 4;
   Self.Width       := imImagen.Width + 4;
  laButtom.Top      := Self.Height - (laButtom.Height + 4);
end;

procedure TfrmImagen.setImagenS(Stream : TMemoryStream);
type
  TGraphType = (gtBitmap, gtIcon, gtMetafile, gtJpeg);
var
  Jpg       : TJpegImage;
  GraphType : TGraphType;
begin
  Jpg    := nil;
  try
    if Stream.Size > 0 then
    begin
      Stream.Position := 0;
      Stream.Read(GraphType, 1);
      case GraphType of
         gtBitmap   : imImagen.Picture.Bitmap.LoadFromStream(Stream);
         gtIcon     : imImagen.Picture.Icon.LoadFromStream(Stream);
         gtMetafile : imImagen.Picture.Metafile.LoadFromStream(Stream);
         gtJpeg     : begin
                         Jpg := TJpegImage.Create;
                         Jpg.LoadFromStream(Stream);
                         imImagen.Picture.Assign(Jpg);
                      end
      else
         imImagen.Picture.Assign(nil);
      end;
    end
       else
          imImagen.Picture.Assign(nil);
  except
    imImagen.Picture.Assign(nil);
  end;
  jpg.Free;

//  Self.
//  Self.Top    := 0;
//  Self.Left   := 0;
  Self.Height  := imImagen.Height + 4;
  Self.Width   := imImagen.Width + 4;
  laButtom.Top := Self.Height - (laButtom.Height + 4);
end;

procedure TfrmImagen.LoadImagen(var dato : TMemoryStream);
type
  TGraphType = (gtBitmap, gtIcon, gtMetafile, gtJpeg);
var
  Jpg       : TJpegImage;
  GraphType : TGraphType;
begin
  Jpg    := nil;
  try
    if dato.Size > 0 then
    begin
      dato.Position := 0;
      dato.Read(GraphType, 1);
      case GraphType of
         gtBitmap   : imImagen.Picture.Bitmap.LoadFromStream(dato);
         gtIcon     : imImagen.Picture.Icon.LoadFromStream(dato);
         gtMetafile : imImagen.Picture.Metafile.LoadFromStream(dato);
         gtJpeg     : begin
                         Jpg := TJpegImage.Create;
                         Jpg.LoadFromStream(dato);
                         imImagen.Picture.Assign(Jpg);
                      end
      else
         imImagen.Picture.Assign(nil);
      end;
    end
       else
          imImagen.Picture.Assign(nil);
  except
    imImagen.Picture.Assign(nil);
  end;
  jpg.Free;

  Self.Height := imImagen.Height;
  Self.Width  := imImagen.Width;
end;

procedure TfrmImagen.FormCreate(Sender: TObject);
begin
   awrImagen := nil;
   awrImagen := TMemoryStream.Create;
   imImagen.Top  := 2;
   imImagen.Left := 2;
end;

procedure TfrmImagen.FormDestroy(Sender: TObject);
begin
   awrImagen.Destroy;
end;

procedure TfrmImagen.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Close;
end;

procedure TfrmImagen.imImagenDblClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmImagen.FormDblClick(Sender: TObject);
begin
   Close;
end;

end.
