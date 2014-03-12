object FrmRelatorioProducao: TFrmRelatorioProducao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Produ'#231#227'o'
  ClientHeight = 568
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopUpBarraBotoesImprimir
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PainelPrincipal: TPanel
    Left = 0
    Top = 44
    Width = 983
    Height = 478
    Align = alClient
    BevelWidth = 2
    ParentBackground = False
    TabOrder = 0
    object PainelParametros: TPanel
      Left = 2
      Top = 2
      Width = 979
      Height = 191
      Align = alTop
      BevelInner = bvLowered
      BorderWidth = 3
      ParentBackground = False
      TabOrder = 0
      object Panel3: TPanel
        Left = 5
        Top = 84
        Width = 969
        Height = 102
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 3
        object GroupBox_Colecao: TGroupBox
          AlignWithMargins = True
          Left = 510
          Top = 5
          Width = 243
          Height = 92
          Align = alLeft
          Caption = '&Cole'#231#227'o'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object chk_Colecao: TCheckBox
            Left = 5
            Top = 20
            Width = 156
            Height = 13
            Cursor = crHandPoint
            Caption = 'Todas as Cole'#231#245'es'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chk_ColecaoClick
          end
          object PainelColecao: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 42
            Width = 233
            Height = 45
            Align = alBottom
            Enabled = False
            TabOrder = 1
            object Edit1: TEdit
              Left = 76
              Top = 18
              Width = 124
              Height = 21
              Color = clBtnFace
              ReadOnly = True
              TabOrder = 1
              Text = '***'
            end
            object EditColecao: TIDBEditDialog
              Left = 8
              Top = 18
              Width = 65
              Height = 21
              Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              ShowHint = True
              TabOrder = 0
              Text = '0'
              Visible = True
              EditType = etNumeric
              LabelCaption = 'Cole'#231#227'o:'
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
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT NOME FROM CAD_COLECAO'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_COLECAO'
                'WHERE'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(*) FROM CAD_COLECAO'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'Nome:'
                  DisplayWidth = 25
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'PERIODO_INI'
                  WhereSyntax = 'PERIODO_INI'
                  DisplayLabel = 'Periodo de:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftDate
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
                item
                  FieldName = 'PERIODO_FIM'
                  WhereSyntax = 'PERIODO_FIM'
                  DisplayLabel = 'Periodo at'#233':'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftDate
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
                item
                  FieldName = 'PECAS_META'
                  WhereSyntax = 'PECAS_META'
                  DisplayLabel = 'Produ'#231#227'o Estimada:'
                  DisplayFormat = '###,##0'
                  DisplayWidth = 18
                  DisplayColumnWidth = 0
                  FieldType = ftFloat
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
                item
                  FieldName = 'STATUS'
                  WhereSyntax = 'STATUS'
                  DisplayLabel = 'Ativa'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#243'digo:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
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
        object GroupBox_Grife: TGroupBox
          AlignWithMargins = True
          Left = 279
          Top = 5
          Width = 225
          Height = 92
          Align = alLeft
          Caption = '&Grife'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object chk_Grife: TCheckBox
            Left = 5
            Top = 20
            Width = 164
            Height = 13
            Cursor = crHandPoint
            Caption = 'Todas as Grifes'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chk_GrifeClick
          end
          object PainelGrife: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 42
            Width = 215
            Height = 45
            Align = alBottom
            Enabled = False
            TabOrder = 1
            object Edit2: TEdit
              Left = 58
              Top = 18
              Width = 150
              Height = 21
              Color = clBtnFace
              ReadOnly = True
              TabOrder = 1
              Text = '***'
            end
            object EditGrife: TIDBEditDialog
              Left = 7
              Top = 18
              Width = 49
              Height = 21
              Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              ShowHint = True
              TabOrder = 0
              Text = '0'
              Visible = True
              EditType = etNumeric
              LabelCaption = 'Grife'
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
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT NOME FROM CAD_GRIFES'
                'WHERE'
                'CODIGO=:CODIGO')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT *  FROM CAD_GRIFES'
                'WHERE'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(CODIGO) FROM CAD_GRIFES'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
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
                end
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#243'digo:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
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
        object GroupBox_OP_Produtos: TGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 268
          Height = 92
          Align = alLeft
          Caption = '&Refer'#234'ncias'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object chk_Referencia: TCheckBox
            Left = 3
            Top = 20
            Width = 112
            Height = 13
            Cursor = crHandPoint
            Hint = 'Rastrear todos os produtos'
            Caption = 'Todos os produtos'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            State = cbChecked
            TabOrder = 0
            OnClick = chk_ReferenciaClick
          end
          object PainelProdutos: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 42
            Width = 258
            Height = 45
            Align = alBottom
            Enabled = False
            TabOrder = 1
            object EditProdutoB: TIDBEditDialog
              Left = 133
              Top = 18
              Width = 120
              Height = 19
              HelpKeyWord = ''
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = ''
              Visible = True
              FocusColor = clBtnFace
              LabelCaption = 'At'#233':'
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
              SQLdbCampoRetorno = 'DESCRICAO'
              SQLdbRetornoVazio = ' *** '
              SQLdbCampoParametro = 'REFERENCIA'
              SQLdbSQL.Strings = (
                ''
                'SELECT * FROM CAD_PRODUTOS'
                'WHERE'
                'TIPO_PRODUTO='#39'ACA'#39
                'AND'
                'REFERENCIA=:REFERENCIA')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_PRODUTOS'
                'WHERE'
                'TIPO_PRODUTO='#39'ACA'#39
                'AND'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(*) FROM CAD_PRODUTOS'
                'WHERE'
                'TIPO_PRODUTO='#39'ACA'#39
                'AND'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'REFERENCIA'
                  WhereSyntax = 'REFERENCIA'
                  DisplayLabel = 'Refer'#234'ncia:'
                  DisplayWidth = 20
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'DESCRICAO'
                  WhereSyntax = 'DESCRICAO'
                  DisplayLabel = 'Descri'#231#227'o'
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
            object EditProdutoA: TIDBEditDialog
              Left = 5
              Top = 18
              Width = 120
              Height = 19
              HelpKeyWord = ''
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = ''
              Visible = True
              FocusColor = clBtnFace
              LabelCaption = 'De:'
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
              SQLdbCampoRetorno = 'DESCRICAO'
              SQLdbRetornoVazio = ' *** '
              SQLdbCampoParametro = 'REFERENCIA'
              SQLdbSQL.Strings = (
                ''
                'SELECT * FROM CAD_PRODUTOS'
                'WHERE'
                'TIPO_PRODUTO='#39'ACA'#39
                'AND'
                'REFERENCIA=:REFERENCIA')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_PRODUTOS'
                'WHERE'
                'TIPO_PRODUTO='#39'ACA'#39
                'AND'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(*) FROM CAD_PRODUTOS'
                'WHERE'
                'TIPO_PRODUTO='#39'ACA'#39
                'AND'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'REFERENCIA'
                  WhereSyntax = 'REFERENCIA'
                  DisplayLabel = 'Refer'#234'ncia:'
                  DisplayWidth = 20
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'DESCRICAO'
                  WhereSyntax = 'DESCRICAO'
                  DisplayLabel = 'Descri'#231#227'o'
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
          end
        end
        object GroupBox_Fase: TGroupBox
          AlignWithMargins = True
          Left = 721
          Top = 5
          Width = 243
          Height = 92
          Align = alRight
          Caption = '&Fase de Produ'#231#227'o'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          object chk_Fase: TCheckBox
            Left = 5
            Top = 20
            Width = 156
            Height = 13
            Cursor = crHandPoint
            Caption = 'Todas as Fases'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chk_FaseClick
          end
          object PainelFase: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 42
            Width = 233
            Height = 45
            Align = alBottom
            Enabled = False
            TabOrder = 1
            object EditFase1: TIDBEditDialog
              Left = 7
              Top = 17
              Width = 70
              Height = 23
              Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ShowHint = True
              TabOrder = 0
              Text = '0'
              Visible = True
              LabelCaption = 'De:'
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
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_FASES'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_FASES'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#211'DIGO:'
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
            object EditFase2: TIDBEditDialog
              Left = 106
              Top = 17
              Width = 70
              Height = 23
              Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ShowHint = True
              TabOrder = 1
              Text = '0'
              Visible = True
              LabelCaption = 'At'#233':'
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
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_FASES'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_FASES'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#211'DIGO:'
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
        end
      end
      object GRPPeriodo: TGroupBox
        AlignWithMargins = True
        Left = 8
        Top = 8
        Width = 188
        Height = 73
        Cursor = crHandPoint
        Align = alLeft
        Caption = '&Periodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 5
          Top = 32
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label4: TLabel
          Left = 96
          Top = 32
          Width = 16
          Height = 13
          Caption = 'At'#233
        end
        object MskDataFim: TMaskEdit
          Left = 115
          Top = 29
          Width = 67
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
          Text = '31/12/2014'
        end
        object MskDataIni: TMaskEdit
          Left = 24
          Top = 29
          Width = 68
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
          Text = '01/01/2014'
        end
      end
      object RadioData_OP: TRadioGroup
        Left = 199
        Top = 5
        Width = 103
        Height = 79
        Align = alLeft
        Caption = '&Aplicar periodo a:'
        ItemIndex = 0
        Items.Strings = (
          'Data da OP'
          'Previs'#227'o de Encerramento'
          'Fim da OP')
        TabOrder = 1
      end
      object RadioGroup_Estagio: TRadioGroup
        AlignWithMargins = True
        Left = 305
        Top = 8
        Width = 114
        Height = 73
        Align = alLeft
        Caption = '&Est'#225'gio de Produ'#231#227'o'
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Aberta'
          'Encerrada')
        TabOrder = 2
      end
      object GroupBox_OP_Lote: TGroupBox
        AlignWithMargins = True
        Left = 425
        Top = 8
        Width = 251
        Height = 73
        Align = alLeft
        Caption = '&Ordem de Produ'#231#227'o'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        object chk_OP: TCheckBox
          Left = 3
          Top = 14
          Width = 96
          Height = 13
          Cursor = crHandPoint
          Hint = 'Todas as ordens de produ'#231#245'es (lotes)'
          Caption = 'Todas as OP'#180's'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 0
          OnClick = chk_OPClick
        end
        object Painel_OP: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 28
          Width = 188
          Height = 43
          Enabled = False
          TabOrder = 1
          object Edit_OP1: TIDBEditDialog
            Left = 7
            Top = 18
            Width = 80
            Height = 21
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            MaxLength = 30
            TabOrder = 0
            Text = ''
            Visible = True
            LabelCaption = 'De:'
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
            SQLdbCampoRetorno = 'CODIGO'
            SQLdbRetornoVazio = ' *** '
            SQLdbCampoParametro = 'CODIGO'
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT *  FROM VIEW_ORDEMPRODUCAO'
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
                SearchCase = scMixed
              end
              item
                FieldName = 'LOTE'
                WhereSyntax = 'LOTE'
                DisplayLabel = 'LOTE:'
                DisplayWidth = 8
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DATA'
                WhereSyntax = 'DATA'
                DisplayLabel = 'DATA:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftDateTime
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DATAFECHAMENTO'
                WhereSyntax = 'DATAFECHAMENTO'
                DisplayLabel = 'FECHAMENTO:'
                DisplayWidth = 13
                DisplayColumnWidth = 0
                FieldType = ftDateTime
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'NATUREZA'
                WhereSyntax = 'NATUREZA'
                DisplayLabel = 'NATUREZA:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'QTDE_TOTAL'
                WhereSyntax = 'QTDE_TOTAL'
                DisplayLabel = 'PRODUZIR:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'QTDE_PRODUZIDA'
                WhereSyntax = 'QTDE_PRODUZIDA'
                DisplayLabel = 'PRODUZIDA:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'QTDE_RESTANTE'
                WhereSyntax = 'QTDE_RESTANTE'
                DisplayLabel = 'RESTANTE:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'QTDE_PERDAS'
                WhereSyntax = 'QTDE_PERDAS'
                DisplayLabel = 'PERDAS:'
                DisplayWidth = 8
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'QTDE_DEFEITOS'
                WhereSyntax = 'QTDE_DEFEITOS'
                DisplayLabel = 'DEFEITOS:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'TEMPO_PRODUCAO'
                WhereSyntax = 'TEMPO_PRODUCAO'
                DisplayLabel = 'TEMPO:'
                DisplayWidth = 7
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'PERCENTUAL'
                WhereSyntax = 'PERCENTUAL'
                DisplayLabel = 'CONCLUIDO:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'AUTORIZADO'
                WhereSyntax = 'AUTORIZADO'
                DisplayLabel = 'AUTORIZADO:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'STATUS'
                WhereSyntax = 'STATUS'
                DisplayLabel = 'STATUS:'
                DisplayWidth = 8
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'ENCERRADO'
                WhereSyntax = 'ENCERRADO'
                DisplayLabel = 'ENCERRADO:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 1000
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            Connection = FrmPrincipal.DBConexao
          end
          object Edit_OP2: TIDBEditDialog
            Left = 103
            Top = 18
            Width = 80
            Height = 21
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            MaxLength = 30
            TabOrder = 1
            Text = ''
            Visible = True
            LabelCaption = 'At'#233':'
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
            SQLdbCampoRetorno = 'CODIGO'
            SQLdbRetornoVazio = ' *** '
            SQLdbCampoParametro = 'CODIGO'
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT *  FROM VIEW_ORDEMPRODUCAO'
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
                SearchCase = scMixed
              end
              item
                FieldName = 'LOTE'
                WhereSyntax = 'LOTE'
                DisplayLabel = 'LOTE:'
                DisplayWidth = 8
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DATA'
                WhereSyntax = 'DATA'
                DisplayLabel = 'DATA:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftDateTime
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DATAFECHAMENTO'
                WhereSyntax = 'DATAFECHAMENTO'
                DisplayLabel = 'FECHAMENTO:'
                DisplayWidth = 13
                DisplayColumnWidth = 0
                FieldType = ftDateTime
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'NATUREZA'
                WhereSyntax = 'NATUREZA'
                DisplayLabel = 'NATUREZA:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'QTDE_TOTAL'
                WhereSyntax = 'QTDE_TOTAL'
                DisplayLabel = 'PRODUZIR:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'QTDE_PRODUZIDA'
                WhereSyntax = 'QTDE_PRODUZIDA'
                DisplayLabel = 'PRODUZIDA:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'QTDE_RESTANTE'
                WhereSyntax = 'QTDE_RESTANTE'
                DisplayLabel = 'RESTANTE:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'QTDE_PERDAS'
                WhereSyntax = 'QTDE_PERDAS'
                DisplayLabel = 'PERDAS:'
                DisplayWidth = 8
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'QTDE_DEFEITOS'
                WhereSyntax = 'QTDE_DEFEITOS'
                DisplayLabel = 'DEFEITOS:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'TEMPO_PRODUCAO'
                WhereSyntax = 'TEMPO_PRODUCAO'
                DisplayLabel = 'TEMPO:'
                DisplayWidth = 7
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'PERCENTUAL'
                WhereSyntax = 'PERCENTUAL'
                DisplayLabel = 'CONCLUIDO:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'AUTORIZADO'
                WhereSyntax = 'AUTORIZADO'
                DisplayLabel = 'AUTORIZADO:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'STATUS'
                WhereSyntax = 'STATUS'
                DisplayLabel = 'STATUS:'
                DisplayWidth = 8
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'ENCERRADO'
                WhereSyntax = 'ENCERRADO'
                DisplayLabel = 'ENCERRADO:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 1000
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            Connection = FrmPrincipal.DBConexao
          end
        end
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 682
        Top = 8
        Width = 312
        Height = 73
        Align = alLeft
        Caption = 'Lote de Produ'#231#227'o'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        object chklote: TCheckBox
          Left = 4
          Top = 13
          Width = 96
          Height = 13
          Cursor = crHandPoint
          Hint = 'Todas as ordens de produ'#231#245'es (lotes)'
          Caption = 'Todas as OP'#180's'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkloteClick
        end
        object Painel_Lote: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 27
          Width = 181
          Height = 43
          Enabled = False
          TabOrder = 1
          object Edit_lote1: TIDBEditDialog
            Left = 6
            Top = 18
            Width = 75
            Height = 21
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            ShowHint = True
            TabOrder = 0
            Text = ''
            Visible = True
            LabelCaption = 'De:'
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
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT NOME FROM CAD_COLECAO'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_LOTEPRODUCAO'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#243'digo:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
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
              end
              item
                FieldName = 'STATUS'
                WhereSyntax = 'STATUS'
                DisplayLabel = 'Ativa'
                DisplayWidth = 10
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
          object Edit_lote2: TIDBEditDialog
            Left = 98
            Top = 18
            Width = 75
            Height = 21
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            ShowHint = True
            TabOrder = 1
            Text = ''
            Visible = True
            LabelCaption = 'At'#233':'
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
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT NOME FROM CAD_COLECAO'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_LOTEPRODUCAO'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#243'digo:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
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
              end
              item
                FieldName = 'STATUS'
                WhereSyntax = 'STATUS'
                DisplayLabel = 'Ativa'
                DisplayWidth = 10
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
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 193
      Width = 979
      Height = 283
      Align = alClient
      TabOrder = 1
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 301
        Height = 281
        Align = alLeft
        TabOrder = 0
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 291
          Height = 92
          Align = alTop
          Caption = '&Defeito'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object chkdefeitos: TCheckBox
            Left = 12
            Top = 20
            Width = 156
            Height = 13
            Cursor = crHandPoint
            Caption = 'Todas os defeitos'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkdefeitosClick
          end
          object PainelDefeitos: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 42
            Width = 281
            Height = 45
            Align = alBottom
            Enabled = False
            TabOrder = 1
            object EditDefeito: TIDBEditDialog
              Left = 7
              Top = 17
              Width = 70
              Height = 23
              Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ShowHint = True
              TabOrder = 0
              Text = '0'
              Visible = True
              LabelCaption = 'Defeito'
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
              SQLdbFocusControl = Edit3
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_DEFEITOS'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_DEFEITOS'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#211'DIGO:'
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
            object Edit3: TEdit
              Left = 79
              Top = 17
              Width = 147
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object GroupBox4: TGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 116
          Width = 291
          Height = 92
          Align = alTop
          Caption = '&Perdas'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object chkperdas: TCheckBox
            Left = 12
            Top = 20
            Width = 156
            Height = 13
            Cursor = crHandPoint
            Caption = 'Todas as perdas'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkperdasClick
          end
          object PainelPerdas: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 42
            Width = 281
            Height = 45
            Align = alBottom
            Enabled = False
            TabOrder = 1
            object EditPerda: TIDBEditDialog
              Left = 7
              Top = 17
              Width = 70
              Height = 23
              Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ShowHint = True
              TabOrder = 0
              Text = '0'
              Visible = True
              LabelCaption = 'Perda'
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
              SQLdbFocusControl = Edit4
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_DEFEITOS'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_DEFEITOS'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#211'DIGO:'
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
            object Edit4: TEdit
              Left = 79
              Top = 17
              Width = 147
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object GroupBox5: TGroupBox
          Left = 2
          Top = 211
          Width = 297
          Height = 61
          Align = alTop
          Caption = 'Controle de Qualidade'
          TabOrder = 2
          object EditQualidade: TIDBEditDialog
            Left = 68
            Top = 30
            Width = 83
            Height = 23
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ShowHint = True
            TabOrder = 0
            Text = '0'
            Visible = True
            LabelCaption = 'Controle de Qualidade:'
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
            SQLdbFocusControl = Edit5
            SQLdbCampoRetorno = 'DESCRICAO'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_QUALIDADES'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_QUALIDADES'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#211'DIGO:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
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
          object Edit5: TEdit
            Left = 152
            Top = 30
            Width = 137
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '***'
          end
          object chkQualidades: TCheckBox
            Left = 14
            Top = 15
            Width = 52
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todas'
            Checked = True
            State = cbChecked
            TabOrder = 2
            OnClick = chkQualidadesClick
          end
        end
      end
      object GroupBox6: TGroupBox
        Left = 744
        Top = 1
        Width = 234
        Height = 281
        Align = alRight
        Caption = 'Subfiltro'
        TabOrder = 1
        object rdgNecessidade: TRadioGroup
          Left = 2
          Top = 15
          Width = 230
          Height = 105
          Align = alTop
          Caption = 'Filtrar por'
          ItemIndex = 0
          Items.Strings = (
            'Pedidos de Vendas'
            'Estoque de Produtos')
          TabOrder = 0
          Visible = False
        end
        object grpTerceirizado: TGroupBox
          Left = 2
          Top = 120
          Width = 230
          Height = 97
          Align = alTop
          Caption = 'Terceirizado'
          TabOrder = 1
          Visible = False
          object EditNomeCliente: TEdit
            Left = 4
            Top = 73
            Width = 219
            Height = 19
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object chkFornecedor: TCheckBox
            Left = 5
            Top = 16
            Width = 57
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todos'
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = chkFornecedorClick
          end
          object EditFornecedor: TIDBEditDialog
            Left = 4
            Top = 52
            Width = 77
            Height = 19
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = ''
            Visible = True
            LabelCaption = 'Terceirizado'
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
            SQLdbFocusControl = EditNomeCliente
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = ' *** '
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              '%WHERE%'
              'AND'
              
                'TIPO IN ('#39'FORNECEDOR'#39','#39'OFICINA'#39','#39'TERCEIRIZADO'#39','#39'TRANSPORTADORA'#39' ' +
                ')')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#243'digo:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'Nome:'
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
      end
      object GroupBox7: TGroupBox
        Left = 302
        Top = 1
        Width = 442
        Height = 281
        Align = alClient
        TabOrder = 2
        object RadioTipo_Relatorio: TRadioGroup
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 432
          Height = 258
          Align = alClient
          Caption = '&Selecione o Relat'#243'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'Listagem de Ordem de Produ'#231#227'o'
            'Necessidade de Produ'#231#227'o'
            'Fichas T'#233'cnicas Cadastradas'
            'Pe'#231'as Produzidas'
            'Estoque Dispon'#237'vel'
            'Localiza'#231#227'o de Fase'
            'Hist'#243'rico de Fase'
            'Necessidade de Produ'#231#227'o (Anal'#237'tico)'
            'Produ'#231#227'o por c'#233'lula (setor)'
            'Perdas na Produ'#231#227'o'
            'Defeitos na produ'#231#227'o'
            'Tempo de produ'#231#227'o'
            'An'#225'lise Geral da Produ'#231#227'o')
          ParentFont = False
          TabOrder = 0
          OnClick = RadioTipo_RelatorioClick
        end
      end
    end
  end
  inline FrameRelatoriosBotoes1: TFrameRelatoriosBotoes
    Left = 0
    Top = 522
    Width = 983
    Height = 46
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 522
    ExplicitWidth = 983
    inherited Panel1: TPanel
      Width = 983
      ExplicitWidth = 983
      inherited SpbImprimir: TBitBtn
        Left = 15
        Top = 3
        Height = 39
        Anchors = [akTop]
        OnClick = FrameRelatoriosBotoes1SpbImprimirClick
        ExplicitLeft = 15
        ExplicitTop = 3
        ExplicitHeight = 39
      end
      inherited SpbSair: TBitBtn
        Left = 97
        Top = 3
        Height = 38
        Anchors = [akTop]
        OnClick = FrameRelatoriosBotoes1SpbSairClick
        ExplicitLeft = 97
        ExplicitTop = 3
        ExplicitHeight = 38
      end
    end
  end
  inline FrameRelatorios1: TFrameRelatorios
    Left = 0
    Top = 0
    Width = 983
    Height = 44
    Align = alTop
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    TabStop = True
    ExplicitWidth = 983
    inherited Image3: TImage
      Width = 983
      ExplicitWidth = 690
    end
    inherited Image2: TImage
      Left = 910
      ExplicitLeft = 617
    end
    inherited LblBarraTitulo: TLabel
      Width = 171
      Caption = 'Relat'#243'rio de Produ'#231#227'o'
      ExplicitWidth = 171
    end
  end
  object frxNecessidade: TfrxReport
    Version = '4.15.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Vestis Sistemas'
    ReportOptions.CreateDate = 39915.896399919000000000
    ReportOptions.Name = 'Necessidade de Produ'#231#227'o'
    ReportOptions.LastChange = 40981.562151446800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   LblParametro.Text  := <rptParametro>;  '
      ' end;'
      ''
      'begin'
      ''
      'end.')
    Left = 929
    Top = 272
    Datasets = <
      item
        DataSet = FRXDB_Necessidade
        DataSetName = 'dbNecessidade'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <
      item
        Name = ' titulorelatorio'
        Value = Null
      end
      item
        Name = 'New Variable1'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Memo1: TfrxMemoView
          Top = 0.472480000000000000
          Width = 550.464750000000000000
          Height = 52.913388270000000000
          ShowHint = False
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Relat'#243'rio - PCP'
            'NECESSIDADE DE PRODU'#199#195'O')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 555.590910000000000000
          Top = 0.472480000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          ShowHint = False
          Color = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo2: TfrxMemoView
          Left = 566.149603860000000000
          Top = 2.362243780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 567.149603860000000000
          Top = 17.102401260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 567.149603860000000000
          Top = 32.220511500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 632.299215040000000000
          Top = 2.362243780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 632.299215040000000000
          Top = 17.102401260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 632.299215040000000000
          Top = 32.220511500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object LblParametro: TfrxMemoView
          Left = 2.779530000000000000
          Top = 35.015770000000000000
          Width = 483.779840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '<>')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 75.590600000000000000
        Top = 336.378170000000000000
        Visible = False
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 139.842610000000000000
        ParentFont = False
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object DBCross2: TfrxDBCrossView
          Align = baClient
          Width = 538.000000000000000000
          Height = 120.000000000000000000
          ShowHint = True
          CellLevels = 7
          ColumnLevels = 0
          DownThenAcross = False
          PlainCells = True
          RowLevels = 4
          CellFields.Strings = (
            'QTDE_FISICO'
            'QTDE_VENDIDO'
            'QTDE_ENTREGUE'
            'QTDE_PENDENTE'
            'QTDE_PRODUZINDO'
            'QTDE_DEMANDA'
            'QTDE_EXCEDENTE')
          DataSet = FRXDB_Necessidade
          DataSetName = 'dbNecessidade'
          RowFields.Strings = (
            'referencia'
            'descricao'
            'cor'
            'tamanho')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2231383422
            20546F703D223138382C3036333038222057696474683D223634222048656967
            68743D22313622205265737472696374696F6E733D223234222053686F774869
            6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            73652220446973706C6179466F726D61742E466F726D61745374723D22232323
            2C2323302220446973706C6179466F726D61742E4B696E643D22666B4E756D65
            7269632220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D382220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223022204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
            546672784D656D6F56696577204C6566743D223234382220546F703D22313838
            2C3036333038222057696474683D22333922204865696768743D223136222052
            65737472696374696F6E733D223234222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C73652220446973706C
            6179466F726D61742E466F726D61745374723D222323232C2323302220446973
            706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E74
            2E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D382220466F6E742E4E616D653D22417269616C204E61
            72726F772220466F6E742E5374796C653D223022204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            52696768742220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D2230222F3E3C546672784D656D6F56
            696577204C6566743D223238372220546F703D223138382C3036333038222057
            696474683D22343522204865696768743D22313622205265737472696374696F
            6E733D223234222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220446973706C6179466F726D61742E
            466F726D61745374723D222323232C2323302220446973706C6179466F726D61
            742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D382220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223333322220546F703D223138382C3036333038222057696474683D22343422
            204865696768743D22313622205265737472696374696F6E733D223234222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220446973706C6179466F726D61742E466F726D6174537472
            3D222323232C2323302220446973706C6179466F726D61742E4B696E643D2266
            6B4E756D657269632220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3022204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686152696768742220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            30222F3E3C546672784D656D6F56696577204C6566743D223337362220546F70
            3D223138382C3036333038222057696474683D22353322204865696768743D22
            313622205265737472696374696F6E733D223234222053686F7748696E743D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            446973706C6179466F726D61742E466F726D61745374723D222323232C232330
            2220446973706C6179466F726D61742E4B696E643D22666B4E756D6572696322
            20466F6E742E436861727365743D22302220466F6E742E436F6C6F723D223022
            20466F6E742E4865696768743D222D382220466F6E742E4E616D653D22417269
            616C204E6172726F772220466F6E742E5374796C653D223022204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686152696768742220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D2230222F3E3C54667278
            4D656D6F56696577204C6566743D223432392220546F703D223138382C303633
            3038222057696474683D22353622204865696768743D22313622205265737472
            696374696F6E733D223234222053686F7748696E743D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C73652220446973706C6179466F
            726D61742E466F726D61745374723D222323232C2323302220446973706C6179
            466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D382220466F6E742E4E616D653D22417269616C204E6172726F77
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            742220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D2230222F3E3C546672784D656D6F5669657720
            4C6566743D223438352220546F703D223138382C303633303822205769647468
            3D22333322204865696768743D22313622205265737472696374696F6E733D22
            3234222053686F7748696E743D2246616C73652220416C6C6F77457870726573
            73696F6E733D2246616C73652220446973706C6179466F726D61742E466F726D
            61745374723D222323232C2323302220446973706C6179466F726D61742E4B69
            6E643D22666B4E756D657269632220466F6E742E436861727365743D22302220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D382220
            466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374
            796C653D223022204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686152696768742220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22302220
            546F703D2230222057696474683D223022204865696768743D22302220526573
            7472696374696F6E733D2238222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            2268615269676874222056416C69676E3D22766143656E746572222054657874
            3D22222F3E3C546672784D656D6F56696577204C6566743D223230302220546F
            703D22313830222057696474683D22353422204865696768743D223239222052
            65737472696374696F6E733D223234222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D2268615269676874222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22323534
            2220546F703D22313830222057696474683D22353322204865696768743D2232
            3922205265737472696374696F6E733D223234222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223330372220546F703D22313538222057696474683D22353422204865696768
            743D22323222205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D2268615269676874222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C
            6566743D223336312220546F703D22313538222057696474683D223533222048
            65696768743D22323222205265737472696374696F6E733D223234222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C736522204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D2268615269676874222056416C69676E3D
            22766143656E7465722220546578743D2230222F3E3C546672784D656D6F5669
            6577204C6566743D223230302220546F703D22313830222057696474683D2235
            3422204865696768743D22323922205265737472696374696F6E733D22323422
            2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D2268615269676874222056416C
            69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D65
            6D6F56696577204C6566743D223235342220546F703D22313830222057696474
            683D22353322204865696768743D22323922205265737472696374696F6E733D
            223234222053686F7748696E743D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C5466
            72784D656D6F56696577204C6566743D223330372220546F703D223138302220
            57696474683D22373222204865696768743D2232392220526573747269637469
            6F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            676874222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223337392220546F703D2231
            3538222057696474683D22353422204865696768743D22323222205265737472
            696374696F6E733D223234222053686F7748696E743D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            68615269676874222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F56696577204C6566743D223230302220546F
            703D22313830222057696474683D22353422204865696768743D223239222052
            65737472696374696F6E733D223234222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D2268615269676874222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22323534
            2220546F703D22313830222057696474683D22353322204865696768743D2232
            3922205265737472696374696F6E733D223234222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223330372220546F703D22313830222057696474683D22373222204865696768
            743D22323922205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D2268615269676874222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C
            6566743D223337392220546F703D22313830222057696474683D223731222048
            65696768743D22323922205265737472696374696F6E733D223234222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C736522204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D2268615269676874222056416C69676E3D
            22766143656E7465722220546578743D2230222F3E3C546672784D656D6F5669
            6577204C6566743D223230362220546F703D223232382C393630373322205769
            6474683D22373422204865696768743D22313822205265737472696374696F6E
            733D223234222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222050617265
            6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
            20546578743D2230222F3E3C546672784D656D6F56696577204C6566743D2231
            38342220546F703D223230342C3036333038222057696474683D223634222048
            65696768743D22313622205265737472696374696F6E733D223234222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E616D
            653D22417269616C204E6172726F772220466F6E742E5374796C653D22312220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223234382220546F703D2232
            30342C3036333038222057696474683D22333922204865696768743D22313622
            205265737472696374696F6E733D223234222053686F7748696E743D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D382220466F6E742E4E616D653D22417269616C204E
            6172726F772220466F6E742E5374796C653D223122204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            6152696768742220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D2230222F3E3C546672784D656D6F
            56696577204C6566743D223238372220546F703D223230342C30363330382220
            57696474683D22343522204865696768743D2231362220526573747269637469
            6F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D382220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E
            742E5374796C653D223122204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223333322220546F703D223230342C3036333038222057696474683D22343422
            204865696768743D22313622205265737472696374696F6E733D223234222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2230
            222F3E3C546672784D656D6F56696577204C6566743D223337362220546F703D
            223230342C3036333038222057696474683D22353322204865696768743D2231
            3622205265737472696374696F6E733D223234222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C
            204E6172726F772220466F6E742E5374796C653D223122204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686152696768742220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D65
            6D6F56696577204C6566743D223432392220546F703D223230342C3036333038
            222057696474683D22353622204865696768743D223136222052657374726963
            74696F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D382220466F6E742E4E616D653D22417269616C204E6172726F77222046
            6F6E742E5374796C653D223122204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222048416C69676E3D22686152696768742220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D2230222F3E3C546672784D656D6F56696577204C6566
            743D223438352220546F703D223230342C3036333038222057696474683D2233
            3322204865696768743D22313622205265737472696374696F6E733D22323422
            2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686152696768742220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F56696577204C6566743D223138342220546F
            703D223232302C3036333038222057696474683D22363422204865696768743D
            22313622205265737472696374696F6E733D223234222053686F7748696E743D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            20446973706C6179466F726D61742E466F726D61745374723D222323232C2323
            302220446973706C6179466F726D61742E4B696E643D22666B4E756D65726963
            2220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D382220466F6E742E4E616D653D224172
            69616C204E6172726F772220466F6E742E5374796C653D223122204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686152696768742220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D2230222F3E3C546672
            784D656D6F56696577204C6566743D223234382220546F703D223232302C3036
            333038222057696474683D22333922204865696768743D223136222052657374
            72696374696F6E733D223234222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C73652220446973706C617946
            6F726D61742E466F726D61745374723D222323232C2323302220446973706C61
            79466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D382220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C546672784D656D6F56696577
            204C6566743D223238372220546F703D223232302C3036333038222057696474
            683D22343522204865696768743D22313622205265737472696374696F6E733D
            223234222053686F7748696E743D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C73652220446973706C6179466F726D61742E466F72
            6D61745374723D222323232C2323302220446973706C6179466F726D61742E4B
            696E643D22666B4E756D657269632220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3822
            20466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E53
            74796C653D223122204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D22686152696768742220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D2230222F3E3C546672784D656D6F56696577204C6566743D223333
            322220546F703D223232302C3036333038222057696474683D22343422204865
            696768743D22313622205265737472696374696F6E733D223234222053686F77
            48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
            616C73652220446973706C6179466F726D61742E466F726D61745374723D2223
            23232C2323302220446973706C6179466F726D61742E4B696E643D22666B4E75
            6D657269632220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E616D
            653D22417269616C204E6172726F772220466F6E742E5374796C653D22312220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223337362220546F703D2232
            32302C3036333038222057696474683D22353322204865696768743D22313622
            205265737472696374696F6E733D223234222053686F7748696E743D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220446973
            706C6179466F726D61742E466F726D61745374723D222323232C232330222044
            6973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F
            6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C20
            4E6172726F772220466F6E742E5374796C653D223122204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686152696768742220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D2230222F3E3C546672784D656D
            6F56696577204C6566743D223432392220546F703D223232302C303633303822
            2057696474683D22353622204865696768743D22313622205265737472696374
            696F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C73652220446973706C6179466F726D61
            742E466F726D61745374723D222323232C2323302220446973706C6179466F72
            6D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365
            743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D382220466F6E742E4E616D653D22417269616C204E6172726F77222046
            6F6E742E5374796C653D223122204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222048416C69676E3D22686152696768742220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D2230222F3E3C546672784D656D6F56696577204C6566
            743D223438352220546F703D223232302C3036333038222057696474683D2233
            3322204865696768743D22313622205265737472696374696F6E733D22323422
            2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220446973706C6179466F726D61742E466F726D617453
            74723D222323232C2323302220446973706C6179466F726D61742E4B696E643D
            22666B4E756D657269632220466F6E742E436861727365743D22302220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E
            742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C65
            3D223122204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D
            6F733E3C546672784D656D6F56696577204C6566743D223138342220546F703D
            223137322C3036333038222057696474683D22363422204865696768743D2231
            3622205265737472696374696F6E733D2238222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C20
            4E6172726F772220466F6E742E5374796C653D223122204672616D652E547970
            3D2231352220476170583D22332220476170593D22332220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D224553544F5155452046C38D5349434F3A222F3E3C546672784D656D6F56
            696577204C6566743D223234382220546F703D223137322C3036333038222057
            696474683D22333922204865696768743D22313622205265737472696374696F
            6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220436F6C6F723D222D31363737373231
            362220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D382220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D22332220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D2256454E4449444F3A222F3E3C546672784D656D6F56696577
            204C6566743D223238372220546F703D223137322C3036333038222057696474
            683D22343522204865696768743D22313622205265737472696374696F6E733D
            2238222053686F7748696E743D2246616C73652220416C6C6F77457870726573
            73696F6E733D2246616C73652220436F6C6F723D222D31363737373231362220
            466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D382220466F6E742E4E616D653D2241726961
            6C204E6172726F772220466F6E742E5374796C653D223122204672616D652E54
            79703D2231352220476170583D22332220476170593D22332220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22454E5452454755453A222F3E3C546672784D656D6F56696577204C
            6566743D223333322220546F703D223137322C3036333038222057696474683D
            22343422204865696768743D22313622205265737472696374696F6E733D2238
            222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220436F6C6F723D222D31363737373231362220466F
            6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C20
            4E6172726F772220466F6E742E5374796C653D223122204672616D652E547970
            3D2231352220476170583D22332220476170593D22332220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D2250454E44454E54453A222F3E3C546672784D656D6F56696577204C6566
            743D223337362220546F703D223137322C3036333038222057696474683D2235
            3322204865696768743D22313622205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220436F6C6F723D2231323633393432342220466F6E742E
            436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D382220466F6E742E4E616D653D22417269616C204E6172
            726F772220466F6E742E5374796C653D223122204672616D652E5479703D2231
            352220476170583D22332220476170593D22332220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            50524F44555A494E444F3A222F3E3C546672784D656D6F56696577204C656674
            3D223432392220546F703D223137322C3036333038222057696474683D223536
            22204865696768743D22313622205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220436F6C6F723D2231323633393432342220466F6E742E43
            6861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D382220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D22332220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D224E
            454345535349444144453A222F3E3C546672784D656D6F56696577204C656674
            3D223438352220546F703D223137322C3036333038222057696474683D223333
            22204865696768743D22313622205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            332220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22534F4252413A222F3E3C546672784D656D6F
            56696577204C6566743D223537382220546F703D22313336222057696474683D
            22373222204865696768743D22323222205265737472696374696F6E733D2238
            222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222056416C69676E3D22766143656E746572222054
            6578743D22515444455F46495349434F222F3E3C546672784D656D6F56696577
            204C6566743D223635302220546F703D22313336222057696474683D22373122
            204865696768743D22323222205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222056416C69676E3D22766143656E7465722220546578743D
            22515444455F56454E4449444F222F3E3C546672784D656D6F56696577204C65
            66743D223732312220546F703D22313336222057696474683D22343022204865
            696768743D22323222205265737472696374696F6E733D2238222053686F7748
            696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222056416C69676E3D22766143656E7465722220546578743D225154
            44455F454E545245475545222F3E3C546672784D656D6F56696577204C656674
            3D223738302220546F703D22313336222057696474683D223534222048656967
            68743D22323222205265737472696374696F6E733D2238222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222056416C69676E3D22766143656E7465722220546578743D2251544445
            5F50454E44454E5445222F3E3C546672784D656D6F56696577204C6566743D22
            3833342220546F703D22313336222057696474683D2235332220486569676874
            3D22323222205265737472696374696F6E733D2238222053686F7748696E743D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222056416C69676E3D22766143656E7465722220546578743D22515444455F50
            524F44555A494E444F222F3E3C546672784D656D6F56696577204C6566743D22
            3838372220546F703D22313336222057696474683D2237322220486569676874
            3D22323222205265737472696374696F6E733D2238222053686F7748696E743D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222056416C69676E3D22766143656E7465722220546578743D22515444455F44
            454D414E4441222F3E3C546672784D656D6F56696577204C6566743D22393539
            2220546F703D22313336222057696474683D22373122204865696768743D2232
            3222205265737472696374696F6E733D2238222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C736522204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222056
            416C69676E3D22766143656E7465722220546578743D22515444455F45584345
            44454E5445222F3E3C546672784D656D6F56696577204C6566743D2231303330
            2220546F703D22313336222057696474683D22343022204865696768743D2232
            3222205265737472696374696F6E733D2238222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C736522204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222056
            416C69676E3D22766143656E7465722220546578743D22515444455F46495349
            434F222F3E3C546672784D656D6F56696577204C6566743D2231303730222054
            6F703D22313336222057696474683D22353422204865696768743D2232322220
            5265737472696374696F6E733D2238222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222056416C69
            676E3D22766143656E7465722220546578743D22515444455F56454E4449444F
            222F3E3C546672784D656D6F56696577204C6566743D22313132342220546F70
            3D22313336222057696474683D22353322204865696768743D22323222205265
            737472696374696F6E733D2238222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D22515444455F454E54524547554522
            2F3E3C546672784D656D6F56696577204C6566743D22313137372220546F703D
            22313336222057696474683D22373222204865696768743D2232322220526573
            7472696374696F6E733D2238222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222056416C69676E3D
            22766143656E7465722220546578743D22515444455F50454E44454E5445222F
            3E3C546672784D656D6F56696577204C6566743D22313234392220546F703D22
            313336222057696474683D22373122204865696768743D223232222052657374
            72696374696F6E733D2238222053686F7748696E743D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222056416C69676E3D22
            766143656E7465722220546578743D22515444455F50524F44555A494E444F22
            2F3E3C546672784D656D6F56696577204C6566743D22313332302220546F703D
            22313336222057696474683D22343022204865696768743D2232322220526573
            7472696374696F6E733D2238222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222056416C69676E3D
            22766143656E7465722220546578743D22515444455F44454D414E4441222F3E
            3C546672784D656D6F56696577204C6566743D22313336302220546F703D2231
            3336222057696474683D22353422204865696768743D22323222205265737472
            696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222056416C69676E3D2276
            6143656E7465722220546578743D22515444455F4558434544454E5445222F3E
            3C546672784D656D6F56696577204C6566743D22313431342220546F703D2231
            3336222057696474683D22353322204865696768743D22323222205265737472
            696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222056416C69676E3D2276
            6143656E7465722220546578743D22515444455F46495349434F222F3E3C5466
            72784D656D6F56696577204C6566743D22313436372220546F703D2231333622
            2057696474683D22373222204865696768743D22323222205265737472696374
            696F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222056416C69676E3D2276614365
            6E7465722220546578743D22515444455F56454E4449444F222F3E3C54667278
            4D656D6F56696577204C6566743D22313533392220546F703D22313336222057
            696474683D22373122204865696768743D22323222205265737472696374696F
            6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222056416C69676E3D22766143656E74
            65722220546578743D22515444455F454E545245475545222F3E3C546672784D
            656D6F56696577204C6566743D22313631302220546F703D2231333622205769
            6474683D22343022204865696768743D22323222205265737472696374696F6E
            733D2238222053686F7748696E743D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222056416C69676E3D22766143656E7465
            722220546578743D22515444455F50454E44454E5445222F3E3C546672784D65
            6D6F56696577204C6566743D22302220546F703D2230222057696474683D2230
            22204865696768743D223022205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222056416C69676E3D22766143656E7465722220546578743D
            22515444455F50524F44555A494E444F222F3E3C546672784D656D6F56696577
            204C6566743D22302220546F703D2230222057696474683D2230222048656967
            68743D223022205265737472696374696F6E733D2238222053686F7748696E74
            3D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C7365
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222056416C69676E3D22766143656E7465722220546578743D22515444455F
            44454D414E4441222F3E3C546672784D656D6F56696577204C6566743D223022
            20546F703D2230222057696474683D223022204865696768743D223022205265
            737472696374696F6E733D2238222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D22515444455F4558434544454E5445
            222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D2230
            222057696474683D223022204865696768743D22302220526573747269637469
            6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222056416C69676E3D22766143656E
            7465722220546578743D22515444455F46495349434F222F3E3C546672784D65
            6D6F56696577204C6566743D22302220546F703D2230222057696474683D2230
            22204865696768743D223022205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222056416C69676E3D22766143656E7465722220546578743D
            22515444455F56454E4449444F222F3E3C546672784D656D6F56696577204C65
            66743D22302220546F703D2230222057696474683D223022204865696768743D
            223022205265737472696374696F6E733D2238222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            56416C69676E3D22766143656E7465722220546578743D22515444455F454E54
            5245475545222F3E3C546672784D656D6F56696577204C6566743D2230222054
            6F703D2230222057696474683D223022204865696768743D2230222052657374
            72696374696F6E733D2238222053686F7748696E743D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222056416C69676E3D22
            766143656E7465722220546578743D22515444455F50454E44454E5445222F3E
            3C546672784D656D6F56696577204C6566743D22302220546F703D2230222057
            696474683D223022204865696768743D223022205265737472696374696F6E73
            3D2238222053686F7748696E743D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222056416C69676E3D22766143656E746572
            2220546578743D22515444455F50524F44555A494E444F222F3E3C546672784D
            656D6F56696577204C6566743D22302220546F703D2230222057696474683D22
            3022204865696768743D223022205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C736522204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222056416C69676E3D22766143656E746572222054657874
            3D22515444455F44454D414E4441222F3E3C546672784D656D6F56696577204C
            6566743D22302220546F703D2230222057696474683D22302220486569676874
            3D223022205265737472696374696F6E733D2238222053686F7748696E743D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2056416C69676E3D22766143656E7465722220546578743D22515444455F4558
            434544454E5445222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C
            756D6E6D656D6F733E3C546672784D656D6F56696577204C6566743D22313834
            2220546F703D223137322C3036333038222057696474683D2233333422204865
            696768743D223022205265737472696374696F6E733D223234222053686F7748
            696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D65
            3D2256657264616E612220466F6E742E5374796C653D223022204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686152696768742220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C75
            6D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D
            656D6F56696577204C6566743D223738302220546F703D223239222057696474
            683D22373022204865696768743D2231303722205265737472696374696F6E73
            3D2238222056697369626C653D2246616C7365222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31312220466F6E742E4E616D653D225461686F
            6D612220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            6768742220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22537562746F74616C3A222F3E3C2F636F
            6C756D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672
            784D656D6F56696577204C6566743D2232302220546F703D223135362C303633
            3038222057696474683D2231363422204865696768743D223022205265737472
            696374696F6E733D2238222056697369626C653D2246616C7365222053686F77
            48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D
            653D225461686F6D612220466F6E742E5374796C653D223122204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D226573746F71756522
            2F3E3C546672784D656D6F56696577204C6566743D223138342220546F703D22
            3135362C3036333038222057696474683D2233333422204865696768743D2231
            3622205265737472696374696F6E733D2238222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C20
            4E6172726F772220466F6E742E5374796C653D223122204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D22434F4D504152415449564F
            53222F3E3C546672784D656D6F56696577204C6566743D223231302220546F70
            3D2230222057696474683D2231353822204865696768743D2232322220526573
            7472696374696F6E733D2238222056697369626C653D2246616C736522205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E746572222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D2232302220546F703D223135362C303633303822205769
            6474683D22353122204865696768743D22333222205265737472696374696F6E
            733D2238222053686F7748696E743D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3822
            20466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E53
            74796C653D223122204672616D652E5479703D22313522204672616D652E5269
            6768744C696E652E436F6C6F723D2231363737373231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D225245464552C38A4E4349413A222F3E3C546672784D656D6F
            56696577204C6566743D2237312220546F703D223135362C3036333038222057
            696474683D22343822204865696768743D22333222205265737472696374696F
            6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D38
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22444553435249C387C3834F3A222F3E3C546672784D656D6F
            56696577204C6566743D223131392220546F703D223135362C30363330382220
            57696474683D22323322204865696768743D2233322220526573747269637469
            6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            382220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D22434F523A222F3E3C546672784D656D6F56696577204C65
            66743D223134322220546F703D223135362C3036333038222057696474683D22
            343222204865696768743D22333222205265737472696374696F6E733D223822
            2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2254414D414E484F3A222F3E3C2F636F726E65726D656D6F733E3C726F776D
            656D6F733E3C546672784D656D6F56696577204C6566743D2232302220546F70
            3D223138382C3036333038222057696474683D22353122204865696768743D22
            333222205265737472696374696F6E733D223234222053686F7748696E743D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D382220466F6E742E4E616D653D2241726961
            6C204E6172726F772220466F6E742E5374796C653D223022204672616D652E54
            79703D2231352220476170583D22332220476170593D22332220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D2237312220
            546F703D223138382C3036333038222057696474683D22343822204865696768
            743D22313622205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D372220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D22332220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22222F3E3C546672784D656D6F56696577204C6566743D2231
            31392220546F703D223138382C3036333038222057696474683D223233222048
            65696768743D22313622205265737472696374696F6E733D223234222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D352220466F6E742E4E616D
            653D22417269616C204E6172726F772220466F6E742E5374796C653D22302220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D22222F3E3C546672784D656D6F56696577204C6566
            743D223134322220546F703D223138382C3036333038222057696474683D2234
            3222204865696768743D22313622205265737472696374696F6E733D22323422
            2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223022204672616D652E5479703D2231352220476170583D2233222047617059
            3D22332220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C2F726F776D656D6F733E3C72
            6F77746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D
            2232302220546F703D223232302C3036333038222057696474683D2231363422
            204865696768743D22313622205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E61
            6D653D22417269616C204E6172726F772220466F6E742E5374796C653D223122
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686152696768742220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D22544F
            54414953203D262336323B222F3E3C546672784D656D6F56696577204C656674
            3D2237312220546F703D223230342C3036333038222057696474683D22313133
            22204865696768743D22313622205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2253
            5542544F54414C3A222F3E3C546672784D656D6F56696577204C6566743D2231
            36392220546F703D223630222057696474683D22383022204865696768743D22
            323222205265737472696374696F6E733D2238222056697369626C653D224661
            6C7365222053686F7748696E743D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313322
            20466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            546F74616C222F3E3C546672784D656D6F56696577204C6566743D2232313222
            20546F703D223431222057696474683D22383022204865696768743D22323222
            205265737472696374696F6E733D2238222056697369626C653D2246616C7365
            222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F
            6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2231222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E7465722220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D22546F74
            616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66756E637469
            6F6E733E3C6974656D20312F3E3C6974656D20312F3E3C6974656D20312F3E3C
            6974656D20312F3E3C6974656D20312F3E3C6974656D20312F3E3C6974656D20
            312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C
            6974656D20322F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C69
            74656D20322F3E3C6974656D20322F3E3C6974656D20322F3E3C6974656D2032
            2F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
    end
  end
  object FRXDB_Necessidade: TfrxDBDataset
    UserName = 'dbNecessidade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'COR_ID=COR_ID'
      'COR=COR'
      'TAMANHO_ID=TAMANHO_ID'
      'TAMANHO=TAMANHO'
      'ORDEM_GRADE=ORDEM_GRADE'
      'QTDE_FISICO=QTDE_FISICO'
      'QTDE_VENDIDO=QTDE_VENDIDO'
      'QTDE_ENTREGUE=QTDE_ENTREGUE'
      'QTDE_PENDENTE=QTDE_PENDENTE'
      'QTDE_PRODUZIR=QTDE_PRODUZIR'
      'QTDE_PRODUZIDO=QTDE_PRODUZIDO'
      'QTDE_PRODUZINDO=QTDE_PRODUZINDO'
      'QTDE_DEMANDA=QTDE_DEMANDA'
      'QTDE_EXCEDENTE=QTDE_EXCEDENTE')
    DataSet = db_Necessidade
    BCDToCurrency = False
    Left = 928
    Top = 392
  end
  object db_Necessidade: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM TBL_NECESSIDADES')
    Left = 928
    Top = 336
  end
  object frxDBFichasTecnicas: TfrxDBDataset
    UserName = 'FichasTecnicas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'REFERENCIA=REFERENCIA'
      'CODIGO_FABRICANTE=CODIGO_FABRICANTE'
      'DESCRICAO=DESCRICAO'
      'TIPO_PRODUTO=TIPO_PRODUTO'
      'UNIDADE=UNIDADE'
      'FASE=FASE'
      'FASE_NOME=FASE_NOME'
      'GRIFE=GRIFE'
      'GRIFE_NOME=GRIFE_NOME'
      'COLECAO=COLECAO'
      'COLECAO_NOME=COLECAO_NOME'
      'FAIXAETARIA=FAIXAETARIA'
      'FAIXAETARIA_NOME=FAIXAETARIA_NOME'
      'ETIQUETA=ETIQUETA'
      'ETIQUETA_NOME=ETIQUETA_NOME'
      'GRADE=GRADE'
      'GRADE_NOME=GRADE_NOME'
      'ESTILISTA=ESTILISTA'
      'ESTILISTA_NOME=ESTILISTA_NOME'
      'PRC_CUSTO=PRC_CUSTO'
      'VALOR_VENDA=VALOR_VENDA'
      'GRUPO=GRUPO'
      'GRUPO_NOME=GRUPO_NOME'
      'SUBGRUPO=SUBGRUPO'
      'SUBGRUPO_NOME=SUBGRUPO_NOME'
      'FORNECEDOR=FORNECEDOR'
      'FORNECEDOR_NOME=FORNECEDOR_NOME'
      'GENERO=GENERO'
      'GENERO_NOME=GENERO_NOME'
      'COMPOSICAO=COMPOSICAO'
      'TAMANHO=TAMANHO'
      'COR=COR'
      'CODIGO_1=CODIGO_1')
    DataSet = dbFichasTecnicas
    BCDToCurrency = False
    Left = 416
    Top = 400
  end
  object frxFichasTecnicas: TfrxReport
    Version = '4.15.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40697.517816215300000000
    ReportOptions.Name = 'Fichas T'#233'cnicas Cadastradas'
    ReportOptions.LastChange = 40697.598678044000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 416
    Top = 272
    Datasets = <
      item
        DataSet = frxDBFichasTecnicas
        DataSetName = 'FichasTecnicas'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 102.047310000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Top = 80.000000000000000000
          Width = 47.617312150000000000
          Height = 13.228346460000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIGO:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 66.514962150000000000
          Top = 80.000000000000000000
          Width = 35.047978740000000000
          Height = 13.228346460000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 131.799180880000000000
          Top = 80.000000000000000000
          Width = 77.205439010000000000
          Height = 13.228346460000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 247.559055118110000000
          Top = 80.000000000000000000
          Width = 77.196080430000000000
          Height = 13.228346460000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 553.700762990000000000
          Top = 80.000000000000000000
          Width = 49.133858270000000000
          Height = 13.228346460000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GRIFE:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 655.370051890000000000
          Top = 80.000000000000000000
          Width = 58.582623460000000000
          Height = 13.228346460000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COLE'#199#195'O:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          Left = 835.275590551181000000
          Top = 80.000000000000000000
          Width = 51.023590310000000000
          Height = 13.228346460000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'G'#202'NERO:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          Left = 924.094488190000000000
          Top = 80.000000000000000000
          Width = 102.803149610000000000
          Height = 13.228346460000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GRADE TAMANHO:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          Left = 491.338558270000000000
          Top = 80.000000000000000000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UNIDADE:')
          ParentFont = False
          Style = 'Header'
        end
        object Shape1: TfrxShapeView
          Left = 882.370440000000000000
          Top = 3.779530000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo29: TfrxMemoView
          Left = 893.929133860000000000
          Top = 5.669293780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 894.929133860000000000
          Top = 20.409451260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 894.929133860000000000
          Top = 35.527561500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 960.078745040000000000
          Top = 5.669293780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 960.078745040000000000
          Top = 20.409451260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          Left = 960.078745040000000000
          Top = 35.527561500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitulo: TfrxMemoView
          Left = 1.000000000000000000
          Top = 3.779530000000000000
          Width = 879.283860000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Relat'#243'rio - PCP'
            'Fichas T'#233'cnicas Cadastradas')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 97.401670000000000000
          Width = 1046.929810000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 26.456710000000000000
        ParentFont = False
        Top = 181.417440000000000000
        Width = 1046.929810000000000000
        Condition = 'FichasTecnicas."GRUPO_NOME"'
        object Memo14: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16053492
          DataSet = frxDBFichasTecnicas
          DataSetName = 'FichasTecnicas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GRUPO: [FichasTecnicas."GRUPO_NOME"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          Align = baWidth
          Width = 1046.929810000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line6: TfrxLineView
          Align = baWidth
          Top = 22.677180000000000000
          Width = 1046.929810000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBFichasTecnicas
        DataSetName = 'FichasTecnicas'
        RowCount = 0
        object Memo15: TfrxMemoView
          Width = 47.617312150000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = frxDBFichasTecnicas
          DataSetName = 'FichasTecnicas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FichasTecnicas."CODIGO"]')
          ParentFont = False
          Style = 'Data'
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 66.514962150000000000
          Width = 57.725158740000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = frxDBFichasTecnicas
          DataSetName = 'FichasTecnicas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FichasTecnicas."DATA"]')
          ParentFont = False
          Style = 'Data'
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 131.799180880000000000
          Width = 99.882619010000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'REFERENCIA'
          DataSet = frxDBFichasTecnicas
          DataSetName = 'FichasTecnicas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FichasTecnicas."REFERENCIA"]')
          ParentFont = False
          Style = 'Data'
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 247.559055120000000000
          Width = 228.377280430000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCRICAO'
          DataSet = frxDBFichasTecnicas
          DataSetName = 'FichasTecnicas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FichasTecnicas."DESCRICAO"]')
          ParentFont = False
          Style = 'Data'
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          Left = 553.700762990000000000
          Width = 94.488218270000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'GRIFE_NOME'
          DataSet = frxDBFichasTecnicas
          DataSetName = 'FichasTecnicas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FichasTecnicas."GRIFE_NOME"]')
          ParentFont = False
          Style = 'Data'
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 655.370051890000000000
          Width = 164.409463460000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'COLECAO_NOME'
          DataSet = frxDBFichasTecnicas
          DataSetName = 'FichasTecnicas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FichasTecnicas."COLECAO_NOME"]')
          ParentFont = False
          Style = 'Data'
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 835.275590550000000000
          Width = 81.259830310000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'GENERO_NOME'
          DataSet = frxDBFichasTecnicas
          DataSetName = 'FichasTecnicas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FichasTecnicas."GENERO_NOME"]')
          ParentFont = False
          Style = 'Data'
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 924.094488190000000000
          Width = 114.141739610000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'GRADE_NOME'
          DataSet = frxDBFichasTecnicas
          DataSetName = 'FichasTecnicas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FichasTecnicas."GRADE_NOME"]')
          ParentFont = False
          Style = 'Data'
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 491.338558270000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UNIDADE'
          DataSet = frxDBFichasTecnicas
          DataSetName = 'FichasTecnicas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FichasTecnicas."UNIDADE"]')
          ParentFont = False
          Style = 'Data'
          WordWrap = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 71.811070000000000000
          Top = 1.779530000000000000
          Width = 608.504330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            
              'FICHAS T'#201'CNICAS NO GRUPO: [FichasTecnicas."GRUPO_NOME"]: [COUNT(' +
              'MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 400.630180000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          Align = baWidth
          Width = 1046.929810000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 865.512370000000000000
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          Top = 3.779530000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL DE FICHAS T'#201'CNICAS: [LINE#]')
          ParentFont = False
          WordWrap = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Width = 1046.929810000000000000
          ShowHint = False
          Diagonal = True
        end
      end
    end
  end
  object dbFichasTecnicas: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_REFERENCIAS'
      'WHERE'
      'TIPO_PRODUTO='#39'ACA'#39
      'and'
      'data  between '#39'01/01/2011'#39' and '#39'31/12/2012'#39
      'ORDER BY GRUPO_NOME, REFERENCIA')
    Left = 416
    Top = 328
  end
  object PopUpBarraBotoesImprimir: TPopupMenu
    Left = 608
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 16464
      OnClick = Imprimir1Click
    end
  end
  object DB_PecasProduzidas: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT'
      'DISTINCT(REFERENCIA),'
      'DESCRICAO,'
      'COR,'
      'TAMANHO,'
      'ORDEM_GRADE,'
      'QTDE_VENDIDO,'
      'QTDE_DEMANDA,'
      'QTDE_PRODUZIR,'
      'QTDE_PRODUZIDO,'
      'QTDE_PRODUZINDO,'
      'QTDE_EXCEDENTE,'
      'QTDE_RESERVADO,'
      'QTDE_FISICO,'
      'CONCLUIDO'
      'FROM  VIEW_MOVIMENTOS_PRODUTOS'
      'ORDER BY REFERENCIA, COR, ORDEM_GRADE')
    Left = 280
    Top = 96
  end
  object frxPecasProduzidas: TfrxReport
    Version = '4.15.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40698.768012303200000000
    ReportOptions.Name = 'Pe'#231'as Produzidas'
    ReportOptions.LastChange = 40698.777050324100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 40
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frxDB_PecasProduzidas
        DataSetName = 'PecasProduzidas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object MemoTitulo: TfrxMemoView
          Left = 2.000000000000000000
          Top = 3.779530000000000000
          Width = 554.244280000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio - PCP'
            'Pe'#231'as Produzidas')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 553.590910000000000000
          Top = 3.779530000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 563.149603860000000000
          Top = 5.669293780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 564.149603860000000000
          Top = 20.409451260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 564.149603860000000000
          Top = 35.527561500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 629.299215040000000000
          Top = 5.669293780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 629.299215040000000000
          Top = 20.409451260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 629.299215040000000000
          Top = 35.527561500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 11.338590000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        Child = frxPecasProduzidas.Child1
        DataSet = frxDB_PecasProduzidas
        DataSetName = 'PecasProduzidas'
        RowCount = 0
      end
      object Child1: TfrxChild
        Height = 128.504020000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        object DBCross1: TfrxDBCrossView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 384.000000000000000000
          Height = 114.000000000000000000
          ShowHint = True
          CellLevels = 3
          ColumnLevels = 0
          DownThenAcross = True
          PlainCells = True
          RowLevels = 4
          ShowColumnTotal = False
          CellFields.Strings = (
            'QTDE_PRODUZIR'
            'QTDE_PRODUZIDO'
            'CONCLUIDO')
          DataSet = frxDB_PecasProduzidas
          DataSetName = 'PecasProduzidas'
          RowFields.Strings = (
            'referencia'
            'descricao'
            'cor'
            'tamanho')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2232303622
            20546F703D223233392C3431373434222057696474683D223439222048656967
            68743D22313822205265737472696374696F6E733D223234222053686F774869
            6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            73652220446973706C6179466F726D61742E466F726D61745374723D22232323
            2C2323302220446973706C6179466F726D61742E4B696E643D22666B4E756D65
            7269632220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223022204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
            546672784D656D6F56696577204C6566743D223235352220546F703D22323339
            2C3431373434222057696474683D22353422204865696768743D223138222052
            65737472696374696F6E733D223234222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C73652220446973706C
            6179466F726D61742E466F726D61745374723D222323232C2323302220446973
            706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E74
            2E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D392220466F6E742E4E616D653D22417269616C204E61
            72726F772220466F6E742E5374796C653D223022204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            52696768742220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D2230222F3E3C546672784D656D6F56
            696577204C6566743D223330392220546F703D223233392C3431373434222057
            696474683D22353522204865696768743D22313822205265737472696374696F
            6E733D223234222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220446973706C6179466F726D61742E
            466F726D61745374723D222323232C232330252220446973706C6179466F726D
            61742E4B696E643D22666B4E756D657269632220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D223025222F3E3C546672784D656D6F56696577204C6566
            743D223337362220546F703D223338222057696474683D223532222048656967
            68743D22313822205265737472696374696F6E733D223234222053686F774869
            6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D22
            417269616C204E6172726F772220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686152696768742220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C54
            6672784D656D6F56696577204C6566743D223334322220546F703D2233362220
            57696474683D22343622204865696768743D2231382220526573747269637469
            6F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223337372220546F703D223337222057696474683D2235382220486569676874
            3D22313922205265737472696374696F6E733D223234222053686F7748696E74
            3D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C7365
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D2268615269676874222056416C69676E3D2276614365
            6E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C65
            66743D22302220546F703D2230222057696474683D223022204865696768743D
            223022205265737472696374696F6E733D2238222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
            722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D22
            302220546F703D2230222057696474683D223022204865696768743D22302220
            5265737472696374696F6E733D2238222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D2268615269676874222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D2232373822
            20546F703D223630222057696474683D22373322204865696768743D22323022
            205265737472696374696F6E733D223234222053686F7748696E743D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C65
            66743D223335312220546F703D223630222057696474683D2238322220486569
            6768743D22323022205265737472696374696F6E733D223234222053686F7748
            696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D65
            3D22417269616C2220466F6E742E5374796C653D223122204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686152696768742220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D65
            6D6F56696577204C6566743D22302220546F703D2230222057696474683D2230
            22204865696768743D223022205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D2268615269676874222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F5669
            6577204C6566743D22302220546F703D2230222057696474683D223022204865
            696768743D223022205265737472696374696F6E733D2238222053686F774869
            6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            736522204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D2268615269676874222056416C69676E3D227661
            43656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C
            6566743D223230362220546F703D223235372C3431373434222057696474683D
            22343922204865696768743D22313822205265737472696374696F6E733D2232
            34222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223122204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D22686152696768742220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D2230222F3E3C546672784D656D6F56696577204C6566743D223235352220
            546F703D223235372C3431373434222057696474683D22353422204865696768
            743D22313822205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686152696768742220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C5466
            72784D656D6F56696577204C6566743D223330392220546F703D223235372C34
            31373434222057696474683D22353522204865696768743D2231382220526573
            7472696374696F6E733D223234222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22222F3E3C2F63656C6C6D656D6F733E3C63
            656C6C6865616465726D656D6F733E3C546672784D656D6F56696577204C6566
            743D223230362220546F703D223232312C3431373434222057696474683D2234
            3922204865696768743D22313822205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            22332220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2250524F44555A49523A222F3E3C54667278
            4D656D6F56696577204C6566743D223235352220546F703D223232312C343137
            3434222057696474683D22353422204865696768743D22313822205265737472
            696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D392220466F6E742E4E616D653D22417269616C204E6172726F772220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204761
            70583D22332220476170593D22332220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2250524F4455
            5A49444F3A222F3E3C546672784D656D6F56696577204C6566743D2233303922
            20546F703D223232312C3431373434222057696474683D223535222048656967
            68743D22313822205265737472696374696F6E733D2238222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D22332220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22434F4E434C5549444F3A222F3E3C546672784D656D6F5669
            6577204C6566743D223337362220546F703D223230222057696474683D223532
            22204865696768743D22313822205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            332220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22515444455F50524F44555A4952222F3E3C54
            6672784D656D6F56696577204C6566743D223334322220546F703D2231382220
            57696474683D22343622204865696768743D2231382220526573747269637469
            6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            392220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
            332220476170593D22332220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22515444455F50524F44
            555A49444F222F3E3C546672784D656D6F56696577204C6566743D2233373722
            20546F703D223138222057696474683D22353822204865696768743D22313922
            205265737472696374696F6E733D2238222053686F7748696E743D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C736522204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222056416C
            69676E3D22766143656E7465722220546578743D22434F4E434C5549444F222F
            3E3C546672784D656D6F56696577204C6566743D223532352220546F703D2231
            3336222057696474683D22353322204865696768743D22323222205265737472
            696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222056416C69676E3D2276
            6143656E7465722220546578743D22515444455F50524F44555A4952222F3E3C
            546672784D656D6F56696577204C6566743D223537382220546F703D22313336
            222057696474683D22373222204865696768743D223232222052657374726963
            74696F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222056416C69676E3D22766143
            656E7465722220546578743D22515444455F50524F44555A49444F222F3E3C54
            6672784D656D6F56696577204C6566743D223635302220546F703D2231333622
            2057696474683D22373122204865696768743D22323222205265737472696374
            696F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222056416C69676E3D2276614365
            6E7465722220546578743D22434F4E434C5549444F222F3E3C546672784D656D
            6F56696577204C6566743D223732312220546F703D2231333622205769647468
            3D22343022204865696768743D22323222205265737472696374696F6E733D22
            38222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222056416C69676E3D22766143656E7465722220
            546578743D22515444455F50524F44555A4952222F3E3C546672784D656D6F56
            696577204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D2238222053686F7748
            696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222056416C69676E3D22766143656E7465722220546578743D225154
            44455F50524F44555A49444F222F3E3C546672784D656D6F56696577204C6566
            743D22302220546F703D2230222057696474683D223022204865696768743D22
            3022205265737472696374696F6E733D2238222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C736522204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222056
            416C69676E3D22766143656E7465722220546578743D22434F4E434C5549444F
            222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D2230
            222057696474683D223022204865696768743D22302220526573747269637469
            6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222056416C69676E3D22766143656E
            7465722220546578743D22515444455F50524F44555A4952222F3E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C736522204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222056416C69676E3D22766143656E7465722220546578
            743D22515444455F50524F44555A49444F222F3E3C546672784D656D6F566965
            77204C6566743D22302220546F703D2230222057696474683D22302220486569
            6768743D223022205265737472696374696F6E733D2238222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222056416C69676E3D22766143656E7465722220546578743D22434F4E43
            4C5549444F222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C756D
            6E6D656D6F733E3C546672784D656D6F56696577204C6566743D223230362220
            546F703D223232312C3431373434222057696474683D22313538222048656967
            68743D223022205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22
            56657264616E612220466F6E742E5374796C653D223022204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686152696768742220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D6E
            6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D
            6F56696577204C6566743D223738302220546F703D223239222057696474683D
            22373022204865696768743D2231303722205265737472696374696F6E733D22
            38222056697369626C653D2246616C7365222053686F7748696E743D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31312220466F6E742E4E616D653D225461686F6D61
            2220466F6E742E5374796C653D223122204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            742220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22537562746F74616C3A222F3E3C2F636F6C75
            6D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D
            656D6F56696577204C6566743D2232302220546F703D223230312C3431373434
            222057696474683D2231383622204865696768743D2230222052657374726963
            74696F6E733D2238222056697369626C653D2246616C7365222053686F774869
            6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D
            225461686F6D612220466F6E742E5374796C653D223122204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686143656E7465722220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D226573746F717565222F3E
            3C546672784D656D6F56696577204C6566743D223230362220546F703D223230
            312C3431373434222057696474683D2231353822204865696768743D22323022
            205265737472696374696F6E733D2238222053686F7748696E743D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22434F4D504152415449564F53222F3E3C546672
            784D656D6F56696577204C6566743D223231302220546F703D22302220576964
            74683D2231353822204865696768743D22323222205265737472696374696F6E
            733D2238222056697369626C653D2246616C7365222053686F7748696E743D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686143656E746572222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C546672784D656D6F56696577204C656674
            3D2232302220546F703D223230312C3431373434222057696474683D22353822
            204865696768743D22333822205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E61
            6D653D22417269616C204E6172726F772220466F6E742E5374796C653D223122
            204672616D652E5479703D22313522204672616D652E52696768744C696E652E
            436F6C6F723D2231363737373231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            5245464552C38A4E4349413A222F3E3C546672784D656D6F56696577204C6566
            743D2237382220546F703D223230312C3431373434222057696474683D223534
            22204865696768743D22333822205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            444553435249C387C3834F3A222F3E3C546672784D656D6F56696577204C6566
            743D223133322220546F703D223230312C3431373434222057696474683D2232
            3622204865696768743D22333822205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            22434F523A222F3E3C546672784D656D6F56696577204C6566743D2231353822
            20546F703D223230312C3431373434222057696474683D223438222048656967
            68743D22333822205265737472696374696F6E733D2238222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D2254414D414E48
            4F3A222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C5466
            72784D656D6F56696577204C6566743D2232302220546F703D223233392C3431
            373434222057696474683D22353822204865696768743D223138222052657374
            72696374696F6E733D223234222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F77
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22222F3E3C546672784D656D6F5669657720
            4C6566743D2237382220546F703D223233392C3431373434222057696474683D
            22353422204865696768743D22313822205265737472696374696F6E733D2232
            34222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223022204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D22686143656E7465722220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D22222F3E3C546672784D656D6F56696577204C6566743D223133322220
            546F703D223233392C3431373434222057696474683D22323622204865696768
            743D22313822205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
            72784D656D6F56696577204C6566743D223135382220546F703D223233392C34
            31373434222057696474683D22343822204865696768743D2231382220526573
            7472696374696F6E733D223234222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C2F726F776D656D6F733E3C72
            6F77746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D
            2232302220546F703D223235372C3431373434222057696474683D2231383622
            204865696768743D22313822205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E61
            6D653D22417269616C204E6172726F772220466F6E742E5374796C653D223122
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686152696768742220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D225175
            616E7469646164652050726F64757A696461203D262336323B222F3E3C546672
            784D656D6F56696577204C6566743D2237362220546F703D2238322220576964
            74683D22383022204865696768743D22323222205265737472696374696F6E73
            3D2238222056697369626C653D2246616C7365222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22546F74616C222F3E3C546672784D656D
            6F56696577204C6566743D223136392220546F703D223630222057696474683D
            22383022204865696768743D22323222205265737472696374696F6E733D2238
            222056697369626C653D2246616C7365222053686F7748696E743D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22546F74616C222F3E3C546672784D656D6F5669
            6577204C6566743D223231322220546F703D223431222057696474683D223830
            22204865696768743D22323222205265737472696374696F6E733D2238222056
            697369626C653D2246616C7365222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E
            742E5374796C653D223122204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D22686143656E746572222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22546F74616C222F3E3C2F726F77746F74616C6D656D6F
            733E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C6974656D20
            312F3E3C6974656D20302F3E3C2F63656C6C66756E6374696F6E733E3C636F6C
            756D6E736F72743E3C6974656D20322F3E3C2F636F6C756D6E736F72743E3C72
            6F77736F72743E3C6974656D20302F3E3C6974656D20302F3E3C6974656D2030
            2F3E3C6974656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
    end
  end
  object frxDB_PecasProduzidas: TfrxDBDataset
    UserName = 'PecasProduzidas'
    CloseDataSource = False
    DataSet = DB_PecasProduzidas
    BCDToCurrency = False
    Left = 280
    Top = 160
  end
  object frxDBD_EstoqueDisponivel: TfrxDBDataset
    UserName = 'frxDBD_EstoqueDisponivel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'referencia=REFERENCIA'
      'ORDEM_GRADE=ORDEM_GRADE'
      'DESCRICAO=DESCRICAO'
      'cor=COR'
      'tamanho=TAMANHO'
      'QUANTIDADE=QUANTIDADE')
    DataSet = DB_EstoqueDisponivel
    BCDToCurrency = False
    Left = 512
    Top = 408
  end
  object frxEstoqueDisponivel: TfrxReport
    Version = '4.15.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40698.799368414400000000
    ReportOptions.Name = 'Estoque Dispon'#237'vel'
    ReportOptions.LastChange = 41015.515114942100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 512
    Top = 272
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frxDBD_EstoqueDisponivel
        DataSetName = 'frxDBD_EstoqueDisponivel'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object MemoTitulo: TfrxMemoView
          Left = 1.779530000000000000
          Top = 7.559060000000000000
          Width = 554.244280000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio - PCP'
            'Estoque Dispon'#237'vel')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 553.370440000000000000
          Top = 7.559060000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 562.929133860000000000
          Top = 9.448823780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 563.929133860000000000
          Top = 24.188981260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 563.929133860000000000
          Top = 39.307091500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 629.078745040000000000
          Top = 9.448823780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 629.078745040000000000
          Top = 24.188981260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 629.078745040000000000
          Top = 39.307091500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 7.559060000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        Child = frxEstoqueDisponivel.Child1
        DataSet = frxDBD_EstoqueDisponivel
        DataSetName = 'frxDBD_EstoqueDisponivel'
        RowCount = 0
      end
      object Child1: TfrxChild
        Height = 133.897650000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        object DBCross1: TfrxDBCrossView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 303.000000000000000000
          Height = 115.000000000000000000
          Hint = 'Produ'#231#227'o necess'#225'ria para atender pedidos de vendas'
          ShowHint = True
          DownThenAcross = False
          RowLevels = 3
          CellFields.Strings = (
            'QUANTIDADE')
          ColumnFields.Strings = (
            'TAMANHO')
          DataSet = frxDBD_EstoqueDisponivel
          DataSetName = 'frxDBD_EstoqueDisponivel'
          RowFields.Strings = (
            'REFERENCIA'
            'DESCRICAO'
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223138372C
            37373935332220546F703D223233302C3835383338222057696474683D223439
            22204865696768743D22313922205265737472696374696F6E733D2232342220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3022204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686152696768742220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            30222F3E3C546672784D656D6F56696577204C6566743D223239322220546F70
            3D223630222057696474683D22393422204865696768743D2232322220526573
            7472696374696F6E733D223234222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220436F6C6F723D22
            31353732343532372220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E74
            2E4E616D653D225461686F6D612220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
            546672784D656D6F56696577204C6566743D223135362220546F703D22383222
            2057696474683D22383222204865696768743D22323222205265737472696374
            696F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D31312220466F6E742E4E616D653D225461686F6D612220466F6E742E5374
            796C653D223022204672616D652E5479703D22313522204672616D652E546F70
            4C696E652E57696474683D22322220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223138372C37373935332220
            546F703D223234392C3835383338222057696474683D22343922204865696768
            743D22313922205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220436F6C6F723D2231353732343532372220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2230222F3E3C546672784D656D6F56696577204C656674
            3D223233362C37373935332220546F703D223233302C38353833382220576964
            74683D22353022204865696768743D22313922205265737472696374696F6E73
            3D223234222053686F7748696E743D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220436F6C6F723D22313537323435323722
            20466F6E742E436861727365743D22302220466F6E742E436F6C6F723D223022
            20466F6E742E4865696768743D222D392220466F6E742E4E616D653D22417269
            616C204E6172726F772220466F6E742E5374796C653D223122204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686152696768742220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D2230222F3E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C736522204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222056416C69
            676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F
            56696577204C6566743D223230302220546F703D223832222057696474683D22
            393222204865696768743D22323922205265737472696374696F6E733D223234
            222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205641
            6C69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D
            656D6F56696577204C6566743D223233362C37373935332220546F703D223234
            392C3835383338222057696474683D22353022204865696768743D2231392220
            5265737472696374696F6E733D223234222053686F7748696E743D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D392220466F6E742E4E616D653D22417269616C204E61
            72726F772220466F6E742E5374796C653D223122204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            52696768742220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D2230222F3E3C2F63656C6C6D656D6F
            733E3C63656C6C6865616465726D656D6F733E3C546672784D656D6F56696577
            204C6566743D223230302220546F703D223338222057696474683D2239322220
            4865696768743D22323222205265737472696374696F6E733D2238222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C736522204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222056416C69676E3D22766143656E7465722220546578743D22
            5155414E544944414445222F3E3C546672784D656D6F56696577204C6566743D
            223239322220546F703D223338222057696474683D2239342220486569676874
            3D22323222205265737472696374696F6E733D2238222053686F7748696E743D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222056416C69676E3D22766143656E7465722220546578743D225155414E5449
            44414445222F3E3C546672784D656D6F56696577204C6566743D223338362220
            546F703D223338222057696474683D22393222204865696768743D2232322220
            5265737472696374696F6E733D2238222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222056416C69
            676E3D22766143656E7465722220546578743D225155414E544944414445222F
            3E3C546672784D656D6F56696577204C6566743D223437382220546F703D2233
            38222057696474683D22393422204865696768743D2232322220526573747269
            6374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F
            7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222056416C69676E3D227661
            43656E7465722220546578743D225155414E544944414445222F3E3C2F63656C
            6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D
            656D6F56696577204C6566743D223138372C37373935332220546F703D223231
            322C3835383338222057696474683D22343922204865696768743D2231382220
            5265737472696374696F6E733D223234222053686F7748696E743D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D392220466F6E742E4E616D653D22417269616C204E61
            72726F772220466F6E742E5374796C653D223022204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            52696768742220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D6E6D656D
            6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D6F5669
            6577204C6566743D223233362C37373935332220546F703D223231322C383538
            3338222057696474683D22353022204865696768743D22313822205265737472
            696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D392220466F6E742E4E616D653D22417269616C204E6172726F772220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D22535542544F54414C3A222F3E3C2F636F6C756D6E
            746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D656D
            6F56696577204C6566743D2232332C37373935332220546F703D223139332C38
            35383338222057696474683D2231363422204865696768743D22313922205265
            737472696374696F6E733D2238222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31312220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268614365
            6E7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D225155414E544944414445222F3E3C54
            6672784D656D6F56696577204C6566743D223138372C37373935332220546F70
            3D223139332C3835383338222057696474683D22393922204865696768743D22
            313922205265737472696374696F6E733D2238222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D392220466F6E742E4E616D653D22417269616C
            204E6172726F772220466F6E742E5374796C653D223122204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686143656E7465722220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D2254414D414E484F3A222F
            3E3C546672784D656D6F56696577204C6566743D223132372220546F703D2232
            31222057696474683D22393422204865696768743D2232322220526573747269
            6374696F6E733D2238222056697369626C653D2246616C7365222053686F7748
            696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686143656E746572222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C546672784D656D6F56696577
            204C6566743D2232332C37373935332220546F703D223231322C383538333822
            2057696474683D22363822204865696768743D22313922205265737472696374
            696F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31312220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223122204672616D652E5479703D22313522204672616D
            652E52696768744C696E652E436F6C6F723D2231363737373231352220476170
            583D22332220476170593D2233222048416C69676E3D22686143656E74657222
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D225245464552C38A4E4349413A222F3E3C54667278
            4D656D6F56696577204C6566743D2239312C37373935332220546F703D223231
            322C3835383338222057696474683D22363422204865696768743D2231392220
            5265737472696374696F6E733D2238222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31312220466F6E742E4E616D653D22417269616C204E61
            72726F772220466F6E742E5374796C653D223122204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            43656E7465722220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D22444553435249C387C3834F3A22
            2F3E3C546672784D656D6F56696577204C6566743D223135352C373739353322
            20546F703D223231322C3835383338222057696474683D223332222048656967
            68743D22313922205265737472696374696F6E733D2238222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22
            417269616C204E6172726F772220466F6E742E5374796C653D22312220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22434F523A22
            2F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C546672784D
            656D6F56696577204C6566743D2232332C37373935332220546F703D22323330
            2C3835383338222057696474683D22363822204865696768743D223139222052
            65737472696374696F6E733D223234222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31312220466F6E742E4E616D653D22417269616C204E61
            72726F772220466F6E742E5374796C653D223022204672616D652E5479703D22
            31312220476170583D22332220476170593D2233222048416C69676E3D226861
            43656E7465722220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D2239312C37373935332220546F703D223233302C383538
            3338222057696474683D22363422204865696768743D22313922205265737472
            696374696F6E733D223234222053686F7748696E743D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31312220466F6E742E4E616D653D22417269616C204E6172726F77
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231312220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22222F3E3C546672784D656D6F5669657720
            4C6566743D223135352C37373935332220546F703D223233302C383538333822
            2057696474683D22333222204865696768743D22313922205265737472696374
            696F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D31312220466F6E742E4E616D653D22417269616C204E6172726F77222046
            6F6E742E5374796C653D223022204672616D652E5479703D2231312220476170
            583D22332220476170593D2233222048416C69676E3D22686143656E74657222
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D22222F3E3C2F726F776D656D6F733E3C726F77746F
            74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D2232332C
            37373935332220546F703D223234392C3835383338222057696474683D223136
            3422204865696768743D22313922205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686152696768742220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            22546F74616C20646973706F6E6976656C20656D206573746F71756520666973
            69636F203D262336323B222F3E3C546672784D656D6F56696577204C6566743D
            2237362220546F703D223832222057696474683D22383022204865696768743D
            22323222205265737472696374696F6E733D2238222056697369626C653D2246
            616C7365222053686F7748696E743D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133
            2220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            22546F74616C222F3E3C546672784D656D6F56696577204C6566743D22313639
            2220546F703D223630222057696474683D22383022204865696768743D223232
            22205265737472696374696F6E733D2238222056697369626C653D2246616C73
            65222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22312220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133222046
            6F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22312220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686143656E7465722220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D22546F
            74616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66756E6374
            696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E733E3C63
            6F6C756D6E736F72743E3C6974656D20322F3E3C2F636F6C756D6E736F72743E
            3C726F77736F72743E3C6974656D20302F3E3C6974656D20302F3E3C6974656D
            20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
    end
  end
  object DB_EstoqueDisponivel: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select'
      'distinct(referencia), '
      'ORDEM_GRADE,'
      'DESCRICAO,'
      'cor,'
      'tamanho,'
      'QUANTIDADE'
      'from  VIEW_CADPRODUTOS_GRADES'
      'order by VIEW_CADPRODUTOS_GRADES.ORDEM_GRADE')
    Left = 512
    Top = 336
  end
  object FRX_ListagemOP: TfrxReport
    Version = '4.15.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847200000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 39918.404680266200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 665
    Top = 272
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frxDB_Listagem
        DataSetName = 'frxDB_ListagemOP'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_Listagem
        DataSetName = 'frxDB_ListagemOP'
        RowCount = 0
        object Memo10: TfrxMemoView
          Left = 1.889763780000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = frxDB_Listagem
          DataSetName = 'frxDB_ListagemOP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB_ListagemOP."CODIGO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 42.811070000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = frxDB_Listagem
          DataSetName = 'frxDB_ListagemOP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB_ListagemOP."DATA"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 541.086614170000000000
          Width = 52.913385830000000000
          Height = 15.118110240000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'QTDE_TOTAL'
          DataSet = frxDB_Listagem
          DataSetName = 'frxDB_ListagemOP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB_ListagemOP."QTDE_TOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 101.606370000000000000
          Width = 94.488188980000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATAFECHAMENTO'
          DataSet = frxDB_Listagem
          DataSetName = 'frxDB_ListagemOP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB_ListagemOP."DATAFECHAMENTO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 316.314950870000000000
          Width = 75.590558500000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'REFERENCIA'
          DataSet = frxDB_Listagem
          DataSetName = 'frxDB_ListagemOP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB_ListagemOP."REFERENCIA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 595.015748030000000000
          Top = 0.000041500000000000
          Width = 56.692908500000000000
          Height = 15.118110240000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'PERCENTUAL'
          DataSet = frxDB_Listagem
          DataSetName = 'frxDB_ListagemOP'
          DisplayFormat.FormatStr = '###,##0%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB_ListagemOP."PERCENTUAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 655.606680000000000000
          Top = 0.000041500000000000
          Width = 56.692908500000000000
          Height = 15.118110240000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'ENCERRADO'
          DataSet = frxDB_Listagem
          DataSetName = 'frxDB_ListagemOP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_ListagemOP."ENCERRADO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 395.685220000000000000
          Top = 0.000041500000000000
          Width = 143.622098500000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DESCRICAO'
          DataSet = frxDB_Listagem
          DataSetName = 'frxDB_ListagemOP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB_ListagemOP."DESCRICAO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 200.314960630000000000
          Width = 105.826798500000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDB_Listagem
          DataSetName = 'frxDB_ListagemOP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB_ListagemOP."LOTE"]-[frxDB_ListagemOP."LOTE_NOME"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Top = 64.251968503937000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'OP:')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          Left = 42.811070000000000000
          Top = 64.251968500000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 541.086614170000000000
          Top = 64.251968500000000000
          Width = 49.133855830000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PRODUZIR:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 554.590910000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 567.149603860000000000
          Top = 16.629921260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 567.149603860000000000
          Top = 31.748031500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 632.299215040000000000
          Top = 1.889763780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 632.299215040000000000
          Top = 16.629921260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 632.299215040000000000
          Top = 31.748031500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object MemoTitulo: TfrxMemoView
          Left = 1.220470000000000000
          Width = 550.464750000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Georgia'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Relat'#243'rio - P.C.P:'
            'Listagem de Ordem de Produ'#231#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 101.606370000000000000
          Top = 64.251968500000000000
          Width = 94.488188980000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA ENCERRAMENTO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 316.314950870000000000
          Top = 64.251968500000000000
          Width = 56.692908500000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 595.015748030000000000
          Top = 64.252010000000000000
          Width = 56.692908500000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CONCLUS'#195'O:')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 655.606680000000000000
          Top = 64.252010000000000000
          Width = 56.692908500000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ENCERRADO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo27: TfrxMemoView
          Left = 395.685220000000000000
          Top = 64.252010000000000000
          Width = 56.692908500000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 200.314960629921300000
          Top = 64.252010000000000000
          Width = 56.692908500000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'LOTE:')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
      end
    end
  end
  object db_ListagemOP: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_ORDEMPRODUCAO')
    Left = 664
    Top = 336
  end
  object frxDB_Listagem: TfrxDBDataset
    UserName = 'frxDB_ListagemOP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'LOTE=LOTE'
      'LOTE_NOME=LOTE_NOME'
      'APROVADO=APROVADO'
      'DATA=DATA'
      'DATAFECHAMENTO=DATAFECHAMENTO'
      'ENCERRADO=ENCERRADO'
      'NATUREZA=NATUREZA'
      'QTDE_TOTAL=QTDE_TOTAL'
      'QTDE_PRODUZIDA=QTDE_PRODUZIDA'
      'QTDE_RESTANTE=QTDE_RESTANTE'
      'QTDE_PERDAS=QTDE_PERDAS'
      'QTDE_DEFEITOS=QTDE_DEFEITOS'
      'TEMPOPRODUCAO=TEMPOPRODUCAO'
      'PERCENTUAL=PERCENTUAL'
      'OBSERVACAO=OBSERVACAO'
      'TERCEIRIZADOATUAL=TERCEIRIZADOATUAL'
      'FASEATUAL=FASEATUAL'
      'CELULAATUAL=CELULAATUAL'
      'MAQUINAATUAL=MAQUINAATUAL'
      'OPERADORATUAL=OPERADORATUAL'
      'PROCESSOATUAL=PROCESSOATUAL'
      'TURNOATUAL=TURNOATUAL'
      'DEFEITOATUAL=DEFEITOATUAL'
      'QUALIDADEATUAL=QUALIDADEATUAL'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'EMPRESA_1=EMPRESA_1'
      'CODIGO_1=CODIGO_1'
      'APROVADO_1=APROVADO_1')
    DataSet = db_ListagemOP
    BCDToCurrency = False
    Left = 664
    Top = 400
  end
  object frxFasesLocalizacao: TfrxReport
    Version = '4.15.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40968.454746088000000000
    ReportOptions.LastChange = 40968.733680185200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 185
    Top = 264
    Datasets = <
      item
        DataSet = frxdb_FasesLocalizacao
        DataSetName = 'dbFasesLocalizacao'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial Narrow'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GrupoFase: TfrxGroupHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 15.118110240000000000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'dbFasesLocalizacao."FASE"'
        object Shape2: TfrxShapeView
          Width = 718.110236220000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 16053492
          Frame.Color = clWhite
        end
        object txtFase: TfrxMemoView
          Left = 4.000000000000000000
          Top = 1.000000000000000000
          Width = 294.803340000000000000
          Height = 11.338582680000000000
          ShowHint = False
          Color = 16053492
          DataSet = frxdb_FasesLocalizacao
          DataSetName = 'dbFasesLocalizacao'
          Memo.UTF8W = (
            
              '[dbFasesLocalizacao."FASEORDEM"] - [dbFasesLocalizacao."FASE_NOM' +
              'E"]')
          Style = 'Group header'
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxdb_FasesLocalizacao
        DataSetName = 'dbFasesLocalizacao'
        RowCount = 0
        object Memo17: TfrxMemoView
          Width = 41.574803150000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = frxdb_FasesLocalizacao
          DataSetName = 'dbFasesLocalizacao'
          Memo.UTF8W = (
            '[dbFasesLocalizacao."CODIGO"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 408.480314960000000000
          Width = 51.401574800000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'DATAINICIOFASE'
          DataSet = frxdb_FasesLocalizacao
          DataSetName = 'dbFasesLocalizacao'
          Memo.UTF8W = (
            '[dbFasesLocalizacao."DATAINICIOFASE"]')
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          Left = 465.314960630000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Visible = False
          ShowHint = False
          DataField = 'DATARETORNOFASE'
          DataSet = frxdb_FasesLocalizacao
          DataSetName = 'dbFasesLocalizacao'
          Memo.UTF8W = (
            '[dbFasesLocalizacao."DATARETORNOFASE"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 538.803149610000000000
          Width = 98.511927290000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'TERCEIRIZADO_NOME'
          DataSet = frxdb_FasesLocalizacao
          DataSetName = 'dbFasesLocalizacao'
          Memo.UTF8W = (
            '[dbFasesLocalizacao."TERCEIRIZADO_NOME"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 656.503937010000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'QTDE_PRODUZIR'
          DataSet = frxdb_FasesLocalizacao
          DataSetName = 'dbFasesLocalizacao'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbFasesLocalizacao."QTDE_PRODUZIR"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 43.464566930000000000
          Width = 47.244094490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'DATAOP'
          DataSet = frxdb_FasesLocalizacao
          DataSetName = 'dbFasesLocalizacao'
          Memo.UTF8W = (
            '[dbFasesLocalizacao."DATAOP"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 96.047244090000000000
          Width = 43.464564490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'DATAPREVISAO'
          DataSet = frxdb_FasesLocalizacao
          DataSetName = 'dbFasesLocalizacao'
          Memo.UTF8W = (
            '[dbFasesLocalizacao."DATAPREVISAO"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 175.748031500000000000
          Width = 221.102467170000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxdb_FasesLocalizacao
          DataSetName = 'dbFasesLocalizacao'
          Memo.UTF8W = (
            
              '[dbFasesLocalizacao."REFERENCIA"] - [dbFasesLocalizacao."DESCRIC' +
              'AO"]')
          Style = 'Data'
          WordWrap = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 15.118110240000000000
        ParentFont = False
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo22: TfrxMemoView
          Left = 656.503937010000000000
          Width = 56.692913390000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbFasesLocalizacao."QTDE_PRODUZIR">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 551.811380000000000000
          Width = 94.488213390000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE DA FASE:')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Top = 64.251968500000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OP:')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          Left = 43.464566930000000000
          Top = 64.251968500000000000
          Width = 47.244094490000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA OP:')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 408.480314960000000000
          Top = 64.251968500000000000
          Width = 51.401574800000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'INICIO FASE:')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 465.314960630000000000
          Top = 64.251968500000000000
          Width = 68.031496060000000000
          Height = 11.338590000000000000
          Visible = False
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DATA RETORNO:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 554.590910000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo4: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 567.149603860000000000
          Top = 16.629921260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 567.149603860000000000
          Top = 31.748031500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 632.299215040000000000
          Top = 1.889763780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 632.299215040000000000
          Top = 16.629921260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 632.299215040000000000
          Top = 31.748031500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object MemoTitulo: TfrxMemoView
          Left = 1.220470000000000000
          Width = 550.464750000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Georgia'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Relat'#243'rio - P.C.P:'
            'Localiza'#231#227'o de Fase')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 175.748031500000000000
          Top = 64.251968500000000000
          Width = 58.582677170000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          Left = 538.803149610000000000
          Top = 64.252010000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'LOCALIZA'#199#195'O:')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 645.165347010000000000
          Top = 64.252010000000000000
          Width = 68.031503390000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE ENVIADA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 96.047244090000000000
          Top = 64.252010000000000000
          Width = 73.700804490000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PREV. ENCERR:')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 15.118120000000000000
        ParentFont = False
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 656.503937010000000000
          Width = 56.692913390000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbFasesLocalizacao."QTDE_PRODUZIR">,MasterData1)]')
          WordWrap = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 548.031850000000000000
          Width = 94.488213390000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE GLOBAL:')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object db_FasesLocalizacao: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  * FROM FNC_PCPFASERELOCALIZACAO(1)')
    Left = 184
    Top = 328
  end
  object frxdb_FasesLocalizacao: TfrxDBDataset
    UserName = 'dbFasesLocalizacao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'LOTE=LOTE'
      'LOTE_NOME=LOTE_NOME'
      'DATAOP=DATAOP'
      'DATAPREVISAO=DATAPREVISAO'
      'DATAINICIOFASE=DATAINICIOFASE'
      'DATARETORNOFASE=DATARETORNOFASE'
      'TERCEIRIZADO=TERCEIRIZADO'
      'TERCEIRIZADO_NOME=TERCEIRIZADO_NOME'
      'FASE=FASE'
      'FASEORDEM=FASEORDEM'
      'FASE_NOME=FASE_NOME'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'QTDE_PRODUZIR=QTDE_PRODUZIR')
    DataSet = db_FasesLocalizacao
    BCDToCurrency = False
    Left = 184
    Top = 392
  end
  object SP_GerarNecessidades: TUniStoredProc
    StoredProcName = 'SPREL_NECESSIDADEPRODUCAO'
    Connection = FrmPrincipal.DBConexao
    Left = 528
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'NEMPRESA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DATA_INI'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DATA_FIM'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'SPREL_NECESSIDADEPRODUCAO'
  end
  object frxReport1: TfrxReport
    Version = '4.15.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40698.768012303200000000
    ReportOptions.Name = 'Pe'#231'as Produzidas'
    ReportOptions.LastChange = 40698.777050324100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 448
    Top = 40
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'PecasProduzidas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object MemoTitulo: TfrxMemoView
          Left = 2.000000000000000000
          Top = 3.779530000000000000
          Width = 554.244280000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio - PCP'
            'Pe'#231'as Produzidas')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 553.590910000000000000
          Top = 3.779530000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 563.149603860000000000
          Top = 5.669293780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 564.149603860000000000
          Top = 20.409451260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 564.149603860000000000
          Top = 35.527561500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 629.299215040000000000
          Top = 5.669293780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 629.299215040000000000
          Top = 20.409451260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 629.299215040000000000
          Top = 35.527561500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Child1: TfrxChild
        Height = 175.133890000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        object DBCross1: TfrxDBCrossView
          Align = baWidth
          Top = 11.338590000000000000
          Width = 384.000000000000000000
          Height = 114.000000000000000000
          ShowHint = True
          CellLevels = 3
          ColumnLevels = 0
          DownThenAcross = True
          PlainCells = True
          RowLevels = 4
          ShowColumnTotal = False
          CellFields.Strings = (
            'QTDE_PRODUZIR'
            'QTDE_PRODUZIDO'
            'CONCLUIDO')
          DataSet = frxDBDataset1
          DataSetName = 'PecasProduzidas'
          RowFields.Strings = (
            'referencia'
            'descricao'
            'cor'
            'tamanho')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2232303622
            20546F703D223231322C3936303733222057696474683D223439222048656967
            68743D22313822205265737472696374696F6E733D223234222053686F774869
            6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            73652220446973706C6179466F726D61742E466F726D61745374723D22232323
            2C2323302220446973706C6179466F726D61742E4B696E643D22666B4E756D65
            7269632220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223022204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
            546672784D656D6F56696577204C6566743D223235352220546F703D22323132
            2C3936303733222057696474683D22353422204865696768743D223138222052
            65737472696374696F6E733D223234222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C73652220446973706C
            6179466F726D61742E466F726D61745374723D222323232C2323302220446973
            706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E74
            2E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D392220466F6E742E4E616D653D22417269616C204E61
            72726F772220466F6E742E5374796C653D223022204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            52696768742220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D2230222F3E3C546672784D656D6F56
            696577204C6566743D223330392220546F703D223231322C3936303733222057
            696474683D22353522204865696768743D22313822205265737472696374696F
            6E733D223234222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220446973706C6179466F726D61742E
            466F726D61745374723D222323232C232330252220446973706C6179466F726D
            61742E4B696E643D22666B4E756D657269632220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D223025222F3E3C546672784D656D6F56696577204C6566
            743D223337362220546F703D223338222057696474683D223532222048656967
            68743D22313822205265737472696374696F6E733D223234222053686F774869
            6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D22
            417269616C204E6172726F772220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686152696768742220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C54
            6672784D656D6F56696577204C6566743D223334322220546F703D2233362220
            57696474683D22343622204865696768743D2231382220526573747269637469
            6F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223337372220546F703D223337222057696474683D2235382220486569676874
            3D22313922205265737472696374696F6E733D223234222053686F7748696E74
            3D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C7365
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D2268615269676874222056416C69676E3D2276614365
            6E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C65
            66743D22302220546F703D2230222057696474683D223022204865696768743D
            223022205265737472696374696F6E733D2238222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
            722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D22
            302220546F703D2230222057696474683D223022204865696768743D22302220
            5265737472696374696F6E733D2238222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D2268615269676874222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D2232373822
            20546F703D223630222057696474683D22373322204865696768743D22323022
            205265737472696374696F6E733D223234222053686F7748696E743D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C65
            66743D223335312220546F703D223630222057696474683D2238322220486569
            6768743D22323022205265737472696374696F6E733D223234222053686F7748
            696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D65
            3D22417269616C2220466F6E742E5374796C653D223122204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686152696768742220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D65
            6D6F56696577204C6566743D22302220546F703D2230222057696474683D2230
            22204865696768743D223022205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D2268615269676874222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F5669
            6577204C6566743D22302220546F703D2230222057696474683D223022204865
            696768743D223022205265737472696374696F6E733D2238222053686F774869
            6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            736522204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D2268615269676874222056416C69676E3D227661
            43656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C
            6566743D223230362220546F703D223233302C3936303733222057696474683D
            22343922204865696768743D22313822205265737472696374696F6E733D2232
            34222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223122204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D22686152696768742220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D2230222F3E3C546672784D656D6F56696577204C6566743D223235352220
            546F703D223233302C3936303733222057696474683D22353422204865696768
            743D22313822205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686152696768742220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C5466
            72784D656D6F56696577204C6566743D223330392220546F703D223233302C39
            36303733222057696474683D22353522204865696768743D2231382220526573
            7472696374696F6E733D223234222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22222F3E3C2F63656C6C6D656D6F733E3C63
            656C6C6865616465726D656D6F733E3C546672784D656D6F56696577204C6566
            743D223230362220546F703D223139342C3936303733222057696474683D2234
            3922204865696768743D22313822205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            22332220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2250524F44555A49523A222F3E3C54667278
            4D656D6F56696577204C6566743D223235352220546F703D223139342C393630
            3733222057696474683D22353422204865696768743D22313822205265737472
            696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D392220466F6E742E4E616D653D22417269616C204E6172726F772220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204761
            70583D22332220476170593D22332220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2250524F4455
            5A49444F3A222F3E3C546672784D656D6F56696577204C6566743D2233303922
            20546F703D223139342C3936303733222057696474683D223535222048656967
            68743D22313822205265737472696374696F6E733D2238222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D22332220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22434F4E434C5549444F3A222F3E3C546672784D656D6F5669
            6577204C6566743D223337362220546F703D223230222057696474683D223532
            22204865696768743D22313822205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            332220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22515444455F50524F44555A4952222F3E3C54
            6672784D656D6F56696577204C6566743D223334322220546F703D2231382220
            57696474683D22343622204865696768743D2231382220526573747269637469
            6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            392220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
            332220476170593D22332220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22515444455F50524F44
            555A49444F222F3E3C546672784D656D6F56696577204C6566743D2233373722
            20546F703D223138222057696474683D22353822204865696768743D22313922
            205265737472696374696F6E733D2238222053686F7748696E743D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C736522204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222056416C
            69676E3D22766143656E7465722220546578743D22434F4E434C5549444F222F
            3E3C546672784D656D6F56696577204C6566743D223532352220546F703D2231
            3336222057696474683D22353322204865696768743D22323222205265737472
            696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222056416C69676E3D2276
            6143656E7465722220546578743D22515444455F50524F44555A4952222F3E3C
            546672784D656D6F56696577204C6566743D223537382220546F703D22313336
            222057696474683D22373222204865696768743D223232222052657374726963
            74696F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222056416C69676E3D22766143
            656E7465722220546578743D22515444455F50524F44555A49444F222F3E3C54
            6672784D656D6F56696577204C6566743D223635302220546F703D2231333622
            2057696474683D22373122204865696768743D22323222205265737472696374
            696F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222056416C69676E3D2276614365
            6E7465722220546578743D22434F4E434C5549444F222F3E3C546672784D656D
            6F56696577204C6566743D223732312220546F703D2231333622205769647468
            3D22343022204865696768743D22323222205265737472696374696F6E733D22
            38222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222056416C69676E3D22766143656E7465722220
            546578743D22515444455F50524F44555A4952222F3E3C546672784D656D6F56
            696577204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D2238222053686F7748
            696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222056416C69676E3D22766143656E7465722220546578743D225154
            44455F50524F44555A49444F222F3E3C546672784D656D6F56696577204C6566
            743D22302220546F703D2230222057696474683D223022204865696768743D22
            3022205265737472696374696F6E733D2238222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C736522204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222056
            416C69676E3D22766143656E7465722220546578743D22434F4E434C5549444F
            222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D2230
            222057696474683D223022204865696768743D22302220526573747269637469
            6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222056416C69676E3D22766143656E
            7465722220546578743D22515444455F50524F44555A4952222F3E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C736522204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222056416C69676E3D22766143656E7465722220546578
            743D22515444455F50524F44555A49444F222F3E3C546672784D656D6F566965
            77204C6566743D22302220546F703D2230222057696474683D22302220486569
            6768743D223022205265737472696374696F6E733D2238222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222056416C69676E3D22766143656E7465722220546578743D22434F4E43
            4C5549444F222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C756D
            6E6D656D6F733E3C546672784D656D6F56696577204C6566743D223230362220
            546F703D223139342C3936303733222057696474683D22313538222048656967
            68743D223022205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22
            56657264616E612220466F6E742E5374796C653D223022204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686152696768742220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D6E
            6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D
            6F56696577204C6566743D223738302220546F703D223239222057696474683D
            22373022204865696768743D2231303722205265737472696374696F6E733D22
            38222056697369626C653D2246616C7365222053686F7748696E743D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31312220466F6E742E4E616D653D225461686F6D61
            2220466F6E742E5374796C653D223122204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            742220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22537562746F74616C3A222F3E3C2F636F6C75
            6D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D
            656D6F56696577204C6566743D2232302220546F703D223137342C3936303733
            222057696474683D2231383622204865696768743D2230222052657374726963
            74696F6E733D2238222056697369626C653D2246616C7365222053686F774869
            6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D
            225461686F6D612220466F6E742E5374796C653D223122204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686143656E7465722220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D226573746F717565222F3E
            3C546672784D656D6F56696577204C6566743D223230362220546F703D223137
            342C3936303733222057696474683D2231353822204865696768743D22323022
            205265737472696374696F6E733D2238222053686F7748696E743D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22434F4D504152415449564F53222F3E3C546672
            784D656D6F56696577204C6566743D223231302220546F703D22302220576964
            74683D2231353822204865696768743D22323222205265737472696374696F6E
            733D2238222056697369626C653D2246616C7365222053686F7748696E743D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686143656E746572222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C546672784D656D6F56696577204C656674
            3D2232302220546F703D223137342C3936303733222057696474683D22353822
            204865696768743D22333822205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E61
            6D653D22417269616C204E6172726F772220466F6E742E5374796C653D223122
            204672616D652E5479703D22313522204672616D652E52696768744C696E652E
            436F6C6F723D2231363737373231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            5245464552C38A4E4349413A222F3E3C546672784D656D6F56696577204C6566
            743D2237382220546F703D223137342C3936303733222057696474683D223534
            22204865696768743D22333822205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            444553435249C387C3834F3A222F3E3C546672784D656D6F56696577204C6566
            743D223133322220546F703D223137342C3936303733222057696474683D2232
            3622204865696768743D22333822205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            22434F523A222F3E3C546672784D656D6F56696577204C6566743D2231353822
            20546F703D223137342C3936303733222057696474683D223438222048656967
            68743D22333822205265737472696374696F6E733D2238222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D2254414D414E48
            4F3A222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C5466
            72784D656D6F56696577204C6566743D2232302220546F703D223231322C3936
            303733222057696474683D22353822204865696768743D223138222052657374
            72696374696F6E733D223234222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F77
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22222F3E3C546672784D656D6F5669657720
            4C6566743D2237382220546F703D223231322C3936303733222057696474683D
            22353422204865696768743D22313822205265737472696374696F6E733D2232
            34222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223022204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D22686143656E7465722220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D22222F3E3C546672784D656D6F56696577204C6566743D223133322220
            546F703D223231322C3936303733222057696474683D22323622204865696768
            743D22313822205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
            72784D656D6F56696577204C6566743D223135382220546F703D223231322C39
            36303733222057696474683D22343822204865696768743D2231382220526573
            7472696374696F6E733D223234222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C2F726F776D656D6F733E3C72
            6F77746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D
            2232302220546F703D223233302C3936303733222057696474683D2231383622
            204865696768743D22313822205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E61
            6D653D22417269616C204E6172726F772220466F6E742E5374796C653D223122
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686152696768742220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D225175
            616E7469646164652050726F64757A696461203D262336323B222F3E3C546672
            784D656D6F56696577204C6566743D2237362220546F703D2238322220576964
            74683D22383022204865696768743D22323222205265737472696374696F6E73
            3D2238222056697369626C653D2246616C7365222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22546F74616C222F3E3C546672784D656D
            6F56696577204C6566743D223136392220546F703D223630222057696474683D
            22383022204865696768743D22323222205265737472696374696F6E733D2238
            222056697369626C653D2246616C7365222053686F7748696E743D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22546F74616C222F3E3C546672784D656D6F5669
            6577204C6566743D223231322220546F703D223431222057696474683D223830
            22204865696768743D22323222205265737472696374696F6E733D2238222056
            697369626C653D2246616C7365222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E
            742E5374796C653D223122204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D22686143656E746572222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22546F74616C222F3E3C2F726F77746F74616C6D656D6F
            733E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C6974656D20
            312F3E3C6974656D20302F3E3C2F63656C6C66756E6374696F6E733E3C636F6C
            756D6E736F72743E3C6974656D20322F3E3C2F636F6C756D6E736F72743E3C72
            6F77736F72743E3C6974656D20302F3E3C6974656D20302F3E3C6974656D2030
            2F3E3C6974656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
      end
    end
  end
  object UniQuery1: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT'
      'DISTINCT(REFERENCIA),'
      'DESCRICAO,'
      'COR,'
      'TAMANHO,'
      'ORDEM_GRADE,'
      'QTDE_VENDIDO,'
      'QTDE_DEMANDA,'
      'QTDE_PRODUZIR,'
      'QTDE_PRODUZIDO,'
      'QTDE_PRODUZINDO,'
      'QTDE_EXCEDENTE,'
      'QTDE_RESERVADO,'
      'QTDE_FISICO,'
      'CONCLUIDO'
      'FROM  VIEW_MOVIMENTOS_PRODUTOS'
      'ORDER BY REFERENCIA, COR, ORDEM_GRADE')
    Left = 448
    Top = 96
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'PecasProduzidas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'COR=COR'
      'TAMANHO=TAMANHO'
      'ORDEM_GRADE=ORDEM_GRADE'
      'QTDE_VENDIDO=QTDE_VENDIDO'
      'QTDE_DEMANDA=QTDE_DEMANDA'
      'QTDE_PRODUZIR=QTDE_PRODUZIR'
      'QTDE_PRODUZIDO=QTDE_PRODUZIDO'
      'QTDE_PRODUZINDO=QTDE_PRODUZINDO'
      'QTDE_EXCEDENTE=QTDE_EXCEDENTE'
      'QTDE_RESERVADO=QTDE_RESERVADO'
      'QTDE_FISICO=QTDE_FISICO'
      'CONCLUIDO=CONCLUIDO')
    DataSet = UniQuery1
    BCDToCurrency = False
    Left = 448
    Top = 160
  end
  object frxNecessidadeAnalitico: TfrxReport
    Version = '4.15.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Vestis Sistemas'
    ReportOptions.CreateDate = 39915.896399919000000000
    ReportOptions.Name = 'Necessidade de Produ'#231#227'o'
    ReportOptions.LastChange = 40994.555402986100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 817
    Top = 264
    Datasets = <
      item
        DataSet = FRXDB_frxAndamentoFasesAnalitico
        DataSetName = 'dbNecessidadeAnalitico'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 0.472480000000000000
          Width = 550.464750000000000000
          Height = 52.913388270000000000
          ShowHint = False
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Relat'#243'rio - PCP'
            'NECESSIDADE DE PRODU'#199#195'O - ANAL'#205'TICO')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 555.590910000000000000
          Top = 0.472480000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          ShowHint = False
          Color = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo2: TfrxMemoView
          Left = 566.149603860000000000
          Top = 2.362243780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 567.149603860000000000
          Top = 17.102401260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 567.149603860000000000
          Top = 32.220511500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 632.299215040000000000
          Top = 2.362243780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 632.299215040000000000
          Top = 17.102401260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 632.299215040000000000
          Top = 32.220511500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 75.590600000000000000
        Top = 336.378170000000000000
        Visible = False
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 139.842610000000000000
        ParentFont = False
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object DBCross2: TfrxDBCrossView
          Align = baClient
          Width = 538.000000000000000000
          Height = 120.000000000000000000
          ShowHint = True
          CellLevels = 7
          ColumnLevels = 0
          DownThenAcross = False
          PlainCells = True
          RowLevels = 4
          CellFields.Strings = (
            'QTDE_FISICO'
            'QTDE_VENDIDO'
            'QTDE_ENTREGUE'
            'QTDE_PENDENTE'
            'QTDE_PRODUZINDO'
            'QTDE_DEMANDA'
            'QTDE_EXCEDENTE')
          DataSet = FRXDB_frxAndamentoFasesAnalitico
          DataSetName = 'dbNecessidadeAnalitico'
          RowFields.Strings = (
            'referencia'
            'descricao'
            'cor'
            'tamanho')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2231383422
            20546F703D223138382C3036333038222057696474683D223634222048656967
            68743D22313622205265737472696374696F6E733D223234222053686F774869
            6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            73652220446973706C6179466F726D61742E466F726D61745374723D22232323
            2C2323302220446973706C6179466F726D61742E4B696E643D22666B4E756D65
            7269632220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D382220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223022204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
            546672784D656D6F56696577204C6566743D223234382220546F703D22313838
            2C3036333038222057696474683D22333922204865696768743D223136222052
            65737472696374696F6E733D223234222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C73652220446973706C
            6179466F726D61742E466F726D61745374723D222323232C2323302220446973
            706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E74
            2E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D382220466F6E742E4E616D653D22417269616C204E61
            72726F772220466F6E742E5374796C653D223022204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            52696768742220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D2230222F3E3C546672784D656D6F56
            696577204C6566743D223238372220546F703D223138382C3036333038222057
            696474683D22343522204865696768743D22313622205265737472696374696F
            6E733D223234222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220446973706C6179466F726D61742E
            466F726D61745374723D222323232C2323302220446973706C6179466F726D61
            742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D382220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223333322220546F703D223138382C3036333038222057696474683D22343422
            204865696768743D22313622205265737472696374696F6E733D223234222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220446973706C6179466F726D61742E466F726D6174537472
            3D222323232C2323302220446973706C6179466F726D61742E4B696E643D2266
            6B4E756D657269632220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3022204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686152696768742220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            30222F3E3C546672784D656D6F56696577204C6566743D223337362220546F70
            3D223138382C3036333038222057696474683D22353322204865696768743D22
            313622205265737472696374696F6E733D223234222053686F7748696E743D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            446973706C6179466F726D61742E466F726D61745374723D222323232C232330
            2220446973706C6179466F726D61742E4B696E643D22666B4E756D6572696322
            20466F6E742E436861727365743D22302220466F6E742E436F6C6F723D223022
            20466F6E742E4865696768743D222D382220466F6E742E4E616D653D22417269
            616C204E6172726F772220466F6E742E5374796C653D223022204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686152696768742220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D2230222F3E3C54667278
            4D656D6F56696577204C6566743D223432392220546F703D223138382C303633
            3038222057696474683D22353622204865696768743D22313622205265737472
            696374696F6E733D223234222053686F7748696E743D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C73652220446973706C6179466F
            726D61742E466F726D61745374723D222323232C2323302220446973706C6179
            466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D382220466F6E742E4E616D653D22417269616C204E6172726F77
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            742220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D2230222F3E3C546672784D656D6F5669657720
            4C6566743D223438352220546F703D223138382C303633303822205769647468
            3D22333322204865696768743D22313622205265737472696374696F6E733D22
            3234222053686F7748696E743D2246616C73652220416C6C6F77457870726573
            73696F6E733D2246616C73652220446973706C6179466F726D61742E466F726D
            61745374723D222323232C2323302220446973706C6179466F726D61742E4B69
            6E643D22666B4E756D657269632220466F6E742E436861727365743D22302220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D382220
            466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374
            796C653D223022204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686152696768742220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22302220
            546F703D2230222057696474683D223022204865696768743D22302220526573
            7472696374696F6E733D2238222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            2268615269676874222056416C69676E3D22766143656E746572222054657874
            3D22222F3E3C546672784D656D6F56696577204C6566743D223230302220546F
            703D22313830222057696474683D22353422204865696768743D223239222052
            65737472696374696F6E733D223234222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D2268615269676874222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22323534
            2220546F703D22313830222057696474683D22353322204865696768743D2232
            3922205265737472696374696F6E733D223234222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223330372220546F703D22313538222057696474683D22353422204865696768
            743D22323222205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D2268615269676874222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C
            6566743D223336312220546F703D22313538222057696474683D223533222048
            65696768743D22323222205265737472696374696F6E733D223234222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C736522204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D2268615269676874222056416C69676E3D
            22766143656E7465722220546578743D2230222F3E3C546672784D656D6F5669
            6577204C6566743D223230302220546F703D22313830222057696474683D2235
            3422204865696768743D22323922205265737472696374696F6E733D22323422
            2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D2268615269676874222056416C
            69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D65
            6D6F56696577204C6566743D223235342220546F703D22313830222057696474
            683D22353322204865696768743D22323922205265737472696374696F6E733D
            223234222053686F7748696E743D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C5466
            72784D656D6F56696577204C6566743D223330372220546F703D223138302220
            57696474683D22373222204865696768743D2232392220526573747269637469
            6F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            676874222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223337392220546F703D2231
            3538222057696474683D22353422204865696768743D22323222205265737472
            696374696F6E733D223234222053686F7748696E743D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            68615269676874222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F56696577204C6566743D223230302220546F
            703D22313830222057696474683D22353422204865696768743D223239222052
            65737472696374696F6E733D223234222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D2268615269676874222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22323534
            2220546F703D22313830222057696474683D22353322204865696768743D2232
            3922205265737472696374696F6E733D223234222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223330372220546F703D22313830222057696474683D22373222204865696768
            743D22323922205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D2268615269676874222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C
            6566743D223337392220546F703D22313830222057696474683D223731222048
            65696768743D22323922205265737472696374696F6E733D223234222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C736522204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D2268615269676874222056416C69676E3D
            22766143656E7465722220546578743D2230222F3E3C546672784D656D6F5669
            6577204C6566743D223230362220546F703D223232382C393630373322205769
            6474683D22373422204865696768743D22313822205265737472696374696F6E
            733D223234222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222050617265
            6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
            20546578743D2230222F3E3C546672784D656D6F56696577204C6566743D2231
            38342220546F703D223230342C3036333038222057696474683D223634222048
            65696768743D22313622205265737472696374696F6E733D223234222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E616D
            653D22417269616C204E6172726F772220466F6E742E5374796C653D22312220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223234382220546F703D2232
            30342C3036333038222057696474683D22333922204865696768743D22313622
            205265737472696374696F6E733D223234222053686F7748696E743D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D382220466F6E742E4E616D653D22417269616C204E
            6172726F772220466F6E742E5374796C653D223122204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            6152696768742220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D2230222F3E3C546672784D656D6F
            56696577204C6566743D223238372220546F703D223230342C30363330382220
            57696474683D22343522204865696768743D2231362220526573747269637469
            6F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D382220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E
            742E5374796C653D223122204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223333322220546F703D223230342C3036333038222057696474683D22343422
            204865696768743D22313622205265737472696374696F6E733D223234222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2230
            222F3E3C546672784D656D6F56696577204C6566743D223337362220546F703D
            223230342C3036333038222057696474683D22353322204865696768743D2231
            3622205265737472696374696F6E733D223234222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C
            204E6172726F772220466F6E742E5374796C653D223122204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686152696768742220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D65
            6D6F56696577204C6566743D223432392220546F703D223230342C3036333038
            222057696474683D22353622204865696768743D223136222052657374726963
            74696F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D382220466F6E742E4E616D653D22417269616C204E6172726F77222046
            6F6E742E5374796C653D223122204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222048416C69676E3D22686152696768742220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D2230222F3E3C546672784D656D6F56696577204C6566
            743D223438352220546F703D223230342C3036333038222057696474683D2233
            3322204865696768743D22313622205265737472696374696F6E733D22323422
            2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686152696768742220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F56696577204C6566743D223138342220546F
            703D223232302C3036333038222057696474683D22363422204865696768743D
            22313622205265737472696374696F6E733D223234222053686F7748696E743D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            20446973706C6179466F726D61742E466F726D61745374723D222323232C2323
            302220446973706C6179466F726D61742E4B696E643D22666B4E756D65726963
            2220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D382220466F6E742E4E616D653D224172
            69616C204E6172726F772220466F6E742E5374796C653D223122204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686152696768742220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D2230222F3E3C546672
            784D656D6F56696577204C6566743D223234382220546F703D223232302C3036
            333038222057696474683D22333922204865696768743D223136222052657374
            72696374696F6E733D223234222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C73652220446973706C617946
            6F726D61742E466F726D61745374723D222323232C2323302220446973706C61
            79466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D382220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C546672784D656D6F56696577
            204C6566743D223238372220546F703D223232302C3036333038222057696474
            683D22343522204865696768743D22313622205265737472696374696F6E733D
            223234222053686F7748696E743D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C73652220446973706C6179466F726D61742E466F72
            6D61745374723D222323232C2323302220446973706C6179466F726D61742E4B
            696E643D22666B4E756D657269632220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3822
            20466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E53
            74796C653D223122204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D22686152696768742220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D2230222F3E3C546672784D656D6F56696577204C6566743D223333
            322220546F703D223232302C3036333038222057696474683D22343422204865
            696768743D22313622205265737472696374696F6E733D223234222053686F77
            48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
            616C73652220446973706C6179466F726D61742E466F726D61745374723D2223
            23232C2323302220446973706C6179466F726D61742E4B696E643D22666B4E75
            6D657269632220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E616D
            653D22417269616C204E6172726F772220466F6E742E5374796C653D22312220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223337362220546F703D2232
            32302C3036333038222057696474683D22353322204865696768743D22313622
            205265737472696374696F6E733D223234222053686F7748696E743D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220446973
            706C6179466F726D61742E466F726D61745374723D222323232C232330222044
            6973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F
            6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C20
            4E6172726F772220466F6E742E5374796C653D223122204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686152696768742220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D2230222F3E3C546672784D656D
            6F56696577204C6566743D223432392220546F703D223232302C303633303822
            2057696474683D22353622204865696768743D22313622205265737472696374
            696F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C73652220446973706C6179466F726D61
            742E466F726D61745374723D222323232C2323302220446973706C6179466F72
            6D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365
            743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D382220466F6E742E4E616D653D22417269616C204E6172726F77222046
            6F6E742E5374796C653D223122204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222048416C69676E3D22686152696768742220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D2230222F3E3C546672784D656D6F56696577204C6566
            743D223438352220546F703D223232302C3036333038222057696474683D2233
            3322204865696768743D22313622205265737472696374696F6E733D22323422
            2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220446973706C6179466F726D61742E466F726D617453
            74723D222323232C2323302220446973706C6179466F726D61742E4B696E643D
            22666B4E756D657269632220466F6E742E436861727365743D22302220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E
            742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C65
            3D223122204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D
            6F733E3C546672784D656D6F56696577204C6566743D223138342220546F703D
            223137322C3036333038222057696474683D22363422204865696768743D2231
            3622205265737472696374696F6E733D2238222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C20
            4E6172726F772220466F6E742E5374796C653D223122204672616D652E547970
            3D2231352220476170583D22332220476170593D22332220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D224553544F5155452046C38D5349434F3A222F3E3C546672784D656D6F56
            696577204C6566743D223234382220546F703D223137322C3036333038222057
            696474683D22333922204865696768743D22313622205265737472696374696F
            6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220436F6C6F723D222D31363737373231
            362220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D382220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D22332220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D2256454E4449444F3A222F3E3C546672784D656D6F56696577
            204C6566743D223238372220546F703D223137322C3036333038222057696474
            683D22343522204865696768743D22313622205265737472696374696F6E733D
            2238222053686F7748696E743D2246616C73652220416C6C6F77457870726573
            73696F6E733D2246616C73652220436F6C6F723D222D31363737373231362220
            466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D382220466F6E742E4E616D653D2241726961
            6C204E6172726F772220466F6E742E5374796C653D223122204672616D652E54
            79703D2231352220476170583D22332220476170593D22332220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22454E5452454755453A222F3E3C546672784D656D6F56696577204C
            6566743D223333322220546F703D223137322C3036333038222057696474683D
            22343422204865696768743D22313622205265737472696374696F6E733D2238
            222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220436F6C6F723D222D31363737373231362220466F
            6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C20
            4E6172726F772220466F6E742E5374796C653D223122204672616D652E547970
            3D2231352220476170583D22332220476170593D22332220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D2250454E44454E54453A222F3E3C546672784D656D6F56696577204C6566
            743D223337362220546F703D223137322C3036333038222057696474683D2235
            3322204865696768743D22313622205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220436F6C6F723D2231323633393432342220466F6E742E
            436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D382220466F6E742E4E616D653D22417269616C204E6172
            726F772220466F6E742E5374796C653D223122204672616D652E5479703D2231
            352220476170583D22332220476170593D22332220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            50524F44555A494E444F3A222F3E3C546672784D656D6F56696577204C656674
            3D223432392220546F703D223137322C3036333038222057696474683D223536
            22204865696768743D22313622205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220436F6C6F723D2231323633393432342220466F6E742E43
            6861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D382220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D22332220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D224E
            454345535349444144453A222F3E3C546672784D656D6F56696577204C656674
            3D223438352220546F703D223137322C3036333038222057696474683D223333
            22204865696768743D22313622205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            332220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22534F4252413A222F3E3C546672784D656D6F
            56696577204C6566743D223537382220546F703D22313336222057696474683D
            22373222204865696768743D22323222205265737472696374696F6E733D2238
            222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222056416C69676E3D22766143656E746572222054
            6578743D22515444455F46495349434F222F3E3C546672784D656D6F56696577
            204C6566743D223635302220546F703D22313336222057696474683D22373122
            204865696768743D22323222205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222056416C69676E3D22766143656E7465722220546578743D
            22515444455F56454E4449444F222F3E3C546672784D656D6F56696577204C65
            66743D223732312220546F703D22313336222057696474683D22343022204865
            696768743D22323222205265737472696374696F6E733D2238222053686F7748
            696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222056416C69676E3D22766143656E7465722220546578743D225154
            44455F454E545245475545222F3E3C546672784D656D6F56696577204C656674
            3D223738302220546F703D22313336222057696474683D223534222048656967
            68743D22323222205265737472696374696F6E733D2238222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222056416C69676E3D22766143656E7465722220546578743D2251544445
            5F50454E44454E5445222F3E3C546672784D656D6F56696577204C6566743D22
            3833342220546F703D22313336222057696474683D2235332220486569676874
            3D22323222205265737472696374696F6E733D2238222053686F7748696E743D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222056416C69676E3D22766143656E7465722220546578743D22515444455F50
            524F44555A494E444F222F3E3C546672784D656D6F56696577204C6566743D22
            3838372220546F703D22313336222057696474683D2237322220486569676874
            3D22323222205265737472696374696F6E733D2238222053686F7748696E743D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222056416C69676E3D22766143656E7465722220546578743D22515444455F44
            454D414E4441222F3E3C546672784D656D6F56696577204C6566743D22393539
            2220546F703D22313336222057696474683D22373122204865696768743D2232
            3222205265737472696374696F6E733D2238222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C736522204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222056
            416C69676E3D22766143656E7465722220546578743D22515444455F45584345
            44454E5445222F3E3C546672784D656D6F56696577204C6566743D2231303330
            2220546F703D22313336222057696474683D22343022204865696768743D2232
            3222205265737472696374696F6E733D2238222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C736522204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222056
            416C69676E3D22766143656E7465722220546578743D22515444455F46495349
            434F222F3E3C546672784D656D6F56696577204C6566743D2231303730222054
            6F703D22313336222057696474683D22353422204865696768743D2232322220
            5265737472696374696F6E733D2238222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222056416C69
            676E3D22766143656E7465722220546578743D22515444455F56454E4449444F
            222F3E3C546672784D656D6F56696577204C6566743D22313132342220546F70
            3D22313336222057696474683D22353322204865696768743D22323222205265
            737472696374696F6E733D2238222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D22515444455F454E54524547554522
            2F3E3C546672784D656D6F56696577204C6566743D22313137372220546F703D
            22313336222057696474683D22373222204865696768743D2232322220526573
            7472696374696F6E733D2238222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222056416C69676E3D
            22766143656E7465722220546578743D22515444455F50454E44454E5445222F
            3E3C546672784D656D6F56696577204C6566743D22313234392220546F703D22
            313336222057696474683D22373122204865696768743D223232222052657374
            72696374696F6E733D2238222053686F7748696E743D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222056416C69676E3D22
            766143656E7465722220546578743D22515444455F50524F44555A494E444F22
            2F3E3C546672784D656D6F56696577204C6566743D22313332302220546F703D
            22313336222057696474683D22343022204865696768743D2232322220526573
            7472696374696F6E733D2238222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222056416C69676E3D
            22766143656E7465722220546578743D22515444455F44454D414E4441222F3E
            3C546672784D656D6F56696577204C6566743D22313336302220546F703D2231
            3336222057696474683D22353422204865696768743D22323222205265737472
            696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222056416C69676E3D2276
            6143656E7465722220546578743D22515444455F4558434544454E5445222F3E
            3C546672784D656D6F56696577204C6566743D22313431342220546F703D2231
            3336222057696474683D22353322204865696768743D22323222205265737472
            696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222056416C69676E3D2276
            6143656E7465722220546578743D22515444455F46495349434F222F3E3C5466
            72784D656D6F56696577204C6566743D22313436372220546F703D2231333622
            2057696474683D22373222204865696768743D22323222205265737472696374
            696F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222056416C69676E3D2276614365
            6E7465722220546578743D22515444455F56454E4449444F222F3E3C54667278
            4D656D6F56696577204C6566743D22313533392220546F703D22313336222057
            696474683D22373122204865696768743D22323222205265737472696374696F
            6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222056416C69676E3D22766143656E74
            65722220546578743D22515444455F454E545245475545222F3E3C546672784D
            656D6F56696577204C6566743D22313631302220546F703D2231333622205769
            6474683D22343022204865696768743D22323222205265737472696374696F6E
            733D2238222053686F7748696E743D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222056416C69676E3D22766143656E7465
            722220546578743D22515444455F50454E44454E5445222F3E3C546672784D65
            6D6F56696577204C6566743D22302220546F703D2230222057696474683D2230
            22204865696768743D223022205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222056416C69676E3D22766143656E7465722220546578743D
            22515444455F50524F44555A494E444F222F3E3C546672784D656D6F56696577
            204C6566743D22302220546F703D2230222057696474683D2230222048656967
            68743D223022205265737472696374696F6E733D2238222053686F7748696E74
            3D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C7365
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222056416C69676E3D22766143656E7465722220546578743D22515444455F
            44454D414E4441222F3E3C546672784D656D6F56696577204C6566743D223022
            20546F703D2230222057696474683D223022204865696768743D223022205265
            737472696374696F6E733D2238222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D22515444455F4558434544454E5445
            222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D2230
            222057696474683D223022204865696768743D22302220526573747269637469
            6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222056416C69676E3D22766143656E
            7465722220546578743D22515444455F46495349434F222F3E3C546672784D65
            6D6F56696577204C6566743D22302220546F703D2230222057696474683D2230
            22204865696768743D223022205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222056416C69676E3D22766143656E7465722220546578743D
            22515444455F56454E4449444F222F3E3C546672784D656D6F56696577204C65
            66743D22302220546F703D2230222057696474683D223022204865696768743D
            223022205265737472696374696F6E733D2238222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            56416C69676E3D22766143656E7465722220546578743D22515444455F454E54
            5245475545222F3E3C546672784D656D6F56696577204C6566743D2230222054
            6F703D2230222057696474683D223022204865696768743D2230222052657374
            72696374696F6E733D2238222053686F7748696E743D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222056416C69676E3D22
            766143656E7465722220546578743D22515444455F50454E44454E5445222F3E
            3C546672784D656D6F56696577204C6566743D22302220546F703D2230222057
            696474683D223022204865696768743D223022205265737472696374696F6E73
            3D2238222053686F7748696E743D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222056416C69676E3D22766143656E746572
            2220546578743D22515444455F50524F44555A494E444F222F3E3C546672784D
            656D6F56696577204C6566743D22302220546F703D2230222057696474683D22
            3022204865696768743D223022205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C736522204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222056416C69676E3D22766143656E746572222054657874
            3D22515444455F44454D414E4441222F3E3C546672784D656D6F56696577204C
            6566743D22302220546F703D2230222057696474683D22302220486569676874
            3D223022205265737472696374696F6E733D2238222053686F7748696E743D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2056416C69676E3D22766143656E7465722220546578743D22515444455F4558
            434544454E5445222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C
            756D6E6D656D6F733E3C546672784D656D6F56696577204C6566743D22313834
            2220546F703D223137322C3036333038222057696474683D2233333422204865
            696768743D223022205265737472696374696F6E733D223234222053686F7748
            696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D65
            3D2256657264616E612220466F6E742E5374796C653D223022204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686152696768742220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C75
            6D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D
            656D6F56696577204C6566743D223738302220546F703D223239222057696474
            683D22373022204865696768743D2231303722205265737472696374696F6E73
            3D2238222056697369626C653D2246616C7365222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31312220466F6E742E4E616D653D225461686F
            6D612220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            6768742220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22537562746F74616C3A222F3E3C2F636F
            6C756D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672
            784D656D6F56696577204C6566743D2232302220546F703D223135362C303633
            3038222057696474683D2231363422204865696768743D223022205265737472
            696374696F6E733D2238222056697369626C653D2246616C7365222053686F77
            48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D
            653D225461686F6D612220466F6E742E5374796C653D223122204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D226573746F71756522
            2F3E3C546672784D656D6F56696577204C6566743D223138342220546F703D22
            3135362C3036333038222057696474683D2233333422204865696768743D2231
            3622205265737472696374696F6E733D2238222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C20
            4E6172726F772220466F6E742E5374796C653D223122204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D22434F4D504152415449564F
            53222F3E3C546672784D656D6F56696577204C6566743D223231302220546F70
            3D2230222057696474683D2231353822204865696768743D2232322220526573
            7472696374696F6E733D2238222056697369626C653D2246616C736522205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E746572222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D2232302220546F703D223135362C303633303822205769
            6474683D22353122204865696768743D22333222205265737472696374696F6E
            733D2238222053686F7748696E743D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3822
            20466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E53
            74796C653D223122204672616D652E5479703D22313522204672616D652E5269
            6768744C696E652E436F6C6F723D2231363737373231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D225245464552C38A4E4349413A222F3E3C546672784D656D6F
            56696577204C6566743D2237312220546F703D223135362C3036333038222057
            696474683D22343822204865696768743D22333222205265737472696374696F
            6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D38
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22444553435249C387C3834F3A222F3E3C546672784D656D6F
            56696577204C6566743D223131392220546F703D223135362C30363330382220
            57696474683D22323322204865696768743D2233322220526573747269637469
            6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            382220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D22434F523A222F3E3C546672784D656D6F56696577204C65
            66743D223134322220546F703D223135362C3036333038222057696474683D22
            343222204865696768743D22333222205265737472696374696F6E733D223822
            2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2254414D414E484F3A222F3E3C2F636F726E65726D656D6F733E3C726F776D
            656D6F733E3C546672784D656D6F56696577204C6566743D2232302220546F70
            3D223138382C3036333038222057696474683D22353122204865696768743D22
            333222205265737472696374696F6E733D223234222053686F7748696E743D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D382220466F6E742E4E616D653D2241726961
            6C204E6172726F772220466F6E742E5374796C653D223022204672616D652E54
            79703D2231352220476170583D22332220476170593D22332220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D2237312220
            546F703D223138382C3036333038222057696474683D22343822204865696768
            743D22313622205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D372220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D22332220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22222F3E3C546672784D656D6F56696577204C6566743D2231
            31392220546F703D223138382C3036333038222057696474683D223233222048
            65696768743D22313622205265737472696374696F6E733D223234222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D352220466F6E742E4E616D
            653D22417269616C204E6172726F772220466F6E742E5374796C653D22302220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D22222F3E3C546672784D656D6F56696577204C6566
            743D223134322220546F703D223138382C3036333038222057696474683D2234
            3222204865696768743D22313622205265737472696374696F6E733D22323422
            2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223022204672616D652E5479703D2231352220476170583D2233222047617059
            3D22332220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C2F726F776D656D6F733E3C72
            6F77746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D
            2232302220546F703D223232302C3036333038222057696474683D2231363422
            204865696768743D22313622205265737472696374696F6E733D223822205368
            6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E61
            6D653D22417269616C204E6172726F772220466F6E742E5374796C653D223122
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686152696768742220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D22544F
            54414953203D262336323B222F3E3C546672784D656D6F56696577204C656674
            3D2237312220546F703D223230342C3036333038222057696474683D22313133
            22204865696768743D22313622205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D382220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2253
            5542544F54414C3A222F3E3C546672784D656D6F56696577204C6566743D2231
            36392220546F703D223630222057696474683D22383022204865696768743D22
            323222205265737472696374696F6E733D2238222056697369626C653D224661
            6C7365222053686F7748696E743D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313322
            20466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            546F74616C222F3E3C546672784D656D6F56696577204C6566743D2232313222
            20546F703D223431222057696474683D22383022204865696768743D22323222
            205265737472696374696F6E733D2238222056697369626C653D2246616C7365
            222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F
            6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2231222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E7465722220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D22546F74
            616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66756E637469
            6F6E733E3C6974656D20312F3E3C6974656D20312F3E3C6974656D20312F3E3C
            6974656D20312F3E3C6974656D20312F3E3C6974656D20312F3E3C6974656D20
            312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C
            6974656D20322F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C69
            74656D20322F3E3C6974656D20322F3E3C6974656D20322F3E3C6974656D2032
            2F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
    end
  end
  object db_NecessidadeAnalitico: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM TBL_NECESSIDADES')
    Left = 816
    Top = 328
  end
  object FRXDB_frxAndamentoFasesAnalitico: TfrxDBDataset
    UserName = 'dbNecessidadeAnalitico'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'COR_ID=COR_ID'
      'COR=COR'
      'TAMANHO_ID=TAMANHO_ID'
      'TAMANHO=TAMANHO'
      'ORDEM_GRADE=ORDEM_GRADE'
      'QTDE_FISICO=QTDE_FISICO'
      'QTDE_VENDIDO=QTDE_VENDIDO'
      'QTDE_ENTREGUE=QTDE_ENTREGUE'
      'QTDE_PENDENTE=QTDE_PENDENTE'
      'QTDE_PRODUZIR=QTDE_PRODUZIR'
      'QTDE_PRODUZIDO=QTDE_PRODUZIDO'
      'QTDE_PRODUZINDO=QTDE_PRODUZINDO'
      'QTDE_DEMANDA=QTDE_DEMANDA'
      'QTDE_EXCEDENTE=QTDE_EXCEDENTE')
    DataSet = db_NecessidadeAnalitico
    BCDToCurrency = False
    Left = 816
    Top = 384
  end
  object frxFasesHistoricos: TfrxReport
    Version = '4.15.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40968.454746088000000000
    ReportOptions.LastChange = 40968.733680185200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 281
    Top = 264
    Datasets = <
      item
        DataSet = frxdb_FasesHistoricos
        DataSetName = 'dbFasesHistoricos'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial Narrow'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GrupoFase: TfrxGroupHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 15.118110240000000000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'dbFasesHistoricos."FASE"'
        object Shape2: TfrxShapeView
          Width = 718.110236220000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 16053492
          Frame.Color = clWhite
        end
        object txtFase: TfrxMemoView
          Left = 4.000000000000000000
          Top = 1.000000000000000000
          Width = 294.803340000000000000
          Height = 11.338582680000000000
          ShowHint = False
          Color = 16053492
          DataSet = frxdb_FasesHistoricos
          DataSetName = 'dbFasesHistoricos'
          Memo.UTF8W = (
            
              '[dbFasesHistoricos."FASEORDEM"] - [dbFasesHistoricos."FASE_NOME"' +
              ']')
          Style = 'Group header'
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxdb_FasesHistoricos
        DataSetName = 'dbFasesHistoricos'
        RowCount = 0
        object Memo17: TfrxMemoView
          Width = 41.574803150000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'ORDEMPRODUCAO'
          DataSet = frxdb_FasesHistoricos
          DataSetName = 'dbFasesHistoricos'
          Memo.UTF8W = (
            '[dbFasesHistoricos."ORDEMPRODUCAO"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 408.480314960000000000
          Width = 51.401574800000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'DATAINICIOFASE'
          DataSet = frxdb_FasesHistoricos
          DataSetName = 'dbFasesHistoricos'
          Memo.UTF8W = (
            '[dbFasesHistoricos."DATAINICIOFASE"]')
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          Left = 465.314960630000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'DATARETORNOFASE'
          DataSet = frxdb_FasesHistoricos
          DataSetName = 'dbFasesHistoricos'
          Memo.UTF8W = (
            '[dbFasesHistoricos."DATARETORNOFASE"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 538.803149610000000000
          Width = 98.511927290000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'TERCEIRIZADO_NOME'
          DataSet = frxdb_FasesHistoricos
          DataSetName = 'dbFasesHistoricos'
          Memo.UTF8W = (
            '[dbFasesHistoricos."TERCEIRIZADO_NOME"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 656.503937010000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'QTDE_PRODUZIR'
          DataSet = frxdb_FasesHistoricos
          DataSetName = 'dbFasesHistoricos'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbFasesHistoricos."QTDE_PRODUZIR"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 43.464566930000000000
          Width = 47.244094490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'DATAOP'
          DataSet = frxdb_FasesHistoricos
          DataSetName = 'dbFasesHistoricos'
          Memo.UTF8W = (
            '[dbFasesHistoricos."DATAOP"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 96.047244090000000000
          Width = 43.464564490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'DATAPREVISAO'
          DataSet = frxdb_FasesHistoricos
          DataSetName = 'dbFasesHistoricos'
          Memo.UTF8W = (
            '[dbFasesHistoricos."DATAPREVISAO"]')
          Style = 'Data'
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 175.748031500000000000
          Width = 221.102467170000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxdb_FasesHistoricos
          DataSetName = 'dbFasesHistoricos'
          Memo.UTF8W = (
            
              '[dbFasesHistoricos."REFERENCIA"] - [dbFasesHistoricos."DESCRICAO' +
              '"]')
          Style = 'Data'
          WordWrap = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 15.118110240000000000
        ParentFont = False
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo22: TfrxMemoView
          Left = 656.503937010000000000
          Top = 1.000000000000000000
          Width = 56.692913390000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbFasesHistoricos."QTDE_PRODUZIR">,MasterData1)]')
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Top = 64.251968500000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OP:')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          Left = 43.464566930000000000
          Top = 64.251968500000000000
          Width = 47.244094490000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA OP:')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 408.480314960000000000
          Top = 64.251968500000000000
          Width = 51.401574800000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'INICIO FASE:')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 465.314960630000000000
          Top = 64.251968500000000000
          Width = 68.031496060000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DATA RETORNO:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 554.590910000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo4: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 567.149603860000000000
          Top = 16.629921260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 567.149603860000000000
          Top = 31.748031500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 632.299215040000000000
          Top = 1.889763780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 632.299215040000000000
          Top = 16.629921260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 632.299215040000000000
          Top = 31.748031500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object MemoTitulo: TfrxMemoView
          Left = 1.220470000000000000
          Width = 550.464750000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Georgia'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Relat'#243'rio - P.C.P:'
            'Hist'#243'rico de Fase')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 175.748031500000000000
          Top = 64.251968500000000000
          Width = 58.582677170000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          Left = 538.803149610000000000
          Top = 64.252010000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'LOCALIZA'#199#195'O:')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 645.165347010000000000
          Top = 64.252010000000000000
          Width = 68.031503390000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE ENVIADA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 96.047244090000000000
          Top = 64.252010000000000000
          Width = 73.700804490000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PREV. ENCERR:')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 15.118120000000000000
        ParentFont = False
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 656.503937010000000000
          Top = 1.000000000000000000
          Width = 56.692913390000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbFasesHistoricos."QTDE_PRODUZIR">,MasterData1)]')
          WordWrap = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
    end
  end
  object db_FasesHistoricos: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      'DISTINCT '
      'ORDEMPRODUCAO,'
      'DATAOP,'
      'DATAPREVISAO,'
      'DATAINICIOFASE,'
      'DATARETORNOFASE,'
      'TERCEIRIZADO,'
      'TERCEIRIZADO_NOME,'
      'FASE,'
      'FASEORDEM,'
      'FASE_NOME,'
      'REFERENCIA,'
      'DESCRICAO,'
      'QTDE_PRODUZIR'
      ''
      'FROM '
      ''
      'VIEW_PCPFASESHISTORICOS')
    Left = 280
    Top = 328
  end
  object frxdb_FasesHistoricos: TfrxDBDataset
    UserName = 'dbFasesHistoricos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ORDEMPRODUCAO=ORDEMPRODUCAO'
      'DATAOP=DATAOP'
      'DATAPREVISAO=DATAPREVISAO'
      'DATAINICIOFASE=DATAINICIOFASE'
      'DATARETORNOFASE=DATARETORNOFASE'
      'TERCEIRIZADO=TERCEIRIZADO'
      'TERCEIRIZADO_NOME=TERCEIRIZADO_NOME'
      'FASE=FASE'
      'FASEORDEM=FASEORDEM'
      'FASE_NOME=FASE_NOME'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'QTDE_PRODUZIR=QTDE_PRODUZIR')
    DataSet = db_FasesHistoricos
    BCDToCurrency = False
    Left = 280
    Top = 392
  end
  object SP_GerarNecessidadesEstoque: TUniStoredProc
    StoredProcName = 'SPREL_NECESSIDADEPRODUCAOESTOQUE'
    Connection = FrmPrincipal.DBConexao
    Left = 672
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'NEMPRESA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DATA_INI'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DATA_FIM'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'SPREL_NECESSIDADEPRODUCAOESTOQUE'
  end
end
