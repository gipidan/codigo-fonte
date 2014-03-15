object FrmProdutosQuantidade: TFrmProdutosQuantidade
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atualizar estoque'
  ClientHeight = 480
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 416
    Width = 745
    Height = 64
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 416
    ExplicitWidth = 745
    ExplicitHeight = 64
    inherited W7Panel1: TW7Panel
      Width = 745
      Height = 64
      ExplicitWidth = 745
      ExplicitHeight = 64
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
      inherited SpbImprimir: TSpeedButton
        Visible = False
      end
      inherited SpbProcurar: TSpeedButton
        Visible = False
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbExcluirClick
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbCancelarClick
      end
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
      end
      inherited SpbEditar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbEditarClick
      end
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 745
    Height = 72
    Align = alTop
    TabOrder = 0
    object EditPesquisa: TLabeledEdit
      Left = 5
      Top = 20
      Width = 361
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      EditLabel.Width = 56
      EditLabel.Height = 13
      EditLabel.Caption = 'Refer'#234'ncia:'
      LabelSpacing = 1
      MaxLength = 35
      TabOrder = 0
      OnChange = EditPesquisaChange
    end
    object BitBtn1: TBitBtn
      Left = 370
      Top = 20
      Width = 75
      Height = 21
      Caption = '>> pesquisar'
      TabOrder = 1
      Visible = False
      OnClick = BitBtn1Click
    end
    object rdg_Produtos: TRadioGroup
      Left = 464
      Top = 6
      Width = 273
      Height = 59
      Caption = 'Produtos'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Todos'
        'Produtos Acabados'
        'Materia Prima'
        'Tecidos')
      TabOrder = 2
      OnClick = rdg_ProdutosClick
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 745
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 745
    ExplicitHeight = 33
    inherited W7Panel1: TW7Panel
      Width = 745
      Height = 33
      ExplicitWidth = 745
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 745
        Height = 33
        Caption = 'Digita'#231#227'o da quantidade de estoque'
        ExplicitWidth = 433
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 33
    Width = 745
    Height = 16
    Align = alTop
    TabOrder = 3
  end
  object dbGrid_Produtos: TDBGrid
    Left = 0
    Top = 121
    Width = 745
    Height = 295
    Align = alClient
    DataSource = DS_Referencia
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = dbGrid_ProdutosKeyDown
    Columns = <
      item
        Color = clSilver
        Expanded = False
        FieldName = 'REFERENCIA'
        ReadOnly = True
        Title.Caption = 'Refer'#234'ncia:'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o:'
        Width = 456
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUESALDO'
        Title.Caption = 'Estoque Atual:'
        Width = 107
        Visible = True
      end>
  end
  object db_referencias: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS'
      'where'
      'UPPER(REFERENCIA) LIKE UPPER(:Procurar)'
      'AND'
      'UPPER(TIPO_PRODUTO) LIKE UPPER(:Tipo)'
      ''
      'ORDER BY REFERENCIA')
    BeforeDelete = db_referenciasBeforeDelete
    OnNewRecord = db_referenciasNewRecord
    Left = 320
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PROCURAR'
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
      end>
    object db_referenciasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_referenciasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_referenciasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 30
    end
    object db_referenciasGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object db_referenciasSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
    end
    object db_referenciasTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Required = True
      Size = 30
    end
    object db_referenciasGRIFE: TIntegerField
      FieldName = 'GRIFE'
    end
    object db_referenciasCOLECAO: TIntegerField
      FieldName = 'COLECAO'
    end
    object db_referenciasFAIXA_ETARIA: TIntegerField
      FieldName = 'FAIXA_ETARIA'
    end
    object db_referenciasESTILISTA: TIntegerField
      FieldName = 'ESTILISTA'
    end
    object db_referenciasETIQUETA: TIntegerField
      FieldName = 'ETIQUETA'
    end
    object db_referenciasGRADE: TIntegerField
      FieldName = 'GRADE'
    end
    object db_referenciasEMBALAGEM: TIntegerField
      FieldName = 'EMBALAGEM'
    end
    object db_referenciasCOMPOSICAO: TIntegerField
      FieldName = 'COMPOSICAO'
    end
    object db_referenciasGENERO: TIntegerField
      FieldName = 'GENERO'
    end
    object db_referenciasNCM: TStringField
      FieldName = 'NCM'
      Size = 30
    end
    object db_referenciasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 200
    end
    object db_referenciasCLASSIFICAO_FISCAL: TStringField
      FieldName = 'CLASSIFICAO_FISCAL'
      Size = 30
    end
    object db_referenciasSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 30
    end
    object db_referenciasDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object db_referenciasDT_ULTIMA_COMPRA: TDateTimeField
      FieldName = 'DT_ULTIMA_COMPRA'
    end
    object db_referenciasDT_ULTIMA_VENDA: TDateTimeField
      FieldName = 'DT_ULTIMA_VENDA'
    end
    object db_referenciasDT_VALIDADE: TDateTimeField
      FieldName = 'DT_VALIDADE'
    end
    object db_referenciasGERAR_CODBARRA: TStringField
      FieldName = 'GERAR_CODBARRA'
      Size = 10
    end
    object db_referenciasCOMPOSICAO_DESCRICAO: TStringField
      FieldName = 'COMPOSICAO_DESCRICAO'
      Size = 200
    end
    object db_referenciasCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 30
    end
    object db_referenciasCODIGO_FABRICANTE: TStringField
      FieldName = 'CODIGO_FABRICANTE'
      Size = 30
    end
    object db_referenciasUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 30
    end
    object db_referenciasOZ: TFloatField
      FieldName = 'OZ'
    end
    object db_referenciasPESO: TFloatField
      FieldName = 'PESO'
    end
    object db_referenciasPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object db_referenciasPESO_M2: TFloatField
      FieldName = 'PESO_M2'
    end
    object db_referenciasQTDE_TECIDOS: TFloatField
      FieldName = 'QTDE_TECIDOS'
    end
    object db_referenciasQTDE_OPCOES: TFloatField
      FieldName = 'QTDE_OPCOES'
    end
    object db_referenciasPRAZOENTREGA: TIntegerField
      FieldName = 'PRAZOENTREGA'
    end
    object db_referenciasLOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object db_referenciasNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object db_referenciasCOMISSAO_VAREJO: TFloatField
      FieldName = 'COMISSAO_VAREJO'
    end
    object db_referenciasCOMISSAO_ATACADO: TFloatField
      FieldName = 'COMISSAO_ATACADO'
    end
    object db_referenciasCOMISSAO_REPRESENTANTE: TFloatField
      FieldName = 'COMISSAO_REPRESENTANTE'
    end
    object db_referenciasREGISTROINPI: TStringField
      FieldName = 'REGISTROINPI'
      Size = 30
    end
    object db_referenciasVOLUME: TFloatField
      FieldName = 'VOLUME'
    end
    object db_referenciasPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Size = 10
    end
    object db_referenciasMARCA: TStringField
      FieldName = 'MARCA'
      Size = 200
    end
    object db_referenciasLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 200
    end
    object db_referenciasATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 10
    end
    object db_referenciasINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 5000
    end
    object db_referenciasTOTAL_RESERVA: TFloatField
      FieldName = 'TOTAL_RESERVA'
    end
    object db_referenciasTOTAL_ORDEMPRODUCAO: TFloatField
      FieldName = 'TOTAL_ORDEMPRODUCAO'
    end
    object db_referenciasTOTAL_QTDEMATPRIMA: TFloatField
      FieldName = 'TOTAL_QTDEMATPRIMA'
    end
    object db_referenciasTOTAL_VLRMATPRIMA: TFloatField
      FieldName = 'TOTAL_VLRMATPRIMA'
    end
    object db_referenciasTOTAL_PROCESSO_TEMPO: TFloatField
      FieldName = 'TOTAL_PROCESSO_TEMPO'
    end
    object db_referenciasTOTAL_PROCESSO_CUSTOS: TFloatField
      FieldName = 'TOTAL_PROCESSO_CUSTOS'
    end
    object db_referenciasTOTAL_CUSTOS_PERCENTUAL: TFloatField
      FieldName = 'TOTAL_CUSTOS_PERCENTUAL'
    end
    object db_referenciasTOTAL_CUSTOS_VALOR: TFloatField
      FieldName = 'TOTAL_CUSTOS_VALOR'
    end
    object db_referenciasSALDO_IMPLANTACAO: TFloatField
      FieldName = 'SALDO_IMPLANTACAO'
    end
    object db_referenciasESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object db_referenciasESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
    end
    object db_referenciasESTOQUESALDO: TFloatField
      FieldName = 'ESTOQUESALDO'
    end
    object db_referenciasMG_LUCRO: TFloatField
      FieldName = 'MG_LUCRO'
    end
    object db_referenciasIPI: TFloatField
      FieldName = 'IPI'
    end
    object db_referenciasICMS: TFloatField
      FieldName = 'ICMS'
    end
    object db_referenciasPIS: TFloatField
      FieldName = 'PIS'
    end
    object db_referenciasCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object db_referenciasPUBLICIDADE: TFloatField
      FieldName = 'PUBLICIDADE'
    end
    object db_referenciasINADIMPLENCIA: TFloatField
      FieldName = 'INADIMPLENCIA'
    end
    object db_referenciasADMINISTRATIVO: TFloatField
      FieldName = 'ADMINISTRATIVO'
    end
    object db_referenciasIMPORTACAO: TFloatField
      FieldName = 'IMPORTACAO'
    end
    object db_referenciasPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
    end
    object db_referenciasFINANCEIRO: TFloatField
      FieldName = 'FINANCEIRO'
    end
    object db_referenciasIMPOSTOS_OUTROS: TFloatField
      FieldName = 'IMPOSTOS_OUTROS'
    end
    object db_referenciasMARKUP: TFloatField
      FieldName = 'MARKUP'
    end
    object db_referenciasIR: TFloatField
      FieldName = 'IR'
    end
    object db_referenciasPRC_CUSTOBRUTO: TFloatField
      FieldName = 'PRC_CUSTOBRUTO'
    end
    object db_referenciasPRC_CUSTOPRODUCAO: TFloatField
      FieldName = 'PRC_CUSTOPRODUCAO'
    end
    object db_referenciasPRC_CUSTO: TFloatField
      FieldName = 'PRC_CUSTO'
    end
    object db_referenciasPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
    end
    object db_referenciasLUCRO_LIQUIDO: TFloatField
      FieldName = 'LUCRO_LIQUIDO'
    end
    object db_referenciasDETALHES: TStringField
      FieldName = 'DETALHES'
      Size = 5000
    end
    object db_referenciasPRODUCAO_TEMPO: TFloatField
      FieldName = 'PRODUCAO_TEMPO'
    end
    object db_referenciasPRODUCAO_CUSTOS: TFloatField
      FieldName = 'PRODUCAO_CUSTOS'
    end
    object db_referenciasCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_referenciasTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_referenciasFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
  end
  object DS_Referencia: TDataSource
    DataSet = db_referencias
    Left = 180
    Top = 120
  end
  object db_ProdutosGrade: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS_GRADES'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA')
    MasterSource = DS_Referencia
    MasterFields = 'CODIGO;REFERENCIA'
    DetailFields = 'CODIGO;REFERENCIA'
    Left = 320
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'REFERENCIA'
        ParamType = ptInput
      end>
  end
end
