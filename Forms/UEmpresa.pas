unit UEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TFrmCadEmpresa = class(TForm)
    Conexao: TFDConnection;
    QCadastro: TFDQuery;
    DSCadastro: TDataSource;
    QCadastroID_EMPRESA: TIntegerField;
    QCadastroNOME: TStringField;
    QCadastroTELEFONE: TStringField;
    QCadastroCELULAR: TStringField;
    QCadastroENDERECO: TStringField;
    Label1: TLabel;
    DBCodigo: TDBEdit;
    Label2: TLabel;
    DBNome: TDBEdit;
    Label3: TLabel;
    DBTelefone: TDBEdit;
    Label4: TLabel;
    DBCelular: TDBEdit;
    Label5: TLabel;
    DBEndereco: TDBEdit;
    Panel1: TPanel;
    BtEditar: TBitBtn;
    BtCancelar: TBitBtn;
    BtAtualizar: TBitBtn;
    BtNovo: TBitBtn;
    BtExcluir: TBitBtn;
    BtSair: TBitBtn;
    BtGravar: TBitBtn;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BtPesquisa: TBitBtn;
    procedure BtEditarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtAtualizarClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtPesquisarClick(Sender: TObject);
    procedure BtPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadEmpresa: TFrmCadEmpresa;

implementation

{$R *.dfm}

uses UPesquisa;

procedure TFrmCadEmpresa.BtAtualizarClick(Sender: TObject);
begin
    BtNovo.Enabled      := True;
    BtEditar.Enabled    := False;
    BtExcluir.Enabled   := False;
    BtGravar.Enabled    := False;
    BtCancelar.Enabled  := False;
    BtAtualizar.Enabled := False;
    BtSair.Enabled      := True;

    QCadastro.Refresh;
    messagedlg('Registro Atualizado com Sucesso!', mtconfirmation, [mbOk], 0);
end;

procedure TFrmCadEmpresa.BtCancelarClick(Sender: TObject);
begin
    BtNovo.Enabled      := True;
    BtEditar.Enabled    := False;
    BtExcluir.Enabled   := False;
    BtGravar.Enabled    := False;
    BtCancelar.Enabled  := False;
    BtAtualizar.Enabled := False;
    BtSair.Enabled      := True;

    QCadastro.Cancel;
end;

procedure TFrmCadEmpresa.BtEditarClick(Sender: TObject);
begin
    BtNovo.Enabled      := False;
    BtEditar.Enabled    := False;
    BtExcluir.Enabled   := False;
    BtGravar.Enabled    := True;
    BtCancelar.Enabled  := True;
    BtAtualizar.Enabled := False;
    BtSair.Enabled      := True;

    QCadastro.Edit;
end;

procedure TFrmCadEmpresa.BtExcluirClick(Sender: TObject);
begin
  if messagedlg('Deseja Excluir esta Empresa?', mtconfirmation, [mbOk, mbNo], 0) = mrOk then
    Begin
      BtNovo.Enabled      := True;
      BtEditar.Enabled    := False;
      BtExcluir.Enabled   := False;
      BtGravar.Enabled    := False;
      BtCancelar.Enabled  := False;
      BtAtualizar.Enabled := False;
      BtSair.Enabled      := True;

      QCadastro.Delete;
    End
    Else
      Abort;
end;

procedure TFrmCadEmpresa.BtGravarClick(Sender: TObject);
begin
  BtNovo.Enabled      := True;
  BtEditar.Enabled    := False;
  BtExcluir.Enabled   := False;
  BtGravar.Enabled    := False;
  BtCancelar.Enabled  := True;
  BtAtualizar.Enabled := False;
  BtSair.Enabled      := True;

  QCadastro.Post;
  messagedlg('Registro Salvo com Sucesso', mtconfirmation, [mbOk], 0);
end;

procedure TFrmCadEmpresa.BtNovoClick(Sender: TObject);
  var
    Prox : Integer;
begin
  BtNovo.Enabled      := False;
  BtEditar.Enabled    := False;
  BtExcluir.Enabled   := False;
  BtGravar.Enabled    := True;
  BtCancelar.Enabled  := True;
  BtAtualizar.Enabled := False;
  BtSair.Enabled      := True;

  DBCodigo.Enabled := True;
  DBNome.Enabled := True;
  DBTelefone.Enabled := True;
  DBCelular.Enabled := True;
  DBEndereco.Enabled := True;

  QCadastro.Active := True;
  QCadastro.Last;
  Prox := QCadastroId_Empresa.AsInteger +1;
  QCadastro.Append;
  QCadastroId_Empresa.AsInteger := Prox;
  DBNome.SetFocus;
end;

procedure TFrmCadEmpresa.BtPesquisaClick(Sender: TObject);
begin
  FrmPesquisa.ShowModal;
end;

procedure TFrmCadEmpresa.BtPesquisarClick(Sender: TObject);
begin
  FrmPesquisa := FrmPesquisa.Create(Self);
  FrmPesquisa.ShowModal;
  Try

  Finally
  FrmPesquisa.Free;
  FrmPesquisa := Nil;
  End;
end;

procedure TFrmCadEmpresa.BtSairClick(Sender: TObject);
begin
  if messagedlg('Deseja Sair do Formul?rio?', mtconfirmation, [mbOk, mbNo], 0) =mrOk then
    Begin
      Application.Terminate;
    End
    Else
      Abort;
  end;

procedure TFrmCadEmpresa.FormCreate(Sender: TObject);
begin
  BtNovo.Enabled      := True;
  BtEditar.Enabled    := False;
  BtExcluir.Enabled   := False;
  BtGravar.Enabled    := False;
  BtCancelar.Enabled  := False;
  BtAtualizar.Enabled := False;
  BtSair.Enabled      := False;

  DBCodigo.Enabled := False;
  DBNome.Enabled := False;
  DBTelefone.Enabled := False;
  DBCelular.Enabled := False;
  DBEndereco.Enabled := False;

  DBCodigo.Clear;
  DBNome.Clear;
  DBTelefone.Clear;
  DBCelular.Clear;
  DBEndereco.Clear;
end;

end.



