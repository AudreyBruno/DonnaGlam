unit untCategorias;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Edit, FMX.Objects, FMX.StdCtrls, FMX.Layouts,
  FMX.Controls.Presentation;

type
  TfrmCategorias = class(TForm)
    btnLogin: TButton;
    Layout1: TLayout;
    Label1: TLabel;
    Image1: TImage;
    LayoutPesquisa: TLayout;
    RectPesquisar: TRectangle;
    edtBuscaMercado: TEdit;
    Image3: TImage;
    btnBuscar: TButton;
    ListViewCategorias: TListView;
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure AddCategoriasLv(id: integer; nome: string);
    procedure ListarCategorias;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategorias: TfrmCategorias;

implementation

{$R *.fmx}

uses untPrincipal;

procedure TfrmCategorias.AddCategoriasLv(id: integer; nome: string);
var
  img: TListItemImage;
  txt: TListItemText;
begin
  with  ListViewCategorias.Items.Add do
    begin
      Height := 45;
      Tag := id;

      txt := TListItemText(Objects.FindDrawable('txtNomeCategoria'));
      txt.Text := nome;
    end;
end;

procedure TfrmCategorias.ListarCategorias;
begin
  ListViewCategorias.Items.Clear;

  AddCategoriasLv(1, 'Categoria 1');
  AddCategoriasLv(2, 'Categoria 2');
  AddCategoriasLv(3, 'Categoria 3');
  AddCategoriasLv(4, 'Categoria 4');
  AddCategoriasLv(5, 'Categoria 5');
end;

procedure TfrmCategorias.btnLoginClick(Sender: TObject);
begin
  if not Assigned(frmPrincipal) then
    Application.CreateForm(TfrmPrincipal, frmPrincipal);

  frmPrincipal.Show;
end;

procedure TfrmCategorias.FormShow(Sender: TObject);
begin
  ListarCategorias
end;

end.
