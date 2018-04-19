object frmMainForm: TfrmMainForm
  Left = 0
  Top = 0
  Caption = 'Demonstrating detouring of ShowMessage and MessageDlg '
  ClientHeight = 514
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    720
    514)
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 8
    Top = 8
    Width = 138
    Height = 25
    Caption = 'Call ShowMessage'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btnMessageDlg: TButton
    Left = 152
    Top = 8
    Width = 138
    Height = 25
    Caption = 'Call MessageDlg'
    TabOrder = 1
    OnClick = btnMessageDlgClick
  end
  object mmoLog: TMemo
    Left = 8
    Top = 39
    Width = 704
    Height = 467
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      
        'This form contains direct calls to ShowMessage and MessageDlg vi' +
        'a the buttons above.'
      ''
      
        'As used in project "ShowMessageNoDetour" it works as you'#39'd expec' +
        't, with a messagedlg shown.  '
      ''
      
        'As used in project "ShowMessageWithDetour" the calls to ShowMess' +
        'age and MessageDlg is intercepted and redirected to this TMemo '
      'instead.  '
      ''
      
        'This magic is made possible by the Delphi Detours library, is do' +
        'ne without modifying uMainForm.pas at all and is set up by/in th' +
        'e unit '
      
        '"uSetupDialogDetours.pas", which is only included in the project' +
        ' "ShowMessageWithDetour" and by an additional line (to wire up t' +
        'he Log '
      'method on the form to the uSetupDialogDetours unit.)'
      ''
      
        'In the "ShowMessageWithDetour" project, when clicking the button' +
        's, the messages that would'#39've been displayed will get logged/det' +
        'oured '
      'below the line:'
      '---------------------------------------')
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
