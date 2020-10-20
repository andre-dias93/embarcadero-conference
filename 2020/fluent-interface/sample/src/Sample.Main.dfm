object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Fluente Interface'
  ClientHeight = 415
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFluentInterface: TPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 415
    Align = alClient
    TabOrder = 0
    object pnlStrings: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 99
      Width = 728
      Height = 312
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object sptSeparator: TSplitter
        Left = 345
        Top = 137
        Height = 175
        ExplicitLeft = 424
        ExplicitTop = 184
        ExplicitHeight = 100
      end
      object pnlStringsTitle: TPanel
        Left = 0
        Top = 0
        Width = 728
        Height = 21
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '  StringList e StringBuilder'
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
      object pnlContent: TPanel
        Left = 0
        Top = 65
        Width = 728
        Height = 72
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 6
          Width = 183
          Height = 13
          Caption = 'Selecione um intervalo de n'#250'meros:'
        end
        object Label2: TLabel
          Left = 103
          Top = 34
          Width = 6
          Height = 13
          Caption = #224
        end
        object edtMinValue: TSpinEdit
          Left = 13
          Top = 31
          Width = 85
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 0
        end
        object edtMaxValue: TSpinEdit
          Left = 114
          Top = 31
          Width = 85
          Height = 22
          MaxValue = 1000
          MinValue = 1
          TabOrder = 1
          Value = 1
        end
        object btnList: TButton
          Left = 205
          Top = 28
          Width = 75
          Height = 25
          Caption = 'Listar'
          TabOrder = 2
          OnClick = btnListClick
        end
      end
      object pnlListType: TPanel
        Left = 0
        Top = 21
        Width = 728
        Height = 44
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object rgEvenOdd: TRadioGroup
          Left = 0
          Top = 0
          Width = 728
          Height = 44
          Align = alClient
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Par'
            'Impar')
          ParentFont = False
          TabOrder = 0
        end
      end
      object pnlMemoList: TPanel
        Left = 0
        Top = 137
        Width = 345
        Height = 175
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'pnlMemoList'
        TabOrder = 3
        object Label5: TLabel
          Left = 0
          Top = 0
          Width = 345
          Height = 15
          Align = alTop
          Alignment = taCenter
          Caption = 'TStringBuilder'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 81
        end
        object mmList: TMemo
          Left = 0
          Top = 15
          Width = 345
          Height = 160
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16382457
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
          ExplicitTop = 0
          ExplicitHeight = 175
        end
      end
      object Panel1: TPanel
        Left = 348
        Top = 137
        Width = 380
        Height = 175
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 4
        ExplicitLeft = 376
        ExplicitTop = 200
        ExplicitWidth = 185
        ExplicitHeight = 41
        object Label6: TLabel
          Left = 1
          Top = 1
          Width = 378
          Height = 15
          Align = alTop
          Alignment = taCenter
          Caption = 'TStringList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 60
        end
        object ltbList: TListBox
          Left = 1
          Top = 16
          Width = 378
          Height = 158
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Columns = 3
          ItemHeight = 13
          TabOrder = 0
          ExplicitLeft = 351
          ExplicitTop = 143
          ExplicitWidth = 380
          ExplicitHeight = 175
        end
      end
    end
    object pnlFind: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 728
      Height = 89
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        728
        89)
      object Label3: TLabel
        Left = 11
        Top = 31
        Width = 27
        Height = 13
        Caption = 'Texto'
      end
      object Label4: TLabel
        Left = 434
        Top = 31
        Width = 45
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Pesquisa'
        ExplicitLeft = 440
      end
      object edtText: TEdit
        Left = 11
        Top = 50
        Width = 417
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
      object edtSearch: TEdit
        Left = 434
        Top = 50
        Width = 193
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 1
      end
      object btnFind: TButton
        Left = 633
        Top = 48
        Width = 74
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Localizar'
        TabOrder = 2
        OnClick = btnFindClick
      end
      object pnlFindTitle: TPanel
        Left = 0
        Top = 0
        Width = 728
        Height = 21
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '  Localizar Texto'
        Color = clHotLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15658734
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
      end
    end
  end
end
