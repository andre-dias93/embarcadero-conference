inherited ServiceBaseSimples: TServiceBaseSimples
  OldCreateOrder = True
  Height = 162
  Width = 491
  inherited Connection: TFDConnection
    Connected = True
  end
  inherited frxReport: TfrxReport
    ScriptText.Strings = (
      
        'procedure ChildNomeRelatorioOnAfterCalcHeight(Sender: TfrxCompon' +
        'ent);'
      'begin'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 231
    Top = 57
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
        Top = 294.803340000000000000
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
        Height = 21.543311970000000000
        Top = 132.283550000000000000
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
        Top = 177.637910000000000000
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
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = -1.448980000000000000
          Width = 366.614410000000000000
          Height = 13.606299210000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de registros: [COUNT()]')
          ParentFont = False
        end
      end
    end
  end
  inherited frxPDFExport: TfrxPDFExport
    Left = 168
  end
  object qryReport: TFDQuery
    Connection = Connection
    Left = 351
    Top = 55
  end
  object dbReport: TfrxDBDataset
    UserName = 'Report'
    CloseDataSource = False
    DataSet = qryReport
    BCDToCurrency = False
    Left = 289
    Top = 56
  end
end