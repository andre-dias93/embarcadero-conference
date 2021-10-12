object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Principal'
  ClientHeight = 542
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainMenu
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mainMenu: TMainMenu
    Left = 184
    Top = 16
    object menuItem: TMenuItem
      Caption = 'Cadastros'
      object menuItemPessoa: TMenuItem
        Caption = 'Pessoa'
        OnClick = menuItemPessoaClick
      end
      object menuItemCidade: TMenuItem
        Caption = 'Cidade'
        OnClick = menuItemCidadeClick
      end
    end
  end
end
