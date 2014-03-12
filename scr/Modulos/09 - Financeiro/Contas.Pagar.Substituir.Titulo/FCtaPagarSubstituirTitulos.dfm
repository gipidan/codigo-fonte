object FrmCtaPagarSubstituirTitulos: TFrmCtaPagarSubstituirTitulos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Conta a Pagar - Substituir titulos'
  ClientHeight = 596
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 731
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 731
    ExplicitHeight = 36
    inherited W7Panel1: TW7Panel
      Width = 731
      FillStyle = pfsGradient
      ExplicitWidth = 731
      inherited LblBarraTitulo: TLabel
        Width = 460
        Caption = 'Conta a Pagar - Substituir titulos | Selecionar'
        ExplicitWidth = 460
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 731
    Height = 448
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 185
      Width = 729
      Height = 262
      Align = alClient
      Caption = 'Selecionar titulos a baixar'
      TabOrder = 0
      object GridMenus: TDBAdvGrid
        Left = 2
        Top = 15
        Width = 725
        Height = 245
        Cursor = crDefault
        Align = alClient
        ColCount = 7
        DrawingStyle = gdsClassic
        RowCount = 2
        FixedRows = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ActiveRowShow = True
        ActiveRowColor = clWindow
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
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
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 20
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
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
        ScrollWidth = 16
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
        Version = '2.3.5.1'
        AutoCreateColumns = True
        AutoRemoveColumns = False
        Columns = <
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 20
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'S'
            Color = clWindow
            EditLength = 200
            FieldName = 'DOCUMENTO'
            Fixed = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'DOCUMENTO:'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = True
            Width = 116
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'DATA'
            Fixed = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'DATA:'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = True
            Width = 104
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'VENCIMENTO'
            Fixed = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'VENCIMENTO:'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = True
            Width = 133
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'FORNECEDOR'
            Fixed = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'FORNECEDOR:'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = True
            Width = 112
          end
          item
            Alignment = taRightJustify
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'VALOR'
            Fixed = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'VALOR:'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = True
            Width = 115
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckBoxField = True
            CheckFalse = 'N'
            CheckTrue = 'S'
            Color = clWindow
            EditLength = 1
            FieldName = 'SELECIONADO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'SELECIONADO:'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 95
          end>
        DataSource = ds_ctaPagar
        DataSetType = dtNonSequenced
        InvalidPicture.Data = {
          055449636F6E0000010001002020200000000000A81000001600000028000000
          2000000040000000010020000000000000100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000003000000290000005C0000008B000000AF000000C1
          000000CA000000CB000000C9000000C1000000AF0000008A0000005E0000002C
          0000000400000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000220000007100001CBE000047F401015DFF01016CFF000074FF
          000075FF00006CFF01015EFF010145FF000020FF000001F3000000DE000000AE
          0000006B00000026000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000005401013DC5010175FF010186FF010189FF000085FF000082FF000081FF
          000080FF000080FF000080FF000083FF000082FF01016EFF01013FFF000007FB
          000000E0000000A10000004D0000000700000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000300003A8B
          010178FF010191FF00008AFF000085FF000085FF000085FF000085FF000086FF
          000086FF000084FF000081FF000080FF00007FFF000081FF000085FF010172FF
          000030FF000000F5000000C3000000610000000A000000000000000000000000
          000000000000000000000000000000000000000000000001010159A5010193FF
          01018EFF000089FF000089FF00008CFF00008CFF00008FFF000090FF000090FF
          000090FF00008FFF00008BFF00008AFF000086FF000082FF00007EFF000081FF
          010182FF00004FFF000000FC000000CB0000005F000000080000000000000000
          0000000000000000000000000000000000000000010167AA02029EFF01018EFF
          00008CFF00008FFF000092FF000095FF000098FF000099FF000098FF00009BFF
          00009AFF000098FF000097FF000094FF00008FFF00008BFF000087FF000082FF
          00007FFF010188FF00005BFF000000FC000000C4000000530000000000000000
          00000000000000000000000000000000010169850202A4FF010191FF000090FF
          000095FF000093FF000096FF00009DFF0000A2FF0000A2FF0000A2FF0000A3FF
          0000A2FF0000A1FF00009FFF00009BFF000097FF00008DFF00008BFF00008AFF
          000084FF00007FFF01018BFF000054FF000000F6000000AC0000003000000000
          000000000000000000000000000168400202A6FF020294FF000094FF00009AFF
          000098FF4949BFFF5353C4FF00009DFF0000A7FF0000A9FF0101AAFF0101AAFF
          0101A9FF0101A8FF0000A5FF0000A2FF00009AFF5F5FC5FF3A3AB3FF00008AFF
          00008BFF000086FF010183FF01018BFF000037FF000000E50000007900000009
          0000000000000000000000000202A2D803039EFF00009AFF0000A0FF0000A1FF
          2929ABFFFFFFFAFFFFFFFFFF4A4AC8FF0000A5FF0000AFFF0000AFFF0101AEFF
          0101B0FF0000AFFF0000ACFF0000A5FF4848B6FFFFFFFFFFFFFFFFFF2424AEFF
          00008FFF000090FF000089FF01018BFF010180FF00000CFF000000BB00000038
          00000000000000000101655C0303B2FF02029EFF0000A4FF0000AAFF2F2FA9FF
          CCCCC0FFFFFFF4FFFFFFFFFFFFFFFFFF4141CAFF0000ACFF0000B3FF0000B3FF
          0000B3FF0000B2FF0000ADFF4343B5FFEDEDD9FFFFFFFFFFFFFFFFFFFFFFFFFF
          3232AFFF000095FF000092FF01018BFF020293FF010155FF000000E50000006F
          00000000000000000303A6D70303A2FF0202A5FF0000ACFF0000B2FF78788DFF
          CBCBA5FFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFF4F4FCEFF0000AEFF0000B5FF
          0000B6FF0000B2FF4B4BBDFFF2F2D9FFFFFFF8FFFFFFFFFFFFFFFFFFF8F8D4FF
          8282AEFF0000A2FF00009DFF010194FF020291FF02028CFF000110FD0000009F
          000000180000C5200404A3FF0404A7FF0202ADFF0101B3FF0000BCFF0000B0FF
          606073FFC4C4A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040CFFF0000B1FF
          0000B3FF4E4EC8FFF6F6DFFFFFFFF6FFFFFFFFFFFFFFFFFFE7E7CBFF737393FF
          0000A9FF0000ABFF0000A4FF01019BFF020292FF02029BFF010139FF000000C2
          000000370201BE6D0505A7FF0404AEFF0303B6FF0303BBFF0101C1FF0000CDFF
          0000B9FF56566EFFC0C0A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B3BCFFF
          5050D7FFFFFFFAFFFFFFF5FFFFFFFFFFFFFFFFFFE0E0C8FF6D6D8FFF0000B2FF
          0000B8FF0000B1FF0101ABFF0101A3FF01019AFF02029EFF02026FFF000000DC
          0000004D0405BAA10707ADFF0606B5FF0404BBFF0505C2FF0505C8FF0303CBFF
          0000D2FF0000BAFF616177FFC6C6ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9CDFF747495FF0000B7FF0000C2FF
          0101BDFF0202B8FF0202B2FF0101AAFF02029FFF03039EFF020289FF000004E6
          000000550606B9CB0808B5FF0606BBFF0606C4FF0606C9FF0606CDFF0606D0FF
          0202CFFF0000D4FF0000BDFF6E6E86FFDADABDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF5F5DAFF8181A4FF0000BCFF0000C5FF0000C4FF
          0303C1FF0303BEFF0202B8FF0202B0FF0202A6FF0303A1FF03039FFF00000CEC
          000000590909BBE80909BAFF0808C2FF0808CAFF0808D0FF0909D4FF0707D4FF
          0303D2FF0000D0FF0000D4FF0000C2FF8A8AAEFFF7F7EAFFFFFFFFFFFEFEFEFF
          FEFEFEFFFFFFFFFFFFFFF9FF9393C8FF0000C3FF0000C8FF0000C6FF0101C6FF
          0404C6FF0505C5FF0303BEFF0202B6FF0202ACFF0303A3FF0606AEFF010113ED
          0000005A0A0ABFF80C0CC2FF0B0BC9FF0B0BD0FF0B0BD8FF0D0DDCFF0808D9FF
          0303D5FF0000D2FF0000D2FF0000D4FF4648C5FFF9F9E6FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF6FF3A3ACEFF0000C6FF0000CBFF0000C9FF0303CAFF
          0505CAFF0505CAFF0505C4FF0404BEFF0404B2FF0505A9FF0505B9FF010115EB
          000000570B0BC6EA1010C9FF0E0ED0FF0E0EDAFF0F0FE1FF0F0FE2FF0B0BE0FF
          0303DAFF0000D6FF0000D4FF4242CBFFE9E9D5FFFFFFFBFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFFFFFFF9FF4949DEFF0000C6FF0000CCFF0101CDFF
          0606CFFF0707CFFF0606C9FF0505C3FF0505B7FF0606ADFF0707B8FF010113E2
          0000004F0C0CCDCE1313CFFF1212D7FF1313E1FF1313E9FF1313ECFF0C0CE7FF
          0000E0FF0000DCFF3F3FCDFFEAEAD2FFFFFFF6FFFFFFFFFFFFFFFFFFFFFFF5FF
          FFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4343DCFF0000CAFF0000D2FF
          0606D4FF0A0AD3FF0808CEFF0808C6FF0707BBFF0808B4FF0606B3FF01010ED4
          000000410909D7A41515D4FF1717E0FF1818E9FF1A1AF2FF1A1AF5FF0E0EF3FF
          0000EBFF4848D2FFECECD0FFFFFFF5FFFFFFFFFFFFFFFFFFEEEED6FF8585BBFF
          8787ADFFDDDDC5FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF4E4EE2FF0000D2FF
          0505DBFF0C0CD9FF0B0BD3FF0A0ACAFF0A0ABEFF0B0BBCFF0606A5FF000004B1
          000000200608DE751919D6FF1C1CE6FF1E1EF2FF2121FCFF1E1EFFFF0606FFFF
          4D4DE0FFE6E6CBFFFFFFF4FFFFFFFFFFFFFFFFFFEAEACAFF7B7BA3FF0000D9FF
          0000D4FF737389FFCBCBABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4FEEFF
          0000E4FF0B0BE1FF0D0DDAFF0C0CCEFF0C0CC2FF0F0FC7FF060690FF00000085
          000000050000E6221717DCFF2222E9FF2626F9FF2727FFFF2424FFFF5E5ED6FF
          DFDFC0FFFFFFF5FFFFFFFFFFFFFFFFFFDFDFC2FF72729BFF0000DDFF0000E8FF
          0000E9FF0000D1FF605F7AFFC2C2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFF
          5656DFFF0606E8FF1010E0FF1111D4FF0F0FC7FF0E0ECEFF020253E200000047
          00000000000000001010E3D92424ECFF2D2DFFFF3131FFFF2F2FFFFF7C7C9FFF
          D8D8B2FFFFFFFFFFFFFFFFFFE1E1C0FF696996FF0000E0FF0000E9FF0000E6FF
          0000E4FF0000ECFF0000D4FF595971FFBEBE9DFFFFFFFFFFFFFFFDFFD6D6A6FF
          7272BFFF1010F6FF1616E4FF1515D6FF1313CFFF0D0DC5FF000021A200000012
          00000000000000000607E85C2121EDFF3030FFFF3C3CFFFF3E3EFFFF3B3BF8FF
          71719AFFD8D8BDFFD9D9BAFF6C6C99FF0000F1FF0000F6FF0000E9FF0000E6FF
          0000E7FF0000E8FF0000F5FF0000DEFF565674FFBBBB98FFC1C19BFF5F5FA8FF
          1717FFFF1919FAFF1C1CE7FF1919D9FF1515DBFF05058CF20000004300000000
          0000000000000000000000001313EED32E2EFDFF4040FFFF4B4BFFFF4F4FFFFF
          4C4CFBFF696981FF6B6B80FF2525FBFF1212FFFF0D0DFFFF0707FAFF0404F3FF
          0505F2FF0606F5FF0A0AFCFF0C0CFFFF1A1AF4FF606067FF5B5B8FFF2323FFFF
          2626FFFF2727FBFF2222E9FF1D1DE0FF1010D2FF000025880000000800000000
          0000000000000000000000000202F1352020F8FF3B3BFFFF4D4DFFFF5C5CFFFF
          6666FFFF6464FCFF5F5FF7FF5555FFFF4343FFFF3131FFFF2121FFFF1919FFFF
          1818FFFF1C1CFFFF2525FFFF3131FFFF3737FFFF3D3DF6FF3939FEFF3535FFFF
          3333FFFF2C2CFAFF2525EAFF1A1AE8FF030380C1000000170000000000000000
          000000000000000000000000000000000909F3712B2BFEFF4646FFFF5D5DFFFF
          6E6EFFFF7B7BFFFF8080FFFF8181FFFF7575FFFF6767FFFF5555FFFF4949FFFF
          4646FFFF4848FFFF4E4EFFFF5454FFFF5757FFFF5050FFFF4949FFFF4040FFFF
          3838FFFF2D2DF6FF2020F6FF0808B6DF00000423000000000000000000000000
          00000000000000000000000000000000000000000D0EF6902F2FFFFF4D4DFFFF
          6666FFFF7C7CFFFF8B8BFFFF9494FFFF9696FFFF9191FFFF8A8AFFFF7E7EFFFF
          7878FFFF7373FFFF7171FFFF6C6CFFFF6464FFFF5B5BFFFF5050FFFF4343FFFF
          3636FFFF2626FFFF0D0ECCE30000072800000000000000000000000000000000
          0000000000000000000000000000000000000000000000000A0AF8782B2BFDFF
          4E4EFFFF6868FFFF7F7FFFFF9292FFFFA0A0FFFFA5A5FFFFA7A7FFFFA2A2FFFF
          9999FFFF8E8EFFFF8282FFFF7575FFFF6868FFFF5959FFFF4B4BFFFF3A3AFFFF
          2727FFFF0B0BCEC600000A150000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000001F841
          2121FCDD4545FFFF6262FFFF7979FFFF8C8CFFFF9B9BFFFFA4A4FFFFA3A3FFFF
          9B9BFFFF8E8EFFFF7E7EFFFF6C6CFFFF5D5DFFFF4B4BFFFF3838FFFF1F1FEFFF
          0405B77D00000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000708F96B2827FDE24646FEFF6464FFFF7474FFFF8080FFFF8484FFFF
          7E7EFFFF7373FFFF6363FFFF5353FFFF3F3FFEFF2323FAF40C0CE69800007B1C
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000A0AF9321415F9802727F9B03C3CFBD84949FFF1
          4848FFF53939FCDE2727F9BB1516F88B0608F9480708E4070000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FF8000FFFF00007FFE00001FF800000FF0000007F0000007E0000003
          C0000001C0000001800000018000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000180000001
          80000003C0000003C0000007E000000FF000001FF800003FFC0000FFFF0001FF
          FFC007FF}
        ShowUnicode = False
        ColWidths = (
          20
          116
          104
          133
          112
          115
          95)
        RowHeights = (
          22
          22)
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 729
      Height = 184
      Align = alTop
      Caption = 'Par'#226'metros'
      TabOrder = 1
      object Panel3: TPanel
        Left = 2
        Top = 15
        Width = 725
        Height = 90
        Align = alTop
        BevelWidth = 2
        TabOrder = 0
        object GroupBox3: TGroupBox
          Left = 219
          Top = 2
          Width = 504
          Height = 86
          Align = alClient
          Caption = 'Fornecedor'
          TabOrder = 0
          object chkCliente: TCheckBox
            Left = 8
            Top = 20
            Width = 105
            Height = 13
            Cursor = crHandPoint
            Caption = 'Todos os Fornecedores'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkClienteClick
          end
          object EditClienteNome: TEdit
            Left = 76
            Top = 52
            Width = 246
            Height = 21
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '***'
          end
          object EditFornecedor: TIDBEditDialog
            Left = 8
            Top = 52
            Width = 65
            Height = 21
            HelpKeyWord = ''
            Color = clWindow
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = ''
            Visible = True
            OnChange = EditFornecedorChange
            EditType = etAlphaNumeric
            EmptyText = 'Tecle F8'
            FocusColor = clBtnFace
            LabelCaption = 'Fornecedor:'
            LabelAlwaysEnabled = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'C'#243'digo do Cliente'
            Etched = False
            ButtonCaption = '...'
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditClienteNome
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT CODIGO, NOME FROM CAD_CLIENTES'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM VIEW_CLIENTES'
              'WHERE'
              'TIPO <>'#39'CLIENTE'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#243'digo'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'NOME:'
                DisplayWidth = 90
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 2
          Width = 217
          Height = 86
          Align = alLeft
          Caption = 'Vencimento dos Titulos'
          TabOrder = 1
          object Label4: TLabel
            Left = 110
            Top = 39
            Width = 17
            Height = 13
            Caption = 'At'#233
          end
          object Label3: TLabel
            Left = 10
            Top = 39
            Width = 13
            Height = 13
            Caption = 'De'
          end
          object MskDataFim: TMaskEdit
            Left = 133
            Top = 35
            Width = 69
            Height = 21
            EditMask = '99/99/9999'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 1
            Text = '  /  /    '
            OnChange = MskDataFimChange
            OnExit = MskDataFimExit
          end
          object MskDataIni: TMaskEdit
            Left = 29
            Top = 35
            Width = 70
            Height = 21
            EditMask = '99/99/9999'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
            OnChange = MskDataIniChange
            OnExit = MskDataIniExit
          end
        end
      end
      object GroupBox5: TGroupBox
        Left = 2
        Top = 105
        Width = 725
        Height = 65
        Align = alTop
        Caption = 'Motivo de Baixa'
        TabOrder = 1
        object Edit1: TEdit
          Left = 90
          Top = 36
          Width = 202
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '***'
        end
        object EditMotivoBaixa: TIDBEditDialog
          Left = 8
          Top = 36
          Width = 80
          Height = 21
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '0'
          Visible = True
          EditType = etNumeric
          FocusColor = clBtnFace
          LabelCaption = 'Motivo de Baixa'
          LabelAlwaysEnabled = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          Version = '5.0.0.0'
          ButtonStyle = bsButton
          ButtonWidth = 16
          ButtonHint = 'Procurar...'
          Etched = False
          ButtonCaption = '...'
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit1
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'TIPO='#39'CLIENTE'#39
            'AND'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_MOTIVOBAIXA'
            'WHERE'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'CODIGO'
              WhereSyntax = 'CODIGO'
              DisplayLabel = 'C'#211'DIGO:'
              DisplayWidth = 10
              DisplayColumnWidth = 0
              FieldType = ftInteger
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scUpper
            end
            item
              FieldName = 'NOME'
              WhereSyntax = 'NOME'
              DisplayLabel = 'Nome:'
              DisplayWidth = 80
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scContains
              SearchCase = scUpper
            end>
          SearchPresetList = <>
          DialogCaption = 'Pesquisa'
          DialogWidth = 0
          DialogHeight = 0
          Store = dsFields
          CompareFormatDate = 'DDMMYYYY'
          CompareFormatTime = 'HHMMSS'
          CompareFormatDateTime = 'DDMMYYYY'
          TrueExpression = '1=1'
          DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
          ConnectionDialog = FrmPrincipal.DBConexao
          Connection = FrmPrincipal.DBConexao
        end
        object Edit2: TEdit
          Left = 381
          Top = 36
          Width = 332
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = '***'
        end
        object EditContaCorrente: TIDBEditDialog
          Left = 297
          Top = 36
          Width = 78
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 2
          Text = '0'
          Visible = True
          EditType = etNumeric
          EmptyText = 'F8 - Pesquisar'
          LabelCaption = 'Conta Banc'#225'ria'
          LabelAlwaysEnabled = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          Version = '5.0.0.0'
          ButtonStyle = bsButton
          ButtonWidth = 16
          ButtonHint = 'Procurar...'
          Etched = False
          ButtonCaption = '...'
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit2
          SQLdbCampoRetorno = 'DADOS_CONTA'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT DADOS_CONTA   FROM VIEW_CONTA_CORRENTE_DADOS'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM VIEW_CONTA_CORRENTE_DADOS'
            'WHERE'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'DADOS_CONTA'
              WhereSyntax = 'DADOS_CONTA'
              DisplayLabel = 'CONTA CORRENTE:'
              DisplayWidth = 100
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scBeginsWith
              SearchCase = scMixed
            end>
          SearchPresetList = <>
          DialogCaption = 'Pesquisa'
          DialogWidth = 0
          DialogHeight = 0
          Store = dsFields
          CompareFormatDate = 'DDMMYYYY'
          CompareFormatTime = 'HHMMSS'
          CompareFormatDateTime = 'DDMMYYYY'
          TrueExpression = '1=1'
          DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
          ConnectionDialog = FrmPrincipal.DBConexao
          Connection = FrmPrincipal.DBConexao
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 555
    Width = 731
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 132
      Top = 6
      Width = 125
      Height = 25
      Caption = 'Baixar/Substituir...'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 273
      Top = 6
      Width = 90
      Height = 25
      Caption = 'Cancelar/Sair'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object btnCheque: TButton
      Left = 15
      Top = 6
      Width = 113
      Height = 25
      Caption = 'Informar Cheques...'
      TabOrder = 0
      OnClick = btnChequeClick
    end
  end
  object GroupBox7: TGroupBox
    Left = 0
    Top = 501
    Width = 731
    Height = 54
    Align = alBottom
    Caption = 'Calculo:'
    Enabled = False
    TabOrder = 3
    object Image1: TImage
      Left = 2
      Top = 15
      Width = 727
      Height = 37
      Align = alClient
      Picture.Data = {
        0A544A504547496D616765CA070000FFD8FFE000104A46494600010101006000
        600000FFDB004300020101020101020202020202020203050303030303060404
        0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
        0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080023016803012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F30F
        ED0FF68FE747F687FB47F3AC3FED0F7A3FB43DEBFD35F667F9BDF55373FB43FD
        A3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE747F687F
        B47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B4
        3DE8FED0F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F6
        61F55373FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF
        0068FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1F
        ED1FCEB0FF00B43DE8FED0F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED
        0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D
        987D54DCFED0FF0068FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB4
        3FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0F7A3D987D54DCFED0FF68FE747F6
        87FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FFB
        43DE8FED0F7A3D987D54DCFED0FF0068FE747F687FB47F3AC3FED0F7A3FB43DE
        8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0F7A3D987D54DCF
        ED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FD
        A1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE747F687FB47F3AC3
        FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0
        F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373
        FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE74
        561FF687BD147B30FAA989FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD77FB2
        3E8BEAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A2B13FB43DE8A3D907D54C9F31BD4D1E637A9A28AE83D70F31BD4D1E637A9A
        28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2
        800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A00
        3CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F3
        1BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F
        534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D
        1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F53479
        8DEA68A2800F31BD4D1E637A9A28A003CC6F5345145007FFD9}
      Stretch = True
      ExplicitTop = 13
      ExplicitWidth = 741
      ExplicitHeight = 59
    end
    object lblTotais: TLabel
      Left = 2
      Top = 15
      Width = 727
      Height = 37
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'R$ 0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitLeft = 11
      ExplicitTop = 23
      ExplicitWidth = 196
      ExplicitHeight = 23
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 484
    Width = 731
    Height = 17
    Align = alBottom
    TabOrder = 4
  end
  object db_Somar: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT COUNT(*) AS REGISTROS , SUM(VALOR) AS VALORTOTAL FROM FIN' +
        '_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      '-- AND'
      '--FIN_CTAPAGAR.QUITADO='#39'N'#39
      'AND'
      'FIN_CTAPAGAR.FORNECEDOR BETWEEN :CL_INICIAL AND :CL_FINAL'
      'AND'
      'FIN_CTAPAGAR.VENCIMENTO BETWEEN :DATA1 AND :DATA2'
      'AND'
      'FIN_CTAPAGAR.SELECIONADO='#39'S'#39)
    MasterSource = ds_ctaPagar
    Left = 328
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'CL_INICIAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'CL_FINAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DATA1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DATA2'
        ParamType = ptInput
        Value = nil
      end>
  end
  object ds_ctaPagar: TDataSource
    DataSet = db_ctaPagar
    Left = 147
    Top = 416
  end
  object db_ctaPagar: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM FIN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      '--FIN_CTAPAGAR.QUITADO='#39'N'#39
      '--AND'
      'FIN_CTAPAGAR.FORNECEDOR BETWEEN :CL_INICIAL AND :CL_FINAL'
      'AND'
      'FIN_CTAPAGAR.VENCIMENTO BETWEEN :DATA1 AND :DATA2')
    AfterPost = db_ctaPagarAfterPost
    Left = 147
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'CL_INICIAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'CL_FINAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DATA1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DATA2'
        ParamType = ptInput
        Value = nil
      end>
    object db_ctaPagarEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_ctaPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_ctaPagarFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object db_ctaPagarFORNECEDOR_NOME: TStringField
      FieldName = 'FORNECEDOR_NOME'
      Size = 200
    end
    object db_ctaPagarNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_ctaPagarSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_ctaPagarDATA: TDateTimeField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_ctaPagarVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_ctaPagarDATA_PAGTO: TDateTimeField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_ctaPagarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      Size = 30
    end
    object db_ctaPagarREMESSA: TIntegerField
      FieldName = 'REMESSA'
    end
    object db_ctaPagarPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_ctaPagarCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_ctaPagarESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_ctaPagarTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_ctaPagarVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ctaPagarVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ctaPagarVALOR_SALDO: TFloatField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ctaPagarCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
    end
    object db_ctaPagarCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_ctaPagarCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_ctaPagarCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_ctaPagarCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_ctaPagarCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_ctaPagarCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_ctaPagarCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_ctaPagarFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_ctaPagarDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_ctaPagarDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object db_ctaPagarDESCONTOVALOR: TFloatField
      FieldName = 'DESCONTOVALOR'
    end
    object db_ctaPagarPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 200
    end
    object db_ctaPagarCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_ctaPagarHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_ctaPagarOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_ctaPagarGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_ctaPagarNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_ctaPagarDESPESAS_BOLETO: TFloatField
      FieldName = 'DESPESAS_BOLETO'
    end
    object db_ctaPagarDESPESAS_JUROS: TFloatField
      FieldName = 'DESPESAS_JUROS'
    end
    object db_ctaPagarDESPESAS_JUROSVALOR: TFloatField
      FieldName = 'DESPESAS_JUROSVALOR'
    end
    object db_ctaPagarDESPESAS_MULTA: TFloatField
      FieldName = 'DESPESAS_MULTA'
    end
    object db_ctaPagarDESPESAS_CARTORIO: TFloatField
      FieldName = 'DESPESAS_CARTORIO'
    end
    object db_ctaPagarDESPESAS_TOTAL: TFloatField
      FieldName = 'DESPESAS_TOTAL'
    end
    object db_ctaPagarATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_ctaPagarQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_ctaPagarMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_ctaPagarUSER_NOME: TStringField
      FieldName = 'USER_NOME'
      Size = 200
    end
    object db_ctaPagarUSER_DATA: TDateTimeField
      FieldName = 'USER_DATA'
    end
    object db_ctaPagarUSER_HORA: TTimeField
      FieldName = 'USER_HORA'
    end
    object db_ctaPagarCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
    object db_ctaPagarCHECADO: TStringField
      FieldName = 'CHECADO'
      Size = 10
    end
    object db_ctaPagarPAGTOTERCEIRIZADO: TStringField
      FieldName = 'PAGTOTERCEIRIZADO'
      Size = 10
    end
    object db_ctaPagarPROTESTOSTATUS: TStringField
      FieldName = 'PROTESTOSTATUS'
      Size = 30
    end
    object db_ctaPagarSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 30
    end
    object db_ctaPagarCHQ_NUMEROCHEQUE: TStringField
      FieldName = 'CHQ_NUMEROCHEQUE'
      Size = 30
    end
    object db_ctaPagarPAGAMENTOTITULO: TStringField
      FieldName = 'PAGAMENTOTITULO'
      Size = 30
    end
  end
end
