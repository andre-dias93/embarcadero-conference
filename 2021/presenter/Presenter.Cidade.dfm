inherited frmPresenterCidade: TfrmPresenterCidade
  Caption = 'Cadastro de Cidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgControl: TPageControl
    ExplicitTop = 30
    inherited tabCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 8
        Top = 7
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label2: TLabel [1]
        Left = 566
        Top = 7
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object edtDescricao: TDBEdit
        Left = 8
        Top = 24
        Width = 552
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'descricao'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object edtEstado: TDBEdit
        Left = 566
        Top = 24
        Width = 79
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'estado'
        DataSource = dsCadastro
        TabOrder = 2
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
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 520
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estado'
            Title.Caption = 'Estado'
            Visible = True
          end>
      end
    end
  end
end
