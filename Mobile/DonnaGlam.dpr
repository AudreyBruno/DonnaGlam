program DonnaGlam;

uses
  System.StartUpCopy,
  FMX.Forms,
  untLogin in 'untLogin.pas' {frmLogin},
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untCategorias in 'untCategorias.pas' {frmCategorias},
  untCadProdutos in 'untCadProdutos.pas' {frmCadProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCategorias, frmCategorias);
  Application.CreateForm(TfrmCadProdutos, frmCadProdutos);
  Application.Run;
end.
