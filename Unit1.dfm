object Main: TMain
  Left = 233
  Top = 153
  Width = 696
  Height = 516
  Caption = 'Main'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgMain: TPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 470
    ActivePage = tsLogowanie
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    OnChange = pgMainChange
    OnEnter = pgMainEnter
    object tsLogowanie: TTabSheet
      Caption = 'Logowanie'
      ImageIndex = 6
      object lblTytul: TLabel
        Left = 48
        Top = 24
        Width = 576
        Height = 135
        Caption = 'Militaria v1.o'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -96
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox5: TGroupBox
        Left = 208
        Top = 192
        Width = 241
        Height = 137
        Caption = 'Logowanie'
        TabOrder = 0
        object lblZapomialemHasla: TLabel
          Left = 136
          Top = 112
          Width = 90
          Height = 13
          Cursor = crHandPoint
          Caption = 'Zapomiales Hasla?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = lblZapomialemHaslaClick
        end
        object btnLogowanie: TButton
          Left = 24
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Zaloguj'
          TabOrder = 0
          OnClick = btnLogowanieClick
        end
        object btnWyloguj: TButton
          Left = 136
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Wyloguj'
          TabOrder = 1
          OnClick = btnWylogujClick
        end
        object cmbLNazwisko: TComboBox
          Left = 16
          Top = 24
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          OnChange = cmbLNazwiskoChange
        end
        object cmbLImie: TComboBox
          Left = 136
          Top = 24
          Width = 89
          Height = 21
          ItemHeight = 13
          TabOrder = 3
        end
        object edtLHaslo: TEdit
          Left = 16
          Top = 48
          Width = 209
          Height = 21
          PasswordChar = '*'
          TabOrder = 4
        end
      end
    end
    object tsPracownicy: TTabSheet
      Caption = 'Pracownicy'
      object DBGPracownik: TDBGrid
        Left = 0
        Top = 0
        Width = 681
        Height = 321
        DataSource = DSPracownik
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGPracownikCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_Pracownik'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nazwisko'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Imie'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Miasto'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KodPocztowy'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ulica'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NrDomu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Telefon'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NIP'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pesel'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Zatrudniony'
            Visible = True
          end>
      end
      object pnlPracownicy: TPanel
        Left = -8
        Top = 320
        Width = 689
        Height = 137
        TabOrder = 1
        object Label6: TLabel
          Left = 192
          Top = 52
          Width = 43
          Height = 13
          Caption = 'Nr. domu'
        end
        object Label5: TLabel
          Left = 192
          Top = 4
          Width = 24
          Height = 13
          Caption = 'Ulica'
        end
        object Label3: TLabel
          Left = 8
          Top = 52
          Width = 31
          Height = 13
          Caption = 'Miasto'
        end
        object Label2: TLabel
          Left = 8
          Top = 28
          Width = 46
          Height = 13
          Caption = 'Nazwisko'
        end
        object Label1: TLabel
          Left = 8
          Top = 4
          Width = 19
          Height = 13
          Caption = 'Imie'
        end
        object Label4: TLabel
          Left = 192
          Top = 28
          Width = 51
          Height = 13
          Caption = 'Kod poczt.'
        end
        object Label7: TLabel
          Left = 384
          Top = 52
          Width = 36
          Height = 13
          Caption = 'Telefon'
        end
        object Label8: TLabel
          Left = 384
          Top = 28
          Width = 18
          Height = 13
          Caption = 'NIP'
        end
        object Label9: TLabel
          Left = 384
          Top = 4
          Width = 26
          Height = 13
          Caption = 'Pesel'
        end
        object btnPDodaj: TButton
          Left = 8
          Top = 88
          Width = 67
          Height = 25
          Caption = 'Dodaj'
          TabOrder = 0
          OnClick = btnPDodajClick
        end
        object btnPZmien: TButton
          Left = 80
          Top = 88
          Width = 67
          Height = 25
          Caption = 'Zmien'
          TabOrder = 1
          OnClick = btnPZmienClick
        end
        object btnPZwolnij: TButton
          Left = 152
          Top = 88
          Width = 81
          Height = 25
          Caption = 'Zwolnij/Przyjmij'
          TabOrder = 2
          OnClick = btnPZwolnijClick
        end
        object chkPokazujZwolnionych: TCheckBox
          Left = 240
          Top = 96
          Width = 113
          Height = 17
          Caption = 'Pokazuj zwolnionych'
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = chkPokazujZwolnionychClick
        end
        object edtPNrDomu: TEdit
          Left = 256
          Top = 52
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object edtPMiasto: TEdit
          Left = 64
          Top = 52
          Width = 121
          Height = 21
          TabOrder = 5
        end
        object edtPNazwisko: TEdit
          Left = 64
          Top = 28
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object edtPImie: TEdit
          Left = 64
          Top = 4
          Width = 121
          Height = 21
          TabOrder = 7
        end
        object edtPKodPocztowy: TMaskEdit
          Left = 256
          Top = 28
          Width = 121
          Height = 21
          EditMask = '00-000;1;_'
          MaxLength = 6
          TabOrder = 8
          Text = '  -   '
        end
        object edtPUlica: TEdit
          Left = 256
          Top = 4
          Width = 121
          Height = 21
          MaxLength = 20
          TabOrder = 9
        end
        object edtPPesel: TMaskEdit
          Left = 448
          Top = 52
          Width = 121
          Height = 21
          EditMask = '###########;1;_'
          MaxLength = 11
          TabOrder = 10
          Text = '           '
        end
        object edtPNip: TMaskEdit
          Left = 448
          Top = 28
          Width = 121
          Height = 21
          EditMask = '###-###-##-##;1;_'
          MaxLength = 13
          TabOrder = 11
          Text = '   -   -  -  '
        end
        object edtPTelefon: TMaskEdit
          Left = 448
          Top = 4
          Width = 121
          Height = 21
          EditMask = '### ### ###;1;_'
          MaxLength = 11
          TabOrder = 12
          Text = '           '
        end
      end
    end
    object tsDostawcy: TTabSheet
      Caption = 'Dostawcy'
      ImageIndex = 1
      object DBGDostawca: TDBGrid
        Left = 0
        Top = 0
        Width = 681
        Height = 321
        DataSource = DSDostawca
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object pnlDostawcy: TPanel
        Left = -8
        Top = 320
        Width = 689
        Height = 145
        TabOrder = 1
        object Label12: TLabel
          Left = 8
          Top = 52
          Width = 51
          Height = 13
          Caption = 'Kod poczt.'
        end
        object Label11: TLabel
          Left = 8
          Top = 28
          Width = 31
          Height = 13
          Caption = 'Miasto'
        end
        object Label10: TLabel
          Left = 8
          Top = 4
          Width = 33
          Height = 13
          Caption = 'Nazwa'
        end
        object Label15: TLabel
          Left = 192
          Top = 52
          Width = 36
          Height = 13
          Caption = 'Telefon'
        end
        object Label14: TLabel
          Left = 192
          Top = 28
          Width = 40
          Height = 13
          Caption = 'Nr domu'
        end
        object Label13: TLabel
          Left = 192
          Top = 4
          Width = 24
          Height = 13
          Caption = 'Ulica'
        end
        object btnDZakonczWspolprace: TButton
          Left = 168
          Top = 88
          Width = 135
          Height = 25
          Caption = 'Zakoncz Wspolprace'
          TabOrder = 0
        end
        object btnDZmien: TButton
          Left = 88
          Top = 88
          Width = 73
          Height = 25
          Caption = 'Zmien'
          TabOrder = 1
        end
        object btnDDodaj: TButton
          Left = 8
          Top = 88
          Width = 73
          Height = 25
          Caption = 'Dodaj'
          TabOrder = 2
          OnClick = btnDDodajClick
        end
        object edtDNazwaFirmy: TEdit
          Left = 64
          Top = 4
          Width = 119
          Height = 21
          TabOrder = 3
        end
        object edtDMiasto: TEdit
          Left = 64
          Top = 28
          Width = 119
          Height = 21
          TabOrder = 4
        end
        object edtDKodPocztowy: TMaskEdit
          Left = 64
          Top = 52
          Width = 119
          Height = 21
          EditMask = '##-###;1;_'
          MaxLength = 6
          TabOrder = 5
          Text = '  -   '
        end
        object edtDUlica: TEdit
          Left = 256
          Top = 4
          Width = 120
          Height = 21
          TabOrder = 6
        end
        object edtDNrDomu: TEdit
          Left = 256
          Top = 28
          Width = 120
          Height = 21
          TabOrder = 7
        end
        object edtDTelefon: TMaskEdit
          Left = 256
          Top = 52
          Width = 121
          Height = 21
          EditMask = '### ### ###;1;_'
          MaxLength = 11
          TabOrder = 8
          Text = '           '
        end
      end
    end
    object tsKupujacy: TTabSheet
      Caption = 'Klienci'
      ImageIndex = 2
      object DBGKupujacy: TDBGrid
        Left = 0
        Top = 0
        Width = 681
        Height = 321
        DataSource = DSKupujacy
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object pnlKlienci: TPanel
        Left = -8
        Top = 320
        Width = 689
        Height = 153
        TabOrder = 1
        object Label19: TLabel
          Left = 8
          Top = 52
          Width = 31
          Height = 13
          Caption = 'Miasto'
        end
        object Label17: TLabel
          Left = 8
          Top = 4
          Width = 19
          Height = 13
          Caption = 'Imie'
        end
        object Label18: TLabel
          Left = 8
          Top = 28
          Width = 46
          Height = 13
          Caption = 'Nazwisko'
        end
        object Label20: TLabel
          Left = 192
          Top = 52
          Width = 51
          Height = 13
          Caption = 'Kod poczt.'
        end
        object Label21: TLabel
          Left = 192
          Top = 28
          Width = 24
          Height = 13
          Caption = 'Ulica'
        end
        object Label22: TLabel
          Left = 192
          Top = 4
          Width = 40
          Height = 13
          Caption = 'Nr domu'
        end
        object Label24: TLabel
          Left = 384
          Top = 28
          Width = 40
          Height = 13
          Caption = 'Licencja'
        end
        object Label23: TLabel
          Left = 384
          Top = 4
          Width = 36
          Height = 13
          Caption = 'Telefon'
        end
        object btnKZmien: TButton
          Left = 88
          Top = 88
          Width = 73
          Height = 25
          Caption = 'Zmien'
          TabOrder = 0
        end
        object btnKDodaj: TButton
          Left = 8
          Top = 88
          Width = 73
          Height = 25
          Caption = 'Dodaj'
          TabOrder = 1
          OnClick = btnKDodajClick
        end
        object edtKMiasto: TEdit
          Left = 64
          Top = 52
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object edtKNazwisko: TEdit
          Left = 64
          Top = 28
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object edtKImie: TEdit
          Left = 64
          Top = 4
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object edtKKodPocztowy: TMaskEdit
          Left = 256
          Top = 52
          Width = 121
          Height = 21
          EditMask = '##-###;1;_'
          MaxLength = 6
          TabOrder = 5
          Text = '  -   '
        end
        object edtKUlica: TEdit
          Left = 256
          Top = 28
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object edtKNrDomu: TEdit
          Left = 256
          Top = 4
          Width = 121
          Height = 21
          TabOrder = 7
        end
        object cmbKLicencja: TComboBox
          Left = 448
          Top = 28
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 8
          Items.Strings = (
            'Tak'
            'Nie')
        end
        object edtKTelefon: TMaskEdit
          Left = 448
          Top = 4
          Width = 121
          Height = 21
          EditMask = '### ### ###;1;_'
          MaxLength = 11
          TabOrder = 9
          Text = '           '
        end
      end
    end
    object tsSprzet: TTabSheet
      Caption = 'Sprzet'
      ImageIndex = 3
      object Label25: TLabel
        Left = 0
        Top = 144
        Width = 108
        Height = 13
        Caption = 'Dost'#281'pne egzemplarze'
      end
      object Label26: TLabel
        Left = 0
        Top = 288
        Width = 113
        Height = 13
        Caption = 'Sprzedane egzemplarze'
      end
      object DBGSprzet: TDBGrid
        Left = 0
        Top = 0
        Width = 465
        Height = 145
        DataSource = DSSprzet
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGSprzetCellClick
      end
      object DBGDostepne: TDBGrid
        Left = 0
        Top = 160
        Width = 681
        Height = 129
        DataSource = DSDostepne
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBGZamowiony: TDBGrid
        Left = 0
        Top = 304
        Width = 681
        Height = 128
        DataSource = DSSprzedane
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object gbSprzet: TGroupBox
        Left = 472
        Top = 0
        Width = 209
        Height = 145
        Caption = 'gbSprzet'
        TabOrder = 3
        object Label42: TLabel
          Left = 8
          Top = 24
          Width = 45
          Height = 13
          Caption = 'Kategoria'
        end
        object Label43: TLabel
          Left = 8
          Top = 48
          Width = 40
          Height = 13
          Caption = 'Licencja'
        end
        object Label44: TLabel
          Left = 8
          Top = 72
          Width = 66
          Height = 13
          Caption = 'Zastosowanie'
        end
        object edtSKategoria: TEdit
          Left = 80
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object edtSZastosowanie: TEdit
          Left = 80
          Top = 72
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object btnSDodaj: TButton
          Left = 24
          Top = 112
          Width = 75
          Height = 25
          Caption = 'Dodaj'
          TabOrder = 2
          OnClick = btnSDodajClick
        end
        object btnSZmien: TButton
          Left = 112
          Top = 112
          Width = 75
          Height = 25
          Caption = 'Zmien'
          TabOrder = 3
        end
        object edtSLicencja: TComboBox
          Left = 80
          Top = 48
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 4
          Items.Strings = (
            'Tak'
            'Nie')
        end
      end
    end
    object tsDostawy: TTabSheet
      Caption = 'Dostawy'
      ImageIndex = 4
      object Label40: TLabel
        Left = 0
        Top = 128
        Width = 110
        Height = 13
        Caption = 'Egzemplarze z dostawy'
      end
      object Label41: TLabel
        Left = 0
        Top = 256
        Width = 110
        Height = 13
        Caption = 'Wszystkie egzemplarze'
      end
      object DBGEgzemplarz: TDBGrid
        Left = 0
        Top = 272
        Width = 465
        Height = 160
        DataSource = DSEgzemplarz
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGEgzemplarzCellClick
      end
      object DBGDostawa: TDBGrid
        Left = -1
        Top = 0
        Width = 386
        Height = 129
        DataSource = DSDostawa
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGDostawaCellClick
      end
      object DBGTowarZDostawy: TDBGrid
        Left = 0
        Top = 144
        Width = 465
        Height = 113
        DataSource = DSTowarZDostawy
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGTowarZDostawyCellClick
      end
      object gbEgzemplarz: TGroupBox
        Left = 472
        Top = 136
        Width = 209
        Height = 297
        Caption = 'gbEgzemplarz'
        TabOrder = 3
        object Label31: TLabel
          Left = 8
          Top = 24
          Width = 33
          Height = 13
          Caption = 'Nazwa'
        end
        object Label32: TLabel
          Left = 8
          Top = 96
          Width = 25
          Height = 13
          Caption = 'Cena'
        end
        object Label33: TLabel
          Left = 8
          Top = 120
          Width = 61
          Height = 13
          Caption = 'Miejsce Prod'
        end
        object Label34: TLabel
          Left = 8
          Top = 48
          Width = 38
          Height = 13
          Caption = 'Rozmiar'
        end
        object Label35: TLabel
          Left = 8
          Top = 72
          Width = 45
          Height = 13
          Caption = 'Rok Prod'
        end
        object Label27: TLabel
          Left = 8
          Top = 144
          Width = 24
          Height = 13
          Caption = 'Kolor'
        end
        object Label36: TLabel
          Left = 8
          Top = 168
          Width = 45
          Height = 13
          Caption = 'Kategoria'
        end
        object Label37: TLabel
          Left = 8
          Top = 192
          Width = 40
          Height = 13
          Caption = 'Licencja'
        end
        object Label38: TLabel
          Left = 8
          Top = 216
          Width = 35
          Height = 13
          Caption = 'Zastos.'
        end
        object Label39: TLabel
          Left = 8
          Top = 240
          Width = 47
          Height = 13
          Caption = 'ID_Sprzet'
        end
        object lblID_Sprzet: TLabel
          Left = 72
          Top = 240
          Width = 7
          Height = 13
          Caption = '#'
        end
        object edtEMiejsceProdukcji: TEdit
          Left = 72
          Top = 116
          Width = 119
          Height = 21
          TabOrder = 0
        end
        object edtECena: TEdit
          Left = 72
          Top = 92
          Width = 119
          Height = 21
          TabOrder = 1
        end
        object edtERokProdukcji: TMaskEdit
          Left = 72
          Top = 68
          Width = 120
          Height = 21
          EditMask = '####;1;_'
          MaxLength = 4
          TabOrder = 2
          Text = '    '
        end
        object edtERozmiar: TEdit
          Left = 72
          Top = 44
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object edtENazwa: TEdit
          Left = 72
          Top = 20
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object cmbEKategoria: TComboBox
          Left = 72
          Top = 164
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 5
          OnChange = cmbEKategoriaChange
        end
        object cmbELicencja: TComboBox
          Left = 72
          Top = 188
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 6
          OnChange = cmbELicencjaChange
          Items.Strings = (
            '')
        end
        object cmbEZastosowanie: TComboBox
          Left = 72
          Top = 212
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 7
          OnChange = cmbEZastosowanieChange
        end
        object edtEKolor: TEdit
          Left = 72
          Top = 140
          Width = 121
          Height = 21
          TabOrder = 8
        end
        object btnEZmien: TButton
          Left = 104
          Top = 264
          Width = 75
          Height = 25
          Caption = 'Zmien'
          TabOrder = 9
        end
        object btnEDodaj: TButton
          Left = 24
          Top = 264
          Width = 75
          Height = 25
          Caption = 'Dodaj'
          TabOrder = 10
          OnClick = btnEDodajClick
        end
      end
      object gbDostawa: TGroupBox
        Left = 392
        Top = 0
        Width = 289
        Height = 129
        Caption = 'gbDostawa'
        TabOrder = 4
        object Label28: TLabel
          Left = 8
          Top = 24
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label29: TLabel
          Left = 8
          Top = 48
          Width = 50
          Height = 13
          Caption = 'Pracownik'
        end
        object Label30: TLabel
          Left = 8
          Top = 72
          Width = 48
          Height = 13
          Caption = 'Dostawca'
        end
        object cmbEPracownik: TComboBox
          Left = 64
          Top = 48
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnChange = cmbEPracownikChange
        end
        object cmbEDostawca: TComboBox
          Left = 64
          Top = 72
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 1
        end
        object edtEData: TMaskEdit
          Left = 64
          Top = 24
          Width = 120
          Height = 21
          EditMask = '####-##-##;1;_'
          MaxLength = 10
          TabOrder = 2
          Text = '    -  -  '
        end
        object cmbEImie: TComboBox
          Left = 184
          Top = 48
          Width = 97
          Height = 21
          ItemHeight = 13
          TabOrder = 3
        end
        object btnENowaDostawa: TButton
          Left = 176
          Top = 96
          Width = 107
          Height = 25
          Caption = 'Nowa Dostawa'
          TabOrder = 4
          OnClick = btnENowaDostawaClick
        end
        object btnDDzis: TButton
          Left = 184
          Top = 24
          Width = 97
          Height = 21
          Caption = 'Dzis'
          TabOrder = 5
          OnClick = btnDDzisClick
        end
      end
    end
    object tsZamowienia: TTabSheet
      Caption = 'Zamowienia'
      ImageIndex = 5
      object Label47: TLabel
        Left = 0
        Top = 160
        Width = 129
        Height = 13
        Caption = 'Egzemplarze w zamowieniu'
      end
      object Label52: TLabel
        Left = 0
        Top = 272
        Width = 93
        Height = 13
        Caption = 'Wolne egzemplarze'
      end
      object gbZamowienie: TGroupBox
        Left = 392
        Top = 0
        Width = 289
        Height = 161
        Caption = 'Zamowienie'
        TabOrder = 0
        object Label48: TLabel
          Left = 8
          Top = 24
          Width = 50
          Height = 13
          Caption = 'Pracownik'
        end
        object Label49: TLabel
          Left = 8
          Top = 48
          Width = 44
          Height = 13
          Caption = 'Kupujacy'
        end
        object Label50: TLabel
          Left = 8
          Top = 96
          Width = 41
          Height = 13
          Caption = 'Platnosc'
        end
        object Label51: TLabel
          Left = 8
          Top = 72
          Width = 48
          Height = 13
          Caption = 'Data zam.'
        end
        object cmbZPracownik: TComboBox
          Left = 64
          Top = 24
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnChange = cmbZPracownikChange
        end
        object cmbZPracImie: TComboBox
          Left = 184
          Top = 24
          Width = 97
          Height = 21
          ItemHeight = 13
          TabOrder = 1
        end
        object edtZSposobPlatnosci: TEdit
          Left = 64
          Top = 96
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object mskZData: TMaskEdit
          Left = 64
          Top = 72
          Width = 120
          Height = 21
          EditMask = '####-##-##;1;_'
          MaxLength = 10
          TabOrder = 3
          Text = '    -  -  '
        end
        object cmbZKupujacy: TComboBox
          Left = 64
          Top = 48
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 4
          OnChange = cmbZKupujacyChange
        end
        object cmbZKupImie: TComboBox
          Left = 184
          Top = 48
          Width = 97
          Height = 21
          ItemHeight = 13
          TabOrder = 5
        end
        object btnNoweZamownienie: TButton
          Left = 160
          Top = 128
          Width = 123
          Height = 25
          Caption = 'Nowe Zamownienie'
          TabOrder = 6
          OnClick = btnNoweZamownienieClick
        end
        object btnZamDzis: TButton
          Left = 184
          Top = 72
          Width = 97
          Height = 21
          Caption = 'Dzis'
          TabOrder = 7
          OnClick = btnZamDzisClick
        end
      end
      object DBGNIeSprzedane: TDBGrid
        Left = 0
        Top = 288
        Width = 681
        Height = 144
        DataSource = DSNieSprzedane
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGNIeSprzedaneDblClick
      end
      object pcZamowienia: TPageControl
        Left = 0
        Top = 0
        Width = 385
        Height = 161
        ActivePage = tsZrealizowane
        Style = tsButtons
        TabIndex = 0
        TabOrder = 2
        OnChange = pcZamowieniaChange
        object tsZrealizowane: TTabSheet
          Caption = 'Zrealizowane'
          object DBGZamowienieZrealizowane: TDBGrid
            Left = 0
            Top = 0
            Width = 377
            Height = 129
            DataSource = DSZamowienieZrealizowane
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = DBGZamowienieZrealizowaneCellClick
          end
        end
        object tsDoRealizacji: TTabSheet
          Caption = 'Do realizacji'
          ImageIndex = 1
          object DBGZamownieDoRealizacji: TDBGrid
            Left = 0
            Top = 0
            Width = 377
            Height = 129
            DataSource = DSZamowienieDoRealizacji
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = DBGZamownieDoRealizacjiCellClick
          end
        end
      end
      object gbZakup: TGroupBox
        Left = 392
        Top = 160
        Width = 289
        Height = 113
        Caption = 'Realizacja'
        TabOrder = 3
        object Label45: TLabel
          Left = 8
          Top = 48
          Width = 46
          Height = 13
          Caption = 'Data zak.'
        end
        object Label46: TLabel
          Left = 8
          Top = 24
          Width = 50
          Height = 13
          Caption = 'Pracownik'
        end
        object edtZakData: TMaskEdit
          Left = 64
          Top = 48
          Width = 120
          Height = 21
          EditMask = '####-##-##;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '    -  -  '
        end
        object btnZRealizuj: TButton
          Left = 200
          Top = 80
          Width = 81
          Height = 25
          Caption = 'Realizuj'
          TabOrder = 1
          OnClick = btnZRealizujClick
        end
        object btnZDzis: TButton
          Left = 184
          Top = 48
          Width = 97
          Height = 21
          Caption = 'Dzis'
          TabOrder = 2
          OnClick = btnZDzisClick
        end
        object cmbZakNazwisko: TComboBox
          Left = 64
          Top = 24
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 3
          OnChange = cmbZakNazwiskoChange
        end
        object cmbZakImie: TComboBox
          Left = 184
          Top = 24
          Width = 97
          Height = 21
          ItemHeight = 13
          TabOrder = 4
        end
      end
      object btnZDodajDoZam: TButton
        Left = 208
        Top = 456
        Width = 105
        Height = 25
        Caption = 'btnZDodajDoZam'
        TabOrder = 4
      end
      object Button1: TButton
        Left = 112
        Top = 456
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 5
        OnClick = Button1Click
      end
      object DBGSprzedane: TDBGrid
        Left = 0
        Top = 176
        Width = 385
        Height = 97
        DataSource = DSEgzemplarzWZamowieniu
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGSprzedaneDblClick
      end
    end
    object tsUprawnienia: TTabSheet
      Caption = 'Uprawnienia'
      ImageIndex = 7
      object TLabel
        Left = 8
        Top = 336
        Width = 3
        Height = 13
      end
      object DBGUprawnienia: TDBGrid
        Left = 0
        Top = 0
        Width = 681
        Height = 321
        DataSource = DSUprawnienia
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGUprawnieniaCellClick
      end
      object pnlUprawnienia: TPanel
        Left = -8
        Top = 320
        Width = 689
        Height = 145
        TabOrder = 1
        object Label57: TLabel
          Left = 8
          Top = 12
          Width = 46
          Height = 13
          Caption = 'Nazwisko'
        end
        object Label56: TLabel
          Left = 8
          Top = 36
          Width = 19
          Height = 13
          Caption = 'Imie'
        end
        object Label61: TLabel
          Left = 190
          Top = 8
          Width = 27
          Height = 13
          Caption = 'Haslo'
        end
        object Label62: TLabel
          Left = 191
          Top = 32
          Width = 66
          Height = 13
          Caption = 'Powtorz haslo'
        end
        object Label16: TLabel
          Left = 432
          Top = 12
          Width = 55
          Height = 13
          Caption = 'Pracownicy'
        end
        object Label53: TLabel
          Left = 496
          Top = 12
          Width = 47
          Height = 13
          Caption = 'Dostawcy'
        end
        object Label58: TLabel
          Left = 560
          Top = 12
          Width = 31
          Height = 13
          Caption = 'Klienci'
        end
        object Label59: TLabel
          Left = 623
          Top = 12
          Width = 30
          Height = 13
          Caption = 'Sprzet'
        end
        object Label55: TLabel
          Left = 464
          Top = 52
          Width = 41
          Height = 13
          Caption = 'Dostawy'
        end
        object Label54: TLabel
          Left = 528
          Top = 52
          Width = 57
          Height = 13
          Caption = 'Zamowienia'
        end
        object Label60: TLabel
          Left = 592
          Top = 52
          Width = 59
          Height = 13
          Caption = 'Uprawnienia'
        end
        object btnUZmien: TButton
          Left = 8
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Zmien'
          TabOrder = 0
          OnClick = btnUZmienClick
        end
        object btnUZmienHaslo: TButton
          Left = 88
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Ustaw haslo'
          TabOrder = 1
          OnClick = btnUZmienHasloClick
        end
        object pnlUImie: TPanel
          Left = 64
          Top = 32
          Width = 121
          Height = 21
          Caption = 'pnlUImie'
          Ctl3D = True
          Enabled = False
          ParentCtl3D = False
          TabOrder = 2
          object edtUImie: TEdit
            Left = 0
            Top = 0
            Width = 121
            Height = 21
            TabOrder = 0
          end
        end
        object pnlUNazwisko: TPanel
          Left = 64
          Top = 8
          Width = 121
          Height = 21
          Caption = 'pnlUNazwisko'
          Enabled = False
          TabOrder = 3
          object edtUNazwisko: TEdit
            Left = 0
            Top = 0
            Width = 121
            Height = 21
            TabOrder = 0
          end
        end
        object edtUHaslo: TEdit
          Left = 264
          Top = 8
          Width = 121
          Height = 21
          PasswordChar = '*'
          TabOrder = 4
        end
        object edtUHaslo2: TEdit
          Left = 264
          Top = 32
          Width = 121
          Height = 21
          PasswordChar = '*'
          TabOrder = 5
        end
        object cmbUPracownicy: TComboBox
          Left = 432
          Top = 28
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 6
          Items.Strings = (
            '0'
            '1'
            '2')
        end
        object cmbUDostawcy: TComboBox
          Left = 496
          Top = 28
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 7
          Items.Strings = (
            '0'
            '1'
            '2')
        end
        object cmbUKlienci: TComboBox
          Left = 560
          Top = 28
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 8
          Items.Strings = (
            '0'
            '1'
            '2')
        end
        object cmbUSprzet: TComboBox
          Left = 624
          Top = 28
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 9
          Items.Strings = (
            '0'
            '1'
            '2')
        end
        object cmbUUprawnienia: TComboBox
          Left = 592
          Top = 68
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 10
          Items.Strings = (
            '0'
            '1'
            '2')
        end
        object cmbUZamowienia: TComboBox
          Left = 528
          Top = 68
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 11
          Items.Strings = (
            '0'
            '1'
            '2')
        end
        object cmbUDostawy: TComboBox
          Left = 464
          Top = 68
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 12
          Items.Strings = (
            '0'
            '1'
            '2')
        end
      end
    end
    object tsRaporty: TTabSheet
      Caption = 'Raporty'
      ImageIndex = 8
      object QuickRep1: TQuickRep
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = ADOPracownik
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100
          2970
          100
          2100
          100
          100
          0)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
      end
    end
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=data.mdb;Mode=Share' +
      ' Deny None;Extended Properties="";Persist Security Info=False;Je' +
      't OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:' +
      'Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database ' +
      'Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Glo' +
      'bal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet O' +
      'LEDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fal' +
      'se;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compac' +
      't Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 208
    Top = 552
  end
  object ADOPracownik: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Pracownik order by Nazwisko, Imie;')
    Left = 336
    Top = 552
  end
  object DSPracownik: TDataSource
    DataSet = ADOPracownik
    Left = 304
    Top = 552
  end
  object ADODostawca: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Dostawca order by NazwaFirmy;')
    Left = 336
    Top = 552
  end
  object DSDostawca: TDataSource
    DataSet = ADODostawca
    Left = 304
    Top = 552
  end
  object ADOKupujacy: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Kupujacy order by Nazwisko, Imie;')
    Left = 336
    Top = 552
  end
  object DSKupujacy: TDataSource
    DataSet = ADOKupujacy
    Left = 304
    Top = 552
  end
  object ADOSprzet: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select ID_Sprzet, Kategoria, Licencja, Zastosowanie from Sprzet ' +
        'order by Kategoria;')
    Left = 336
    Top = 552
  end
  object DSSprzet: TDataSource
    DataSet = ADOSprzet
    Left = 304
    Top = 552
  end
  object DSDostepne: TDataSource
    DataSet = ADODostepne
    Left = 368
    Top = 552
  end
  object ADOSprzedane: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 400
    Top = 552
  end
  object DSSprzedane: TDataSource
    DataSet = ADOSprzedane
    Left = 368
    Top = 552
  end
  object ADOEgzemplarz: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct'
      
        'Egzemplarz.Nazwa, Egzemplarz.Cena, Egzemplarz.Kolor, Egzemplarz.' +
        'Rozmiar, Egzemplarz.RokProdukcji, Egzemplarz.MiejsceProdukcji,'
      'Sprzet.Kategoria, Sprzet.Licencja, Sprzet.Zastosowanie'
      'from Egzemplarz, Sprzet'
      'where (Sprzet.ID_Sprzet=Egzemplarz.ID_Sprzet)'
      'order by Nazwa, RokProdukcji;')
    Left = 400
    Top = 552
  end
  object DSEgzemplarz: TDataSource
    DataSet = ADOEgzemplarz
    Left = 368
    Top = 552
  end
  object ADOWybierzSprzet: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Kategoria, Zastosowanie, Licencja, ID_Sprzet from Sprzet;')
    Left = 400
    Top = 552
  end
  object DSWybierzSprzet: TDataSource
    DataSet = ADOWybierzSprzet
    Left = 368
    Top = 552
  end
  object DSDostawa: TDataSource
    DataSet = ADODostawa
    Left = 432
    Top = 552
  end
  object ADODostawa: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      
        'Dostawa.ID_Dostawa, Dostawa.DataDostDostawy, Dostawca.NazwaFirmy' +
        ', Pracownik.Imie, Pracownik.Nazwisko from Dostawa, Pracownik, Do' +
        'stawca '
      'where'
      
        '(Dostawa.ID_Pracownik=Pracownik.ID_Pracownik) and (Dostawa.ID_Do' +
        'stawca=Dostawca.ID_Dostawca)'
      'order by DataDostDostawy desc;')
    Left = 464
    Top = 552
  end
  object ADOTowarZDostawy: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 464
    Top = 552
  end
  object DSTowarZDostawy: TDataSource
    DataSet = ADOTowarZDostawy
    Left = 432
    Top = 552
  end
  object ADODodawanie: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 208
    Top = 552
  end
  object ADOZamowienieZrealizowane: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      
        'Zamowienie.ID_Zamowienie, Zamowienie.DataZamowienia, Pracownik.I' +
        'mie, Pracownik.Nazwisko, Kupujacy.Imie, Kupujacy.Nazwisko, Zamow' +
        'ienie.SposobPlatnosci,'
      'Zakup.DataZakupu, Zakup.ID_Pracownik'
      'from'
      'Zamowienie, Pracownik, Kupujacy, Zakup'
      
        'where (Zamowienie.Realizacja='#39'Tak'#39') and (Zamowienie.ID_Kupujacy=' +
        'Kupujacy.ID_Kupujacy) and (Zamowienie.ID_Pracownik=Pracownik.ID_' +
        'Pracownik) and (Zamowienie.ID_Zamowienie=Zakup.ID_Zamowienie);'
      '')
    Left = 464
    Top = 552
  end
  object DSZamowienieZrealizowane: TDataSource
    DataSet = ADOZamowienieZrealizowane
    Left = 432
    Top = 552
  end
  object ADOZamowienieDoRealizacji: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Zamowienie where (Realizacja='#39'Nie'#39');')
    Left = 464
    Top = 552
  end
  object DSZamowienieDoRealizacji: TDataSource
    DataSet = ADOZamowienieDoRealizacji
    Left = 432
    Top = 552
  end
  object ADONieSprzedane: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select Egzemplarz.ID_Egzemplarz, Egzemplarz.Nazwa, Egzemplarz.Ce' +
        'na, Egzemplarz.Kolor, Egzemplarz.Rozmiar, Egzemplarz.RokProdukcj' +
        'i, Egzemplarz.MiejsceProdukcji,'
      'Sprzet.Kategoria, Sprzet.Zastosowanie, Sprzet.Licencja '
      
        'from Egzemplarz, Sprzet where (Egzemplarz.Dostepny='#39'Tak'#39') and (E' +
        'gzemplarz.ID_Sprzet=Sprzet.ID_Sprzet);')
    Left = 272
    Top = 552
  end
  object DSNieSprzedane: TDataSource
    DataSet = ADONieSprzedane
    Left = 240
    Top = 552
  end
  object ADOEgzemplarzWZamowieniu: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 272
    Top = 552
  end
  object DSEgzemplarzWZamowieniu: TDataSource
    DataSet = ADOEgzemplarzWZamowieniu
    Left = 240
    Top = 552
  end
  object ADODostepne: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 400
    Top = 552
  end
  object ADOUprawnienia: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      'Pracownik.ID_Pracownik, Pracownik.Imie, Pracownik.Nazwisko,'
      
        'Uprawnienia.Pracownicy, Uprawnienia.Dostawcy, Uprawnienia.Klienc' +
        'i, Uprawnienia.Sprzet, Uprawnienia.Dostawy, Uprawnienia.Zamowien' +
        'ia, Uprawnienia.Uprawnienia'
      'from Pracownik, Uprawnienia'
      
        'where (Uprawnienia.ID_Pracownik=Pracownik.ID_Pracownik) order by' +
        ' Nazwisko, Imie;')
    Left = 272
    Top = 552
  end
  object DSUprawnienia: TDataSource
    DataSet = ADOUprawnienia
    Left = 240
    Top = 552
  end
  object MainMenu: TMainMenu
    Left = 208
    Top = 552
    object menPlik: TMenuItem
      Caption = 'Plik'
      object Zakoncz1: TMenuItem
        Caption = 'Zakoncz'
        OnClick = Zakoncz1Click
      end
    end
    object Wyczyscpola1: TMenuItem
      Caption = 'Wyczysc pola'
    end
  end
end
