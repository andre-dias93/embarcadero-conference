inherited ServiceProfissional: TServiceProfissional
  Width = 498
  inherited frxReport: TfrxReport
    ScriptText.Strings = (
      
        'procedure ChildNomeRelatorioOnAfterCalcHeight(Sender: TfrxCompon' +
        'ent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Datasets = <
      item
        DataSet = dbReport
        DataSetName = 'Report'
      end>
    Variables = <
      item
        Name = ' Fiorilli'
        Value = Null
      end
      item
        Name = 'Usuario'
        Value = Null
      end
      item
        Name = 'Filtros'
        Value = Null
      end>
    Style = <>
    inherited PageBase: TfrxReportPage
      inherited PageHeaderBase: TfrxPageHeader
        inherited lblTituloRelatorioBase: TfrxMemoView
          Memo.UTF8W = (
            'Relat'#243'rio de Profissionais')
        end
        inherited lblEnderecoBase: TfrxMemoView
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
      end
      inherited PageFooterBase: TfrxPageFooter
        inherited lblDataEmissaoBase: TfrxMemoView
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
      end
      inherited bandHeaderBaseSimples: TfrxHeader
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.480210000000000000
          Width = 40.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 44.267780000000000000
          Top = 1.480210000000000000
          Width = 300.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 515.638220000000000000
          Top = 1.480210000000000000
          Width = 40.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 348.527830000000000000
          Top = 1.480210000000000000
          Width = 158.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ocupa'#231#227'o')
          ParentFont = False
        end
      end
      inherited bandMasterDataBaseSimples: TfrxMasterData
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 44.267780000000000000
          Top = -1.094620000000000000
          Width = 301.173470000000000000
          Height = 18.897650000000000000
          DataField = 'NAME'
          DataSet = dbReport
          DataSetName = 'Report'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Report."NAME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 515.638220000000000000
          Top = -1.094620000000000000
          Width = 199.236240000000000000
          Height = 18.897650000000000000
          DataField = 'EMAIL'
          DataSet = dbReport
          DataSetName = 'Report'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Report."EMAIL"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 347.748300000000000000
          Top = -1.094620000000000000
          Width = 160.787570000000000000
          Height = 18.897650000000000000
          DataField = 'JOB'
          DataSet = dbReport
          DataSetName = 'Report'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Report."JOB"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = -1.094620000000000000
          Width = 39.795300000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = dbReport
          DataSetName = 'Report'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Report."ID"]')
          ParentFont = False
        end
      end
    end
  end
  inherited frxPDFExport: TfrxPDFExport
    Compressed = True
    Left = 160
  end
  inherited qryReport: TFDQuery
    SQL.Strings = (
      'select id, job, name, email from professional')
    Left = 359
    object qryReportID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object qryReportJOB: TWideStringField
      FieldName = 'JOB'
      Origin = 'JOB'
      Size = 30
    end
    object qryReportNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object qryReportEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
  end
  inherited dbReport: TfrxDBDataset
    FieldAliases.Strings = (
      'ID=ID'
      'JOB=JOB'
      'NAME=NAME'
      'EMAIL=EMAIL')
    Left = 297
  end
end
