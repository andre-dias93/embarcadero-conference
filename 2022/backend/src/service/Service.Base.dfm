object ServiceBase: TServiceBase
  OldCreateOrder = False
  Height = 150
  Width = 380
  object Connection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Projects\Palestras\ec-2022\backend\database\EC2022.F' +
        'DB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3056'
      'DriverID=FB')
    ConnectedStoredUsage = [auDesignTime]
    LoginPrompt = False
    Left = 88
    Top = 56
  end
  object frxReport: TfrxReport
    Version = '6.9.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Fiorilli S/C Software'
    ReportOptions.Compressed = True
    ReportOptions.CreateDate = 43635.396857766200000000
    ReportOptions.LastChange = 44547.393778796300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure ChildNomeRelatorioOnAfterCalcHeight(Sender: TfrxCompon' +
        'ent);'
      'begin'
      '  ChildNomeRelatorio.Visible := <page#> = 1;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 167
    Top = 54
    Datasets = <
      item
      end
      item
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
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PageBase: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeaderBase: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 54.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object lblNomeEntidadeBase: TfrxMemoView
          AllowVectorExport = True
          Left = 3.551181100000000000
          Top = 1.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fiorilli Software Ltda')
          ParentFont = False
        end
        object lblTituloRelatorioBase: TfrxMemoView
          AllowVectorExport = True
          Left = 3.551181100000000000
          Top = 37.031540000000000000
          Width = 718.238560000000000000
          Height = 16.063002500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio Modelo')
          ParentFont = False
        end
        object lblEnderecoBase: TfrxMemoView
          AllowVectorExport = True
          Left = 3.551181100000000000
          Top = 20.218537500000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Av. Marginal, 65, Distrito Industrial - B'#225'lsamo-SP, 15140-000')
          ParentFont = False
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
      object PageFooterBase: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.984251970000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object LineBase: TfrxLineView
          AllowVectorExport = True
          Left = 0.118120000000000000
          Top = 0.118120000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object lblDataEmissaoBase: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 359.055350000000000000
          Width = 359.055350000000000000
          Height = 13.606299210000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o: [Date] [Time] - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
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
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Compressed = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 50
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 256
    Top = 56
  end
end
