unit UPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmPesquisa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    EdPesquisa: TEdit;
    Label1: TLabel;
    BtPesquisa: TBitBtn;
    CbOpcao: TComboBox;
    Label2: TLabel;
    Conexao: TFDConnection;
    QCadastro: TFDQuery;
    DSCadastro: TDataSource;
    procedure BtCadastroClick(Sender: TObject);
    procedure BtPesquisaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisa: TFrmPesquisa;

implementation

{$R *.dfm}

uses UEmpresa;

procedure TFrmPesquisa.BtCadastroClick(Sender: TObject);
begin
  FrmCadEmpresa.ShowModal;
end;


procedure TFrmPesquisa.BtPesquisaClick(Sender: TObject);
begin
 QCadastro.Close;
 QCadastro.Params.Clear;
 QCadastro.SQL.Add('');
 QCadastro.SQL.Clear;
 QCadastro.SQL.Add('select * from empresa');

 case CbOpcao.Itemindex of
  0: Begin
    QCadastro.SQL.Add('where Id_Empresa = :pcodigo');
    Qcadastro.ParamByName('pcodigo').AsInteger := Strtoint(EdPesquisa.Text);
  End;

  1: Begin
    QCadastro.SQL.Add('where Nome = :pnome');
    Qcadastro.ParamByName('pnome').AsString := (EdPesquisa.Text);
  End;

 end;

 QCadastro.Open;

 if QCadastro.isEmpty then
    Begin
      messagedlg('nenhum Registro Encontrado!',mtinformation, [mbOk], 0);
    End;
end;


end.
