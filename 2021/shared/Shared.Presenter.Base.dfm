object frmPresenterBase: TfrmPresenterBase
  Left = 0
  Top = 0
  Caption = 'Cadastro Base'
  ClientHeight = 406
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgControl: TPageControl
    Left = 0
    Top = 30
    Width = 658
    Height = 376
    ActivePage = tabPesquisa
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
    TabStop = False
    object tabCadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlFooterCadastro: TPanel
        Left = 0
        Top = 314
        Width = 650
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          650
          36)
        object btnCancelar: TSpeedButton
          Left = 566
          Top = 9
          Width = 83
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Cancelar'
          OnClick = btnCancelarClick
        end
        object btnConfirmar: TSpeedButton
          Left = 479
          Top = 9
          Width = 86
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Confirmar'
          OnClick = btnConfirmarClick
        end
      end
    end
    object tabPesquisa: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbGridPesquisa: TDBGrid
        Left = 0
        Top = 0
        Width = 650
        Height = 350
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsPesquisa
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbGridPesquisaDblClick
      end
    end
  end
  object pnlToolBar: TPanel
    Left = 0
    Top = 0
    Width = 658
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 1
    object btnIncluir: TSpeedButton
      Left = 2
      Top = 3
      Width = 86
      Height = 25
      Caption = 'Incluir'
      OnClick = btnIncluirClick
    end
    object btnAlterar: TSpeedButton
      Left = 89
      Top = 3
      Width = 86
      Height = 25
      Caption = 'Alterar'
      OnClick = btnAlterarClick
    end
    object btnExcluir: TSpeedButton
      Left = 175
      Top = 3
      Width = 86
      Height = 25
      Caption = 'Excluir'
      OnClick = btnExcluirClick
    end
  end
  object dsCadastro: TDataSource
    OnStateChange = dsCadastroStateChange
    Left = 580
    Top = 293
  end
  object dsPesquisa: TDataSource
    Left = 612
    Top = 293
  end
end
