inherited ReportProfissional: TReportProfissional
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
    end
  end
end