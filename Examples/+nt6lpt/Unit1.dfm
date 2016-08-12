object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'NT6.x LPT Demo Code FreeHand.com.ua 2013'
  ClientHeight = 329
  ClientWidth = 462
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 232
    Top = 87
    Width = 218
    Height = 103
    Caption = 'Data bits'
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 63
      Width = 193
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '   9      8      7      6      5      4      3      2'
      ParentBiDiMode = False
    end
    object Label2: TLabel
      Left = 9
      Top = 22
      Width = 193
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '  128   64    32    16     8      4       2     1'
      ParentBiDiMode = False
    end
    object Button1: TButton
      Left = 11
      Top = 37
      Width = 25
      Height = 25
      Caption = '0'
      TabOrder = 0
      OnClick = Button8Click
    end
    object Button2: TButton
      Left = 35
      Top = 37
      Width = 25
      Height = 25
      Caption = '0'
      TabOrder = 1
      OnClick = Button8Click
    end
    object Button3: TButton
      Left = 59
      Top = 37
      Width = 25
      Height = 25
      Caption = '0'
      TabOrder = 2
      OnClick = Button8Click
    end
    object Button4: TButton
      Left = 83
      Top = 37
      Width = 25
      Height = 25
      Caption = '0'
      TabOrder = 3
      OnClick = Button8Click
    end
    object Button5: TButton
      Left = 107
      Top = 37
      Width = 25
      Height = 25
      Caption = '0'
      TabOrder = 4
      OnClick = Button8Click
    end
    object Button6: TButton
      Left = 131
      Top = 37
      Width = 25
      Height = 25
      Caption = '0'
      TabOrder = 5
      OnClick = Button8Click
    end
    object Button7: TButton
      Left = 155
      Top = 37
      Width = 25
      Height = 25
      Caption = '0'
      TabOrder = 6
      OnClick = Button8Click
    end
    object Button8: TButton
      Left = 179
      Top = 37
      Width = 25
      Height = 25
      Caption = '0'
      TabOrder = 7
      OnClick = Button8Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 232
    Top = 3
    Width = 217
    Height = 78
    Caption = 'Status pin'
    TabOrder = 1
    object Label8: TLabel
      Left = 20
      Top = 21
      Width = 111
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '11   10    12    13    15'
      ParentBiDiMode = False
    end
    object Label13: TLabel
      Left = 162
      Top = 21
      Width = 22
      Height = 13
      Caption = 'data'
    end
    object Button10: TButton
      Left = 107
      Top = 38
      Width = 25
      Height = 25
      Caption = '0'
      Enabled = False
      TabOrder = 0
      OnClick = Button8Click
    end
    object Button12: TButton
      Left = 83
      Top = 38
      Width = 25
      Height = 25
      Caption = '0'
      Enabled = False
      TabOrder = 1
      OnClick = Button8Click
    end
    object Button13: TButton
      Left = 59
      Top = 38
      Width = 25
      Height = 25
      Caption = '0'
      Enabled = False
      TabOrder = 2
      OnClick = Button8Click
    end
    object Button14: TButton
      Left = 35
      Top = 38
      Width = 25
      Height = 25
      Caption = '0'
      Enabled = False
      TabOrder = 3
      OnClick = Button8Click
    end
    object Button15: TButton
      Left = 11
      Top = 38
      Width = 25
      Height = 25
      Caption = '0'
      Enabled = False
      TabOrder = 4
    end
    object Edit11: TEdit
      Left = 155
      Top = 39
      Width = 40
      Height = 21
      Enabled = False
      NumbersOnly = True
      TabOrder = 5
      Text = '0'
      OnChange = Edit11Change
    end
  end
  object GroupBox4: TGroupBox
    Left = 10
    Top = 87
    Width = 216
    Height = 103
    Caption = 'Data'
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 21
      Width = 22
      Height = 13
      Caption = 'data'
    end
    object Label4: TLabel
      Left = 64
      Top = 21
      Width = 24
      Height = 13
      Caption = 'write'
    end
    object Edit1: TEdit
      Left = 11
      Top = 65
      Width = 40
      Height = 21
      Enabled = False
      NumbersOnly = True
      TabOrder = 0
      Text = '0'
      OnChange = Edit1Change
    end
    object Button9: TButton
      Left = 123
      Top = 36
      Width = 75
      Height = 25
      Caption = 'write'
      TabOrder = 1
      OnClick = Button9Click
    end
    object Edit2: TEdit
      Left = 57
      Top = 38
      Width = 40
      Height = 21
      TabOrder = 2
      Text = '$00'
      OnChange = Edit2Change
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
    end
    object Edit3: TEdit
      Left = 11
      Top = 38
      Width = 40
      Height = 21
      Enabled = False
      TabOrder = 3
      Text = '$00'
    end
    object Edit4: TEdit
      Left = 57
      Top = 65
      Width = 40
      Height = 21
      NumbersOnly = True
      TabOrder = 4
      Text = '0'
      OnChange = Edit4Change
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
    end
    object Button11: TButton
      Left = 123
      Top = 63
      Width = 75
      Height = 25
      Caption = 'write'
      TabOrder = 5
      OnClick = Button11Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 9
    Top = 3
    Width = 216
    Height = 78
    Caption = 'Input'
    TabOrder = 3
    object Label5: TLabel
      Left = 154
      Top = 20
      Width = 20
      Height = 13
      Caption = 'port'
    end
    object Label6: TLabel
      Left = 64
      Top = 20
      Width = 20
      Height = 13
      Caption = 'digit'
    end
    object Label7: TLabel
      Left = 16
      Top = 20
      Width = 18
      Height = 13
      Caption = 'hex'
    end
    object ComboBox1: TComboBox
      Left = 123
      Top = 39
      Width = 75
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object Edit5: TEdit
      Left = 11
      Top = 39
      Width = 40
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '$00'
    end
    object Edit6: TEdit
      Left = 57
      Top = 39
      Width = 40
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = '0'
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 310
    Width = 462
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object GroupBox2: TGroupBox
    Left = 231
    Top = 195
    Width = 218
    Height = 103
    Caption = 'Control bits'
    TabOrder = 5
    object Label9: TLabel
      Left = 17
      Top = 21
      Width = 85
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '8      4      2      1'
      ParentBiDiMode = False
    end
    object Label10: TLabel
      Left = 17
      Top = 69
      Width = 85
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '17   16    14     1'
      ParentBiDiMode = False
    end
    object Button17: TButton
      Left = 80
      Top = 38
      Width = 25
      Height = 25
      Hint = 'strobe'
      Caption = '0'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 56
      Top = 38
      Width = 25
      Height = 25
      Hint = 'LF / CR'
      Caption = '0'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button17Click
    end
    object Button19: TButton
      Left = 32
      Top = 38
      Width = 25
      Height = 25
      Hint = 'initialize'
      Caption = '0'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button19Click
    end
    object Button20: TButton
      Left = 8
      Top = 38
      Width = 25
      Height = 25
      Hint = 'sline'
      Caption = '0'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button17Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 9
    Top = 195
    Width = 216
    Height = 103
    Caption = 'Control data'
    TabOrder = 6
    object Label11: TLabel
      Left = 16
      Top = 21
      Width = 22
      Height = 13
      Caption = 'data'
    end
    object Label12: TLabel
      Left = 64
      Top = 21
      Width = 24
      Height = 13
      Caption = 'write'
    end
    object Edit7: TEdit
      Left = 11
      Top = 65
      Width = 40
      Height = 21
      Enabled = False
      NumbersOnly = True
      TabOrder = 0
      Text = '0'
      OnChange = Edit7Change
    end
    object Button16: TButton
      Left = 123
      Top = 36
      Width = 75
      Height = 25
      Caption = 'write'
      TabOrder = 1
      OnClick = Button16Click
    end
    object Edit8: TEdit
      Left = 57
      Top = 38
      Width = 40
      Height = 21
      TabOrder = 2
      Text = '$00'
      OnChange = Edit8Change
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
    end
    object Edit9: TEdit
      Left = 11
      Top = 38
      Width = 40
      Height = 21
      Enabled = False
      TabOrder = 3
      Text = '$00'
    end
    object Edit10: TEdit
      Left = 57
      Top = 65
      Width = 40
      Height = 21
      NumbersOnly = True
      TabOrder = 4
      Text = '0'
      OnChange = Edit10Change
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
    end
    object Button21: TButton
      Left = 123
      Top = 63
      Width = 75
      Height = 25
      Caption = 'write'
      TabOrder = 5
      OnClick = Button21Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 72
    object N1: TMenuItem
      Caption = 'File'
      object N4: TMenuItem
        Caption = 'Exit'
        OnClick = N4Click
      end
    end
    object N2: TMenuItem
      Caption = 'Options'
    end
    object N3: TMenuItem
      Caption = 'About'
    end
  end
  object t_LPTMon: TTimer
    Enabled = False
    Interval = 50
    OnTimer = t_LPTMonTimer
    Left = 185
    Top = 77
  end
end
