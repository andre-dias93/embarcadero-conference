object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Cadastro de alunos'
  ClientHeight = 461
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgControl: TPageControl
    Left = 0
    Top = 33
    Width = 741
    Height = 428
    ActivePage = tabSearch
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
    OnChanging = pgControlChanging
    object tabRegister: TTabSheet
      object pnlRegister: TPanel
        Left = 0
        Top = 0
        Width = 733
        Height = 402
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pnlStudent: TPanel
          Left = 0
          Top = 0
          Width = 733
          Height = 87
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 31
            Width = 30
            Height = 13
            Caption = 'Nome'
          end
          object Label2: TLabel
            Left = 624
            Top = 31
            Width = 14
            Height = 13
            Caption = 'RA'
          end
          object pnlRegisterStudent: TPanel
            Left = 0
            Top = 0
            Width = 733
            Height = 21
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = '  Cadastrar aluno'
            Color = clHotLight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15658734
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object edtName: TDBEdit
            Left = 16
            Top = 50
            Width = 602
            Height = 21
            DataField = 'name'
            DataSource = dsStudent
            TabOrder = 1
          end
          object edtRA: TDBEdit
            Left = 624
            Top = 50
            Width = 97
            Height = 21
            DataField = 'ra'
            DataSource = dsStudent
            TabOrder = 2
          end
        end
        object pnlCourses: TPanel
          Left = 0
          Top = 87
          Width = 733
          Height = 279
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pnlTitleCourses: TPanel
            Left = 0
            Top = 0
            Width = 733
            Height = 21
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = '  Disciplinas'
            Color = clHotLight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15658734
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object pgControlCourses: TPageControl
            Left = 0
            Top = 54
            Width = 733
            Height = 225
            ActivePage = tabRegisterCourse
            Align = alClient
            TabOrder = 1
            TabPosition = tpBottom
            OnChanging = pgControlCoursesChanging
            ExplicitLeft = 16
            ExplicitTop = 60
            object tabRegisterCourse: TTabSheet
              object btnSaveCourse: TSpeedButton
                Left = 566
                Top = 64
                Width = 73
                Height = 23
                Caption = 'Salvar'
                Transparent = False
                OnClick = btnSaveCourseClick
              end
              object btnCancelCourse: TSpeedButton
                Left = 645
                Top = 64
                Width = 73
                Height = 23
                Caption = 'Cancelar'
                OnClick = btnCancelCourseClick
              end
              object Label3: TLabel
                Left = 12
                Top = 7
                Width = 50
                Height = 13
                Caption = 'Disciplina'
              end
              object Label4: TLabel
                Left = 592
                Top = 7
                Width = 71
                Height = 13
                Caption = 'Carga Hor'#225'ria'
              end
              object edtDescription: TDBEdit
                Left = 12
                Top = 26
                Width = 574
                Height = 21
                DataField = 'description'
                DataSource = dsCourse
                TabOrder = 0
              end
              object edtWorkload: TDBEdit
                Left = 592
                Top = 26
                Width = 125
                Height = 21
                DataField = 'workload'
                DataSource = dsCourse
                TabOrder = 1
              end
            end
            object tabSearchCourse: TTabSheet
              ImageIndex = 1
              object dbGridCourses: TDBGrid
                Left = 0
                Top = 0
                Width = 725
                Height = 199
                Align = alClient
                BorderStyle = bsNone
                DataSource = dsCourse
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'description'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 622
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'workload'
                    Title.Caption = 'Carga Hor'#225'ria'
                    Visible = True
                  end>
              end
            end
          end
          object pnlToolButtonsCourse: TPanel
            Left = 0
            Top = 21
            Width = 733
            Height = 33
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object btnInsertCourse: TSpeedButton
              Left = 0
              Top = 2
              Width = 95
              Height = 28
              Caption = 'Incluir'
              Transparent = False
              OnClick = btnInsertCourseClick
            end
            object btnEditCourse: TSpeedButton
              Left = 95
              Top = 2
              Width = 95
              Height = 28
              Caption = 'Alterar'
            end
            object btnDeleteCourse: TSpeedButton
              Left = 190
              Top = 2
              Width = 95
              Height = 28
              Caption = 'Excluir'
              OnClick = btnDeleteCourseClick
            end
          end
        end
        object pnlFooterRegister: TPanel
          Left = 0
          Top = 366
          Width = 733
          Height = 36
          Align = alBottom
          ParentBackground = False
          TabOrder = 2
          object btnCancel: TSpeedButton
            Left = 614
            Top = 3
            Width = 118
            Height = 31
            Caption = 'Cancelar'
            OnClick = btnCancelClick
          end
          object btnOK: TSpeedButton
            Left = 496
            Top = 3
            Width = 118
            Height = 31
            Caption = 'Confirmar'
            OnClick = btnOKClick
          end
        end
      end
    end
    object tabSearch: TTabSheet
      ImageIndex = 1
      object pnlGridSearch: TPanel
        Left = 0
        Top = 0
        Width = 733
        Height = 366
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 65
        ExplicitHeight = 301
        object dbGridSearch: TDBGrid
          Left = 0
          Top = 0
          Width = 733
          Height = 366
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsSearch
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = dbGridSearchDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'name'
              Title.Caption = 'Nome'
              Width = 634
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ra'
              Title.Caption = 'RA'
              Visible = True
            end>
        end
      end
      object pnlFooterSearch: TPanel
        Left = 0
        Top = 366
        Width = 733
        Height = 36
        Align = alBottom
        ParentBackground = False
        TabOrder = 1
        object btnClose: TSpeedButton
          Left = 614
          Top = 3
          Width = 118
          Height = 31
          Caption = 'Fechar'
          OnClick = btnCloseClick
        end
      end
    end
  end
  object pnlToolButtons: TPanel
    Left = 0
    Top = 0
    Width = 741
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnInsert: TSpeedButton
      Left = 4
      Top = 3
      Width = 95
      Height = 28
      Caption = 'Incluir'
      OnClick = btnInsertClick
    end
    object btnEdit: TSpeedButton
      Left = 99
      Top = 3
      Width = 95
      Height = 28
      Caption = 'Alterar'
      OnClick = btnEditClick
    end
    object btnDelete: TSpeedButton
      Left = 194
      Top = 3
      Width = 95
      Height = 28
      Caption = 'Excluir'
      OnClick = btnDeleteClick
    end
  end
  object dsStudent: TDataSource
    AutoEdit = False
    OnStateChange = dsStudentStateChange
    Left = 564
    Top = 298
  end
  object dsSearch: TDataSource
    AutoEdit = False
    OnStateChange = dsSearchStateChange
    Left = 676
    Top = 298
  end
  object dsCourse: TDataSource
    AutoEdit = False
    OnStateChange = dsCourseStateChange
    Left = 620
    Top = 298
  end
end
