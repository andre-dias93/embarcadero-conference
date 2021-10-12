inherited ContainerPessoa: TContainerPessoa
  Width = 245
  inherited mtPesquisa: TFDMemTable
    object mtPesquisaid: TIntegerField
      FieldName = 'id'
    end
    object mtPesquisanome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object mtPesquisaemail: TStringField
      FieldName = 'email'
      Size = 50
    end
  end
  inherited mtCadastro: TFDMemTable
    object mtCadastroid: TIntegerField
      FieldName = 'id'
    end
    object mtCadastronome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object mtCadastroemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object mtCadastroid_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
  end
  object mtCidade: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 176
    Top = 40
    object IntegerField1: TIntegerField
      FieldName = 'id'
    end
    object mtCidadedescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
end
