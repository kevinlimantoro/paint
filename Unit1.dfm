object Form1: TForm1
  Left = 263
  Top = 212
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 592
    Top = 296
    Width = 39
    Height = 22
    Caption = 'New'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 40
    Top = 16
    Width = 49
    Height = 22
    GroupIndex = 1
    Caption = 'Dots'
  end
  object SpeedButton3: TSpeedButton
    Left = 96
    Top = 16
    Width = 49
    Height = 22
    GroupIndex = 1
    Caption = 'Line'
  end
  object Image1: TImage
    Left = 32
    Top = 80
    Width = 529
    Height = 345
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
    OnMouseUp = Image1MouseUp
  end
  object SpeedButton4: TSpeedButton
    Left = 152
    Top = 16
    Width = 41
    Height = 22
    GroupIndex = 1
    Caption = 'Pen'
  end
  object SpeedButton5: TSpeedButton
    Left = 40
    Top = 48
    Width = 49
    Height = 22
    GroupIndex = 1
    Caption = 'Rect'
  end
  object SpeedButton6: TSpeedButton
    Left = 152
    Top = 48
    Width = 41
    Height = 22
    GroupIndex = 1
    Caption = 'Ellip'
  end
  object SpeedButton7: TSpeedButton
    Left = 200
    Top = 16
    Width = 41
    Height = 22
    GroupIndex = 1
    Caption = 'Hapus'
  end
  object SpeedButton8: TSpeedButton
    Left = 304
    Top = 16
    Width = 49
    Height = 22
    GroupIndex = 1
    Caption = 'Airbrush'
  end
  object SpeedButton9: TSpeedButton
    Left = 248
    Top = 16
    Width = 49
    Height = 22
    GroupIndex = 1
    Caption = 'Brush'
  end
  object SpeedButton10: TSpeedButton
    Left = 96
    Top = 48
    Width = 49
    Height = 22
    GroupIndex = 1
    Caption = 'R.Rect'
  end
  object SpeedButton11: TSpeedButton
    Left = 200
    Top = 48
    Width = 41
    Height = 22
    GroupIndex = 1
    Caption = 'Pollygon'
    OnClick = SpeedButton11Click
  end
  object SpeedButton12: TSpeedButton
    Left = 248
    Top = 48
    Width = 49
    Height = 22
    GroupIndex = 1
    Caption = 'Pick'
  end
  object SpeedButton13: TSpeedButton
    Left = 304
    Top = 48
    Width = 49
    Height = 22
  end
  object Label1: TLabel
    Left = 592
    Top = 144
    Width = 39
    Height = 13
    Caption = 'Fill Color'
  end
  object Label2: TLabel
    Left = 592
    Top = 224
    Width = 47
    Height = 13
    Caption = 'Line Color'
  end
  object ColorBox1: TColorBox
    Left = 584
    Top = 248
    Width = 89
    Height = 22
    ItemHeight = 16
    TabOrder = 0
    OnChange = ColorBox1Change
  end
  object ColorBox2: TColorBox
    Left = 584
    Top = 168
    Width = 89
    Height = 22
    DefaultColorColor = clWhite
    NoneColorColor = clWhite
    ItemHeight = 16
    TabOrder = 1
    OnChange = ColorBox2Change
  end
  object RadioGroup1: TRadioGroup
    Left = 576
    Top = 16
    Width = 81
    Height = 65
    Caption = 'Ukuran Brush'
    Items.Strings = (
      '1'
      '4'
      '7')
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
end
