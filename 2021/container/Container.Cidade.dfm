inherited ContainerCidade: TContainerCidade
  OldCreateOrder = True
  inherited mtPesquisa: TFDMemTable
    object mtPesquisaid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object mtPesquisadescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object mtPesquisaestado: TStringField
      FieldName = 'estado'
      Size = 2
    end
  end
  inherited mtCadastro: TFDMemTable
    AfterInsert = mtCadastroAfterInsert
    object mtCadastroid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object mtCadastrodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object mtCadastroestado: TStringField
      FieldName = 'estado'
      Size = 2
    end
  end
end
