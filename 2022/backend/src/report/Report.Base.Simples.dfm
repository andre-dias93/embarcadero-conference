inherited ReportBaseSimples: TReportBaseSimples
  OldCreateOrder = True
  Width = 365
  inherited frxReport: TfrxReport
    Left = 167
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
        Top = 317.480520000000000000
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
      object bandHeaderBaseSimples: TfrxHeader
        FillType = ftBrush
        Fill.BackColor = clBtnFace
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.984251970000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
      end
      object bandMasterDataBaseSimples: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.118120000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = dbReport
        DataSetName = 'Report'
        RowCount = 0
      end
      object bandFooterBaseSimples: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.984251970000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object lblQuantidadeRegistrosBaseSimples: TfrxMemoView
          AllowVectorExport = True
          Width = 366.614410000000000000
          Height = 13.606299210000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de registros: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object dbReport: TfrxDBDataset
    UserName = 'Report'
    CloseDataSource = False
    DataSet = qryReport
    BCDToCurrency = False
    Left = 257
    Top = 54
  end
  object qryReport: TFDQuery
    Left = 71
    Top = 54
  end
end
