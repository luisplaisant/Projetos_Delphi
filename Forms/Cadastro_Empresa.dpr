program Cadastro_Empresa;

uses
  Vcl.Forms,
  UEmpresa in 'UEmpresa.pas' {FrmCadEmpresa},
  UPesquisa in 'UPesquisa.pas' {FrmPesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCadEmpresa, FrmCadEmpresa);
  Application.CreateForm(TFrmPesquisa, FrmPesquisa);
  Application.Run;
end.
