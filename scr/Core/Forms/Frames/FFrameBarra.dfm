object FrmFrameBarra: TFrmFrameBarra
  Left = 0
  Top = 0
  Width = 451
  Height = 40
  Align = alTop
  TabOrder = 0
  OnResize = FrameResize
  object W7Panel1: TW7Panel
    Left = 0
    Top = 0
    Width = 451
    Height = 40
    Version = '1.0.2.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    SolidColor = clBlack
    OuterBorderColor = 6841180
    InnerBorderColor = 6841180
    InnerBorders = []
    OuterBorders = []
    Style = wpsCustom
    FillStyle = pfsGradient
    ColorA = 9928042
    ColorB = 6832678
    ColorC = 5778960
    ColorD = 5581323
    Align = alClient
    ParentFont = False
    TabOrder = 0
    object LblBarraTitulo: TLabel
      Left = 0
      Top = 0
      Width = 451
      Height = 40
      Align = alClient
      Alignment = taCenter
      Caption = '<titulo do m'#243'dulo>         '
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      OnDblClick = LblBarraTituloDblClick
      ExplicitWidth = 188
      ExplicitHeight = 21
    end
  end
end
