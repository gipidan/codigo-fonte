object FrmFichaTecnicaGradeFoto: TFrmFichaTecnicaGradeFoto
  Left = 251
  Top = 99
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Visualiza'#231#227'o'
  ClientHeight = 397
  ClientWidth = 757
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object FotoReferencia: TImage
    Left = 452
    Top = 52
    Width = 305
    Height = 311
    Align = alClient
    Center = True
    Proportional = True
    Transparent = True
    ExplicitLeft = 400
    ExplicitWidth = 357
  end
  object AdvSplitter1: TAdvSplitter
    Left = 449
    Top = 52
    Height = 311
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
    ExplicitLeft = 393
    ExplicitTop = 49
  end
  object Panel1: TPanel
    Left = 0
    Top = 363
    Width = 757
    Height = 34
    Align = alBottom
    Caption = 'Tecle ESC para sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 52
    Align = alTop
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 2
    object Label11: TLabel
      Left = 7
      Top = 7
      Width = 67
      Height = 13
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 384
      Top = 7
      Width = 32
      Height = 13
      Caption = 'Grife:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label13: TLabel
      Left = 560
      Top = 7
      Width = 51
      Height = 13
      Caption = 'Cole'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 80
      Top = 7
      Width = 37
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit20: TDBEdit
      Left = 7
      Top = 22
      Width = 66
      Height = 21
      BevelKind = bkFlat
      Color = clBtnFace
      DataField = 'REFERENCIA'
      DataSource = BaseDados_PCP.ds_referencias
      TabOrder = 0
    end
    object DBEdit21: TDBEdit
      Left = 384
      Top = 22
      Width = 170
      Height = 21
      BevelKind = bkFlat
      Color = clBtnFace
      DataSource = BaseDados_PCP.ds_referencias
      TabOrder = 2
      Visible = False
    end
    object DBEdit22: TDBEdit
      Left = 560
      Top = 22
      Width = 170
      Height = 21
      BevelKind = bkFlat
      Color = clBtnFace
      DataSource = BaseDados_PCP.ds_referencias
      TabOrder = 3
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 22
      Width = 297
      Height = 21
      BevelKind = bkFlat
      Color = clBtnFace
      DataField = 'DESCRICAO'
      DataSource = BaseDados_PCP.ds_referencias
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 52
    Width = 449
    Height = 311
    Align = alLeft
    Caption = 'Grade Programada'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object StringGrade: TAdvStringGrid
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 439
      Height = 288
      Cursor = crDefault
      Align = alClient
      Ctl3D = True
      DrawingStyle = gdsClassic
      RowCount = 5
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
      ParentCtl3D = False
      ScrollBars = ssBoth
      TabOrder = 0
      GridLineColor = 15527152
      GridFixedLineColor = 13947601
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 16644337
      ActiveCellColorTo = 16576469
      AutoNumAlign = True
      CellNode.NodeType = cn3D
      ControlLook.FixedGradientMirrorFrom = 16447735
      ControlLook.FixedGradientMirrorTo = 16052977
      ControlLook.FixedGradientHoverFrom = 16775139
      ControlLook.FixedGradientHoverTo = 16775139
      ControlLook.FixedGradientHoverMirrorFrom = 16772541
      ControlLook.FixedGradientHoverMirrorTo = 16508855
      ControlLook.FixedGradientDownFrom = 16377020
      ControlLook.FixedGradientDownTo = 16377020
      ControlLook.FixedGradientDownMirrorFrom = 16242317
      ControlLook.FixedGradientDownMirrorTo = 16109962
      ControlLook.FixedGradientDownBorder = 11440207
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      DefaultEditor = edNumeric
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '###,##0'
      Look = glVista
      Navigation.AdvanceOnEnter = True
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'Tahoma'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'Tahoma'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'Tahoma'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      RowIndicator.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000010000000CF6D0700FCED
        D600FECB6400FEFBF500F4D19F00D1833D00EFB86900F0B04D00E3932C00EBA3
        3900F6E0C200DC944A00C0580000DA821B00E1994200E1B185003B5555555555
        F000A0000000CCCC5000ADDDD0645CCC5000A8888DE11DCC5000A99998D8140C
        500017644446A340500012213331331050001222426631B050001222222117D0
        5000122222A368D050001222222698D05000322222798D0CF00033111111AAA1
        3000}
      ScrollWidth = 16
      SearchFooter.Color = clBtnFace
      SearchFooter.ColorTo = 16052977
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SelectionTextColor = clWhite
      SizeWithForm = True
      SortSettings.HeaderColor = 16579058
      SortSettings.HeaderColorTo = 16579058
      SortSettings.HeaderMirrorColor = 16380385
      SortSettings.HeaderMirrorColorTo = 16182488
      Version = '5.8.7.0'
      RowHeights = (
        22
        22
        22
        22
        22)
    end
  end
end
