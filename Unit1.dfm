object Form1: TForm1
  Left = 155
  Top = 222
  BorderStyle = bsDialog
  Caption = 'Create Object Example'
  ClientHeight = 249
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 249
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnLogin: TPanel
      Left = 0
      Top = 0
      Width = 736
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 57
        Height = 13
        Caption = 'User name :'
      end
      object Label2: TLabel
        Left = 336
        Top = 24
        Width = 52
        Height = 13
        Caption = 'Password :'
      end
      object btnLogin: TButton
        Left = 632
        Top = 18
        Width = 75
        Height = 25
        Caption = 'Login'
        TabOrder = 0
        OnClick = btnLoginClick
      end
      object edUN: TEdit
        Left = 79
        Top = 20
        Width = 210
        Height = 21
        TabOrder = 1
        Text = 'Admin'
      end
      object edPS: TEdit
        Left = 395
        Top = 20
        Width = 190
        Height = 21
        PasswordChar = '*'
        TabOrder = 2
      end
    end
    object pnMain: TPanel
      Left = 0
      Top = 57
      Width = 736
      Height = 192
      Align = alClient
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object Label3: TLabel
        Left = 24
        Top = 0
        Width = 149
        Height = 16
        Caption = #922#945#964#945#967#974#961#951#963#951' '#928#949#955#945#964#974#957
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 80
        Top = 64
        Width = 40
        Height = 13
        Caption = #922#969#948#953#954#972#962
      end
      object Label5: TLabel
        Left = 72
        Top = 107
        Width = 48
        Height = 13
        Caption = #917#960#969#957#965#956#943#945
      end
      object Label6: TLabel
        Left = 449
        Top = 64
        Width = 25
        Height = 13
        Caption = #913#934#924
      end
      object edCode: TEdit
        Left = 128
        Top = 60
        Width = 217
        Height = 21
        TabOrder = 0
      end
      object edAfm: TEdit
        Left = 480
        Top = 60
        Width = 201
        Height = 21
        TabOrder = 1
      end
      object edName: TEdit
        Left = 128
        Top = 103
        Width = 553
        Height = 21
        TabOrder = 2
      end
      object btnPost: TButton
        Left = 480
        Top = 144
        Width = 203
        Height = 25
        Caption = #922#945#964#945#967#974#961#951#963#951' '#960#949#955#940#964#951
        TabOrder = 3
        OnClick = btnPostClick
      end
    end
  end
end
