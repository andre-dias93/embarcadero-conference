object ControllerSample: TControllerSample
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 118
  Width = 316
  object mtStudent: TFDMemTable
    AfterInsert = mtStudentAfterInsert
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 64
    Top = 40
    object mtStudentid: TIntegerField
      FieldName = 'id'
    end
    object mtStudentname: TStringField
      FieldName = 'name'
      Size = 100
    end
    object mtStudentra: TStringField
      FieldName = 'ra'
      Size = 10
    end
  end
  object mtCourses: TFDMemTable
    CachedUpdates = True
    IndexFieldNames = 'idStudent'
    MasterFields = 'id'
    DetailFields = 'idStudent'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 144
    Top = 40
    object mtCoursesid: TIntegerField
      FieldName = 'id'
    end
    object mtCoursesdescription: TStringField
      FieldName = 'description'
      Size = 100
    end
    object mtCoursesworkload: TIntegerField
      FieldName = 'workload'
    end
    object mtCoursesidStudent: TIntegerField
      FieldName = 'idStudent'
    end
  end
  object mtSearch: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 224
    Top = 40
    object mtSearchid: TIntegerField
      FieldName = 'id'
    end
    object mtSearchra: TStringField
      FieldName = 'ra'
      Size = 10
    end
    object mtSearchname: TStringField
      FieldName = 'name'
      Size = 100
    end
  end
end
