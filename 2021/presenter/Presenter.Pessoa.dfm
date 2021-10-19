inherited frmPresenterPessoa: TfrmPresenterPessoa
  Caption = 'Cadastro de Pessoas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgControl: TPageControl
    ExplicitTop = 30
    inherited tabCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 8
        Top = 5
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label2: TLabel [1]
        Left = 8
        Top = 53
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Label3: TLabel [2]
        Left = 383
        Top = 53
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object edtNome: TDBEdit
        Left = 8
        Top = 24
        Width = 632
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'nome'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object edtEmail: TDBEdit
        Left = 8
        Top = 72
        Width = 369
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'email'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object cbbCidade: TDBLookupComboBox
        Left = 383
        Top = 72
        Width = 257
        Height = 21
        DataField = 'id_cidade'
        DataSource = dsCadastro
        KeyField = 'id'
        ListField = 'descricao'
        ListSource = dsCidade
        TabOrder = 3
      end
    end
    inherited tabPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 650
      ExplicitHeight = 350
      inherited dbGridPesquisa: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Width = 273
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'E-mail'
            Visible = True
          end>
      end
    end
  end
  object dsCidade: TDataSource
    OnStateChange = dsCadastroStateChange
    Left = 548
    Top = 293
  end
end
