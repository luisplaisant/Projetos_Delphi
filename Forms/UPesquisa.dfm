object FrmPesquisa: TFrmPesquisa
  Left = 0
  Top = 0
  Caption = 'Consulta Empresa'
  ClientHeight = 365
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 57
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 176
      Top = 9
      Width = 239
      Height = 16
      Caption = 'Digite o C'#243'digo ou Nome da Empresa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 9
      Width = 127
      Height = 16
      Caption = 'Op'#231#245'es de Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdPesquisa: TEdit
      Left = 176
      Top = 30
      Width = 233
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object BtPesquisa: TBitBtn
      Left = 488
      Top = 10
      Width = 90
      Height = 40
      Caption = '&Pesquisar'
      TabOrder = 1
      OnClick = BtPesquisaClick
    end
    object CbOpcao: TComboBox
      Left = 12
      Top = 28
      Width = 145
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        'C'#243'digo'
        'Nome')
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
    TabOrder = 1
    ExplicitLeft = 312
    ExplicitTop = 208
    ExplicitWidth = 185
    object DBNavigator1: TDBNavigator
      Left = 176
      Top = 16
      Width = 260
      Height = 33
      DataSource = FrmCadEmpresa.DSCadastro
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 686
    Height = 245
    Align = alClient
    DataSource = DSCadastro
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
    LoginPrompt = False
    Left = 576
    Top = 88
  end
  object QCadastro: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from empresa'
      'order by Id_Empresa')
    Left = 584
    Top = 160
  end
  object DSCadastro: TDataSource
    DataSet = QCadastro
    Left = 584
    Top = 240
  end
end
