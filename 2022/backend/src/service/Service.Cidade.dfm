inherited ServiceCidade: TServiceCidade
  inherited frxReport: TfrxReport
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
            'Relat'#243'rio de Cidades')
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
          Top = 3.716450000000000000
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
          Left = 43.267780000000000000
          Top = 3.716450000000000000
          Width = 300.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 514.638220000000000000
          Top = 3.716450000000000000
          Width = 92.236240000000000000
          Height = 18.897650000000000000
          DataSet = dbReport
          DataSetName = 'Report'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 347.527830000000000000
          Top = 3.716450000000000000
          Width = 158.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pa'#237's')
          ParentFont = False
        end
      end
      inherited bandMasterDataBaseSimples: TfrxMasterData
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 43.267780000000000000
          Top = -1.858380000000000000
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
          Left = 514.638220000000000000
          Top = -1.858380000000000000
          Width = 199.236240000000000000
          Height = 18.897650000000000000
          DataField = 'ADDRESS'
          DataSet = dbReport
          DataSetName = 'Report'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Report."ADDRESS"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 346.748300000000000000
          Top = -1.858380000000000000
          Width = 160.787570000000000000
          Height = 18.897650000000000000
          DataField = 'COUNTRY'
          DataSet = dbReport
          DataSetName = 'Report'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Report."COUNTRY"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = -1.858380000000000000
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
      inherited bandFooterBaseSimples: TfrxFooter
        inherited Memo4: TfrxMemoView
          Top = -1.448980000000000000
        end
      end
    end
  end
  inherited qryReport: TFDQuery
    SQL.Strings = (
      'select id, name, country, address from city')
    object qryReportID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object qryReportNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 30
    end
    object qryReportCOUNTRY: TWideStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      Size = 50
    end
    object qryReportADDRESS: TWideStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 100
    end
  end
  inherited dbReport: TfrxDBDataset
    FieldAliases.Strings = (
      'ID=ID'
      'NAME=NAME'
      'COUNTRY=COUNTRY'
      'ADDRESS=ADDRESS')
  end
end
