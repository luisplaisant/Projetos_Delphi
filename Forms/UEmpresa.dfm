object FrmCadEmpresa: TFrmCadEmpresa
  Left = 0
  Top = 0
  Caption = 'Cadastro de Empresa'
  ClientHeight = 365
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 97
    Width = 112
    Height = 16
    Caption = 'C'#211'DIGO EMPRESA'
    FocusControl = DBCodigo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 104
    Top = 138
    Width = 35
    Height = 16
    Caption = 'NOME'
    FocusControl = DBNome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 104
    Top = 178
    Width = 58
    Height = 16
    Caption = 'TELEFONE'
    FocusControl = DBTelefone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 311
    Top = 178
    Width = 56
    Height = 16
    Caption = 'CELULAR'
    FocusControl = DBCelular
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 105
    Top = 218
    Width = 64
    Height = 16
    Caption = 'ENDERE'#199'O'
    FocusControl = DBEndereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBCodigo: TDBEdit
    Left = 104
    Top = 114
    Width = 134
    Height = 24
    CharCase = ecUpperCase
    DataField = 'ID_EMPRESA'
    DataSource = DSCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBNome: TDBEdit
    Left = 104
    Top = 154
    Width = 400
    Height = 24
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DSCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DBTelefone: TDBEdit
    Left = 104
    Top = 194
    Width = 199
    Height = 24
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = DSCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 13
    ParentFont = False
    TabOrder = 2
  end
  object DBCelular: TDBEdit
    Left = 311
    Top = 194
    Width = 199
    Height = 24
    CharCase = ecUpperCase
    DataField = 'CELULAR'
    DataSource = DSCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 13
    ParentFont = False
    TabOrder = 3
  end
  object DBEndereco: TDBEdit
    Left = 104
    Top = 234
    Width = 400
    Height = 24
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = DSCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 57
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 5
    object BtEditar: TBitBtn
      Left = 108
      Top = 10
      Width = 90
      Height = 40
      Caption = '&Editar'
      TabOrder = 0
      OnClick = BtEditarClick
    end
    object BtCancelar: TBitBtn
      Left = 396
      Top = 10
      Width = 90
      Height = 40
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = BtCancelarClick
    end
    object BtAtualizar: TBitBtn
      Left = 492
      Top = 10
      Width = 90
      Height = 40
      Caption = '&Atualizar'
      TabOrder = 2
      OnClick = BtAtualizarClick
    end
    object BtNovo: TBitBtn
      Left = 9
      Top = 10
      Width = 90
      Height = 40
      Caption = '&Novo'
      TabOrder = 3
      OnClick = BtNovoClick
    end
    object BtExcluir: TBitBtn
      Left = 204
      Top = 10
      Width = 90
      Height = 40
      Caption = '&Excluir'
      TabOrder = 4
      OnClick = BtExcluirClick
    end
    object BtSair: TBitBtn
      Left = 588
      Top = 10
      Width = 90
      Height = 40
      Caption = '&Sair'
      TabOrder = 5
      OnClick = BtSairClick
    end
    object BtGravar: TBitBtn
      Left = 300
      Top = 10
      Width = 90
      Height = 40
      Caption = '&Gravar'
      TabOrder = 6
      OnClick = BtGravarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 308
    Width = 692
    Height = 57
    Align = alBottom
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 6
    ExplicitTop = 324
    object DBNavigator1: TDBNavigator
      Left = 156
      Top = 13
      Width = 260
      Height = 33
      DataSource = DSCadastro
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object BtPesquisa: TBitBtn
      Left = 492
      Top = 8
      Width = 90
      Height = 40
      Caption = '&Pesquisa'
      TabOrder = 1
      OnClick = BtPesquisaClick
    end
  end
  object Conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Aluno\Downloads\Cadastro e Consulta Empresa De' +
        'lphi\Exe\Banco de Dados\EMPRESA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=Localhost'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 30
    Top = 104
  end
  object QCadastro: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from empresa'
      'order by ID_Empresa')
    Left = 32
    Top = 162
    object QCadastroID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QCadastroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object QCadastroCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object QCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
  end
  object DSCadastro: TDataSource
    DataSet = QCadastro
    Left = 34
    Top = 225
  end
end
