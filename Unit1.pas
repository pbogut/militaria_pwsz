unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, Grids, DBGrids, Mask, StdCtrls, DBCtrls,
  ExtCtrls, Menus, QuickRpt;

type
  TMain = class(TForm)
    pgMain: TPageControl;
    tsPracownicy: TTabSheet;
    ADOConnection: TADOConnection;
    ADOPracownik: TADOQuery;
    DSPracownik: TDataSource;
    DBGPracownik: TDBGrid;
    tsDostawcy: TTabSheet;
    DBGDostawca: TDBGrid;
    ADODostawca: TADOQuery;
    DSDostawca: TDataSource;
    tsKupujacy: TTabSheet;
    ADOKupujacy: TADOQuery;
    DSKupujacy: TDataSource;
    DBGKupujacy: TDBGrid;
    tsSprzet: TTabSheet;
    DBGSprzet: TDBGrid;
    ADOSprzet: TADOQuery;
    DSSprzet: TDataSource;
    DBGDostepne: TDBGrid;
    DSDostepne: TDataSource;
    DBGZamowiony: TDBGrid;
    ADOSprzedane: TADOQuery;
    DSSprzedane: TDataSource;
    Label25: TLabel;
    Label26: TLabel;
    tsDostawy: TTabSheet;
    DBGEgzemplarz: TDBGrid;
    ADOEgzemplarz: TADOQuery;
    DSEgzemplarz: TDataSource;
    ADOWybierzSprzet: TADOQuery;
    DSWybierzSprzet: TDataSource;
    DSDostawa: TDataSource;
    ADODostawa: TADOQuery;
    ADOTowarZDostawy: TADOQuery;
    DSTowarZDostawy: TDataSource;
    ADODodawanie: TADOQuery;
    DBGDostawa: TDBGrid;
    DBGTowarZDostawy: TDBGrid;
    gbEgzemplarz: TGroupBox;
    edtEMiejsceProdukcji: TEdit;
    edtECena: TEdit;
    edtERokProdukcji: TMaskEdit;
    edtERozmiar: TEdit;
    edtENazwa: TEdit;
    gbDostawa: TGroupBox;
    cmbEPracownik: TComboBox;
    cmbEDostawca: TComboBox;
    edtEData: TMaskEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    cmbEKategoria: TComboBox;
    cmbELicencja: TComboBox;
    cmbEZastosowanie: TComboBox;
    Label27: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    cmbEImie: TComboBox;
    edtEKolor: TEdit;
    Label39: TLabel;
    lblID_Sprzet: TLabel;
    btnENowaDostawa: TButton;
    btnDDzis: TButton;
    Label40: TLabel;
    Label41: TLabel;
    btnEZmien: TButton;
    btnEDodaj: TButton;
    gbSprzet: TGroupBox;
    edtSKategoria: TEdit;
    edtSZastosowanie: TEdit;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    btnSDodaj: TButton;
    btnSZmien: TButton;
    tsZamowienia: TTabSheet;
    ADOZamowienieZrealizowane: TADOQuery;
    DSZamowienieZrealizowane: TDataSource;
    ADOZamowienieDoRealizacji: TADOQuery;
    DSZamowienieDoRealizacji: TDataSource;
    Label47: TLabel;
    gbZamowienie: TGroupBox;
    cmbZPracownik: TComboBox;
    cmbZPracImie: TComboBox;
    edtZSposobPlatnosci: TEdit;
    mskZData: TMaskEdit;
    cmbZKupujacy: TComboBox;
    cmbZKupImie: TComboBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBGNIeSprzedane: TDBGrid;
    ADONieSprzedane: TADOQuery;
    DSNieSprzedane: TDataSource;
    Label52: TLabel;
    ADOEgzemplarzWZamowieniu: TADOQuery;
    DSEgzemplarzWZamowieniu: TDataSource;
    btnNoweZamownienie: TButton;
    pcZamowienia: TPageControl;
    tsZrealizowane: TTabSheet;
    tsDoRealizacji: TTabSheet;
    DBGZamowienieZrealizowane: TDBGrid;
    DBGZamownieDoRealizacji: TDBGrid;
    gbZakup: TGroupBox;
    edtZakData: TMaskEdit;
    Label45: TLabel;
    btnZRealizuj: TButton;
    ADODostepne: TADOQuery;
    edtSLicencja: TComboBox;
    btnZamDzis: TButton;
    btnZDzis: TButton;
    btnZDodajDoZam: TButton;
    cmbZakNazwisko: TComboBox;
    cmbZakImie: TComboBox;
    Label46: TLabel;
    Button1: TButton;
    DBGSprzedane: TDBGrid;
    tsLogowanie: TTabSheet;
    tsUprawnienia: TTabSheet;
    ADOUprawnienia: TADOQuery;
    DSUprawnienia: TDataSource;
    DBGUprawnienia: TDBGrid;
    GroupBox5: TGroupBox;
    lblZapomialemHasla: TLabel;
    btnLogowanie: TButton;
    btnWyloguj: TButton;
    cmbLNazwisko: TComboBox;
    cmbLImie: TComboBox;
    edtLHaslo: TEdit;
    lblTytul: TLabel;
    MainMenu: TMainMenu;
    menPlik: TMenuItem;
    Zakoncz1: TMenuItem;
    Wyczyscpola1: TMenuItem;
    pnlPracownicy: TPanel;
    btnPDodaj: TButton;
    btnPZmien: TButton;
    btnPZwolnij: TButton;
    chkPokazujZwolnionych: TCheckBox;
    edtPNrDomu: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    edtPMiasto: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    edtPNazwisko: TEdit;
    edtPImie: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    edtPKodPocztowy: TMaskEdit;
    edtPUlica: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtPPesel: TMaskEdit;
    edtPNip: TMaskEdit;
    edtPTelefon: TMaskEdit;
    pnlDostawcy: TPanel;
    btnDZakonczWspolprace: TButton;
    btnDZmien: TButton;
    btnDDodaj: TButton;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    edtDNazwaFirmy: TEdit;
    edtDMiasto: TEdit;
    edtDKodPocztowy: TMaskEdit;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    edtDUlica: TEdit;
    edtDNrDomu: TEdit;
    edtDTelefon: TMaskEdit;
    pnlKlienci: TPanel;
    btnKZmien: TButton;
    btnKDodaj: TButton;
    Label19: TLabel;
    edtKMiasto: TEdit;
    edtKNazwisko: TEdit;
    edtKImie: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edtKKodPocztowy: TMaskEdit;
    edtKUlica: TEdit;
    edtKNrDomu: TEdit;
    cmbKLicencja: TComboBox;
    edtKTelefon: TMaskEdit;
    Label24: TLabel;
    Label23: TLabel;
    pnlUprawnienia: TPanel;
    btnUZmien: TButton;
    btnUZmienHaslo: TButton;
    Label57: TLabel;
    Label56: TLabel;
    pnlUImie: TPanel;
    pnlUNazwisko: TPanel;
    edtUNazwisko: TEdit;
    edtUImie: TEdit;
    Label61: TLabel;
    Label62: TLabel;
    edtUHaslo: TEdit;
    edtUHaslo2: TEdit;
    Label16: TLabel;
    Label53: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    cmbUPracownicy: TComboBox;
    cmbUDostawcy: TComboBox;
    cmbUKlienci: TComboBox;
    cmbUSprzet: TComboBox;
    Label55: TLabel;
    Label54: TLabel;
    Label60: TLabel;
    cmbUUprawnienia: TComboBox;
    cmbUZamowienia: TComboBox;
    cmbUDostawy: TComboBox;
    tsRaporty: TTabSheet;
    QuickRep1: TQuickRep;
    procedure WypelnijCombo;
    procedure DBGSprzetCellClick(Column: TColumn);
    procedure DBGDostawaCellClick(Column: TColumn);
    procedure btnPDodajClick(Sender: TObject);
    procedure btnDDodajClick(Sender: TObject);
    procedure btnKDodajClick(Sender: TObject);
    procedure btnEDodajClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGEgzemplarzCellClick(Column: TColumn);
    procedure cmbEKategoriaChange(Sender: TObject);
    procedure cmbELicencjaChange(Sender: TObject);
    procedure cmbEPracownikChange(Sender: TObject);
    procedure cmbEZastosowanieChange(Sender: TObject);
    procedure btnENowaDostawaClick(Sender: TObject);
    procedure DBGTowarZDostawyCellClick(Column: TColumn);
    procedure btnSDodajClick(Sender: TObject);
    procedure DBGZamownieDoRealizacjiCellClick(Column: TColumn);
    procedure DBGZamowienieZrealizowaneCellClick(Column: TColumn);
    procedure DBGNIeSprzedaneDblClick(Sender: TObject);
    procedure DBGSprzedaneDblClick(Sender: TObject);
    procedure btnNoweZamownienieClick(Sender: TObject);
    procedure cmbZPracownikChange(Sender: TObject);
    procedure cmbZKupujacyChange(Sender: TObject);
    procedure cmbZakNazwiskoChange(Sender: TObject);
    procedure btnZRealizujClick(Sender: TObject);
    procedure pcZamowieniaChange(Sender: TObject);
    procedure pgMainEnter(Sender: TObject);
    procedure cmbLNazwiskoChange(Sender: TObject);
    procedure lblZapomialemHaslaClick(Sender: TObject);
    procedure btnLogowanieClick(Sender: TObject);
    procedure btnWylogujClick(Sender: TObject);
    procedure btnPZmienClick(Sender: TObject);
    procedure DBGUprawnieniaCellClick(Column: TColumn);
    procedure btnZDzisClick(Sender: TObject);
    procedure btnZamDzisClick(Sender: TObject);
    procedure btnDDzisClick(Sender: TObject);
    procedure btnPZwolnijClick(Sender: TObject);
    procedure DBGPracownikCellClick(Column: TColumn);
    procedure pgMainChange(Sender: TObject);
    procedure Zakoncz1Click(Sender: TObject);
    procedure chkPokazujZwolnionychClick(Sender: TObject);
    procedure btnUZmienHasloClick(Sender: TObject);
    procedure btnUZmienClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.WypelnijCombo;
var i:integer;
begin
with ADODodawanie do begin
//-----Nazwisko Pracownika-----//
  SQL.Clear;
  SQL.Text:='select Nazwisko from Pracownik where Zatrudniony='+#39+'Tak'+#39+';';
  ExecSQL;
  Active:=True;
  First;
  cmbLNazwisko.Items.Clear;
  cmbEPracownik.Items.Clear;
  cmbZPracownik.Items.Clear;
  cmbZakNazwisko.Items.Clear;
  for i:=0 to RecordCount-1 do begin
    cmbLNazwisko.Items.Add(ADODodawanie.FieldByName('Nazwisko').AsString);
    cmbEPracownik.Items.Add(ADODodawanie.FieldByName('Nazwisko').AsString);
    cmbZPracownik.Items.Add(ADODodawanie.FieldByName('Nazwisko').AsString);
    cmbZakNazwisko.Items.Add(ADODodawanie.FieldByName('Nazwisko').AsString);
    Next;
  end;
//-----Nazwisko Klienta-----//
  SQL.Clear;
  SQL.Text:='select Nazwisko from Kupujacy;';
  ExecSQL;
  Active:=True;
  First;
  cmbZKupujacy.Items.Clear;
  for i:=0 to RecordCount-1 do begin
    cmbZKupujacy.Items.Add(ADODodawanie.FieldByName('Nazwisko').AsString);
    Next;
  end;
//-----Nazwa Firmy-----//
  SQL.Clear;
  SQL.Text:='select NazwaFirmy from Dostawca;';
  ExecSQL;
  Active:=True;
  First;
  cmbEDostawca.Items.Clear;
  for i:=0 to RecordCount-1 do begin
    cmbEDostawca.Items.Add(ADODodawanie.FieldByName('NazwaFirmy').AsString);
    Next;
  end;
  SQL.Clear;
  SQL.Text:='select distinct Kategoria from Sprzet;';
  ExecSQL;
  Active:=True;
  First;
  cmbEKategoria.Items.Clear;
  for i:=0 to RecordCount-1 do begin
    cmbEKategoria.Items.Add(ADODodawanie.FieldByName('Kategoria').AsString);
    Next;
  end;
end;
end;

procedure TMain.DBGSprzetCellClick(Column: TColumn);
begin
  if ADOSprzet.RecordCount=0 then exit;
  edtSKategoria.Text:=ADOSprzet.FieldByName('Kategoria').AsString;
  edtSLicencja.Text:=ADOSprzet.FieldByName('Licencja').AsString;
  edtSZastosowanie.Text:=ADOSprzet.FieldByName('Zastosowanie').AsString;
  ADODostepne.SQL.Text:='select Nazwa, Cena, Kolor, Rozmiar, RokProdukcji, MiejsceProdukcji '+
  'from Egzemplarz ' +
  'where (ID_Sprzet='+ADOSprzet.FieldByName('ID_Sprzet').AsString+') '+
  'and (Dostepny="Tak");';
  ADODostepne.ExecSQL;
  ADODostepne.Active:=true;

  ADOSprzedane.SQL.Text:='select Nazwa, Cena, Kolor, Rozmiar, RokProdukcji, MiejsceProdukcji '+
  'from Egzemplarz '+
  'where (ID_Sprzet='+Main.ADOSprzet.FieldByName('ID_Sprzet').AsString+') '+
  'and (Dostepny="Nie");';
  ADOSprzedane.ExecSQL;
  ADOSprzedane.Active:=true;
end;

procedure TMain.DBGDostawaCellClick(Column: TColumn);
begin
  if ADODostawa.RecordCount=0 then exit;
  ADOTowarZDostawy.SQL.Text:='select '+
  'Egzemplarz.Nazwa, Egzemplarz.Cena, Egzemplarz.Kolor, Egzemplarz.Rozmiar, Egzemplarz.RokProdukcji, Egzemplarz.MiejsceProdukcji, '+
  'Sprzet.Kategoria, Sprzet.Zastosowanie, Sprzet.Licencja '+
  'from Egzemplarz, Sprzet '+
  'where (Egzemplarz.ID_Dostawa='+ADODostawa.FieldByName('ID_Dostawa').AsString+') '+
  'and (Egzemplarz.ID_Sprzet=Sprzet.ID_Sprzet);';
  ADOTowarZDostawy.ExecSQL;
  ADOTowarZDostawy.Active:=true;
  edtEData.Text:=ADODostawa.FieldByName('DataDostDostawy').AsString;
  cmbEPracownik.Text:=ADODostawa.FieldByName('Nazwisko').AsString;
  cmbEImie.Text:=ADODostawa.FieldByName('Imie').AsString;
  cmbEDostawca.Text:=ADODostawa.FieldByName('NazwaFirmy').AsString;
end;



procedure TMain.btnPDodajClick(Sender: TObject);
var s:string;
begin
ADODodawanie.SQL.Clear;
ADODodawanie.SQL.Text:='insert into Pracownik '+
'(Nazwisko, Imie, Miasto, KodPocztowy, Ulica, NrDomu, Telefon, NIP, Pesel, Zatrudniony) values '+
'('+#39+edtPNazwisko.Text+#39+','+#39+edtPImie.Text+#39+','+#39+edtPMiasto.Text+#39+','+#39+edtPKodPocztowy.Text+#39+','+#39+edtPUlica.Text+#39+','+#39+edtPNrDomu.Text+#39+','+#39+edtPTelefon.Text+#39+','+#39+edtPNIP.Text+#39+','+#39+edtPPesel.Text+#39+','+#39+'Tak'+#39+');';
ADODodawanie.ExecSQL;
ADODodawanie.SQL.Clear;
ADODodawanie.SQL.Text:=
'select ID_Pracownik from Pracownik where (Nazwisko='+#39+edtPNazwisko.Text+#39+') and (Imie='+#39+edtPImie.Text+#39+');';
ADODodawanie.ExecSQL;
ADODodawanie.Active:=true;
s:=ADODodawanie.FieldByName('ID_Pracownik').AsString;
ADODodawanie.SQL.Clear;
ADODodawanie.SQL.Text:=
'insert into Uprawnienia (ID_Pracownik, Pracownicy, Dostawcy, Klienci, Sprzet, Dostawy, Zamowienia, Uprawnienia) values '+
'('+s+',0,0,0,1,0,0,0);';
ADODodawanie.ExecSQL;
with ADOPracownik do begin
  s:=SQL.Text;
  SQL.Clear;
  SQL.Text:=s;
  ExecSQL;
  Active:=true;
end;
end;

procedure TMain.btnDDodajClick(Sender: TObject);
var s:string;
begin
ADODodawanie.SQL.Clear;
ADODodawanie.SQL.Text:='insert into Dostawca '+
'(NazwaFirmy, Miasto, KodPocztowy, Ulica, NrDomu, Telefon, Wspolpraca) values '+
'('+#39+edtDNazwaFirmy.Text+#39+','+#39+edtDMiasto.Text+#39+','+#39+edtDKodPocztowy.Text+#39+','+#39+edtDUlica.Text+#39+','+#39+edtDNrDomu.Text+#39+','+#39+edtDTelefon.Text+#39+','+#39+'Tak'+#39+');';
ADODodawanie.ExecSQL;
with ADODostawca do begin
  s:=SQL.Text;
  SQL.Clear;
  SQL.Text:=s;
  ExecSQL;
  Active:=true;
end;
end;

procedure TMain.btnKDodajClick(Sender: TObject);
var s:string;
begin
ADODodawanie.SQL.Clear;
ADODodawanie.SQL.Text:='insert into Kupujacy '+
'(Imie, Nazwisko, Miasto, KodPocztowy, Ulica, NrDomu, Telefon, Licencja) values '+
'('+#39+edtKImie.Text+#39+','+#39+edtKNazwisko.Text+#39+','+#39+edtKMiasto.Text+#39+','+#39+edtKKodPocztowy.Text+#39+','+#39+edtKUlica.Text+#39+','+#39+edtKNrDomu.Text+#39+','+#39+edtKTelefon.Text+#39+','+#39+cmbKLicencja.Text+#39+');';
ADODodawanie.ExecSQL;
with ADOKupujacy do begin
  s:=SQL.Text;
  SQL.Clear;
  SQL.Text:=s;
  ExecSQL;
  Active:=true;
end;
end;

procedure TMain.btnEDodajClick(Sender: TObject);
var s:string;
begin
  ADODodawanie.SQL.Clear;
  ADODodawanie.SQL.Text:='select ID_Dostawa from Dostawa where '+
  '(DataDostDostawy='+#39+edtEData.Text+#39+') and (ID_Pracownik='+
  '(select ID_Pracownik from Pracownik where (Nazwisko='+#39+cmbEPracownik.Text+#39+') and (Imie='+#39+cmbEImie.Text+#39+');));';
  ADODodawanie.ExecSQL;
  ADODodawanie.Active:=true;
  s:=ADODodawanie.FieldByName('ID_Dostawa').AsString;
  ADODodawanie.SQL.Clear;
{  if s='' then begin
    ADODodawanie.SQL.Text:='insert into Dostawa (DataDostDostawy, ID_Dostawca, ID_Pracownik) values '+
   '('+#39+edtEData.Text+#39+',(select ID_Dostawca from Dostawca where (NazwaFirmy='+#39+cmbEDostawca.Text+#39+');),'+
   '(select ID_Pracownik from Pracownik where (Imie='+#39+cmbEImie.Text+#39+') and (Nazwisko='+#39+cmbEPracownik.Text+#39+');));';
    ADODodawanie.ExecSQL;
    ADODodawanie.SQL.Clear;
    ADODodawanie.SQL.Text:='select ID_Dostawa from Dostawa where '+
    '(DataDostDostawy='+#39+edtEData.Text+#39+') and (ID_Pracownik='+
    '(select ID_Pracownik from Pracownik where (Nazwisko='+#39+cmbEPracownik.Text+#39+') and (Imie='+#39+cmbEImie.Text+#39+');));';
    ADODodawanie.ExecSQL;
    ADODodawanie.Active:=true;
    s:=ADODodawanie.FieldByName('ID_Dostawa').AsString;
    ADODodawanie.SQL.Clear;
  end; }

  ADODodawanie.SQL.Text:='insert into Egzemplarz '+
  '(ID_Dostawa, Nazwa, Rozmiar, RokProdukcji, Kolor, Cena, MiejsceProdukcji, Dostepny, ID_Sprzet) values '+
  '('+#39+s+#39+','+#39+edtENazwa.Text+#39+','+#39+edtERozmiar.Text+#39+','+#39+edtERokProdukcji.Text+#39+','+#39+edtEKolor.Text+#39+','+#39+edtECena.Text+#39+','+#39+edtEMiejsceProdukcji.Text+#39+','+#39+'Tak'+#39+', '+
  #39+lblID_Sprzet.Caption+#39+');';
  ADODodawanie.ExecSQL;
with ADOEgzemplarz do begin
  s:=SQL.Text;
  SQL.Clear;
  SQL.Text:=s;
  ExecSQL;
  Active:=true;
end;
with ADOTowarZDostawy do begin
  s:=SQL.Text;
  SQL.Clear;
  SQL.Text:=s;
  ExecSQL;
  Active:=true;
end;
end;


procedure TMain.Button1Click(Sender: TObject);
begin
gbZamowienie.Enabled:=true;
end;


procedure TMain.DBGEgzemplarzCellClick(Column: TColumn);
begin
  if ADOEgzemplarz.RecordCount=0 then exit;
  edtENazwa.Text:=ADOEgzemplarz.FieldByName('Nazwa').AsString;
  edtERozmiar.Text:=ADOEgzemplarz.FieldByName('Rozmiar').AsString;
  edtERokProdukcji.Text:=ADOEgzemplarz.FieldByName('RokProdukcji').AsString;
  edtECena.Text:=ADOEgzemplarz.FieldByName('Cena').AsString;
  edtEMiejsceProdukcji.Text:=ADOEgzemplarz.FieldByName('MiejsceProdukcji').AsString;
  edtEKolor.Text:=ADOEgzemplarz.FieldByName('Kolor').AsString;
  cmbEKategoria.Text:=ADOEgzemplarz.FieldByName('Kategoria').AsString;
  cmbELicencja.Text:=ADOEgzemplarz.FieldByName('Licencja').AsString;
  cmbEZastosowanie.Text:=ADOEgzemplarz.FieldByName('Zastosowanie').AsString;
end;

procedure TMain.cmbEKategoriaChange(Sender: TObject);
var i:integer;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select distinct Licencja from Sprzet '+
    'where (Kategoria='+#39+cmbEKategoria.Text+#39+');';
    ExecSQL;
    Active:=True;
    First;
    cmbEZastosowanie.Items.Clear;
    cmbELicencja.Items.Clear;
    for i:=0 to RecordCount-1 do begin
      cmbELicencja.Items.Add(ADODodawanie.FieldByName('Licencja').AsString);
      Next;
    end;
  end;
  cmbEZastosowanie.Text:='';
  cmbELicencja.Text:='';
end;

procedure TMain.cmbELicencjaChange(Sender: TObject);
var i:integer;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select distinct Zastosowanie from Sprzet '+
    'where (Licencja='+#39+cmbELicencja.Text+#39+') and (Kategoria='+#39+cmbEKategoria.Text+#39+');';
    ExecSQL;
    Active:=True;
    First;
    cmbEZastosowanie.Items.Clear;
    for i:=0 to RecordCount-1 do begin
      cmbEZastosowanie.Items.Add(ADODodawanie.FieldByName('Zastosowanie').AsString);
      Next;
    end;
  end;
  cmbEZastosowanie.Text:='';
end;


procedure TMain.cmbEPracownikChange(Sender: TObject);
var i:integer;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select distinct Imie from Pracownik '+
    'where (Nazwisko='+#39+cmbEPracownik.Text+#39+');';
    ExecSQL;
    Active:=True;
    First;
    cmbEImie.Items.Clear;
    for i:=0 to RecordCount-1 do begin
      cmbEImie.Items.Add(ADODodawanie.FieldByName('Imie').AsString);
      Next;
    end;
  end;
  cmbEImie.Text:=cmbEImie.Items.Strings[0];
end;

procedure TMain.cmbEZastosowanieChange(Sender: TObject);
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select ID_Sprzet from Sprzet '+
    'where (Kategoria='+#39+cmbEKategoria.Text+#39+') and (Licencja='+#39+cmbELicencja.Text+#39+') and (Zastosowanie='+#39+cmbEZastosowanie.Text+#39+');';
    ExecSQL;
    Active:=True;
    First;
  end;
  lblID_Sprzet.Caption:=ADODodawanie.FieldByName('ID_Sprzet').AsString;
end;

procedure TMain.btnENowaDostawaClick(Sender: TObject);
var s,g:string;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select ID_Pracownik from Pracownik where (Imie='+#39+cmbEImie.Text+#39+') and (Nazwisko='+#39+cmbEPracownik.Text+#39+');';
    ExecSQL;
    Active:=true;
    s:=FieldByName('ID_Pracownik').AsString;

    SQL.Clear;
    SQL.Text:='select ID_Dostawca from Dostawca where (NazwaFirmy='+#39+cmbEDostawca.Text+#39+');';
    ExecSQL;
    Active:=true;
    g:=FieldByName('ID_Dostawca').AsString;

    SQL.Clear;
    SQL.Text:='insert into Dostawa (DataDostDostawy, ID_Dostawca, ID_Pracownik) values '+
    '('+#39+edtEData.Text+#39+','+g+','+s+');';
    ExecSQL;
  end;
  with ADODostawa do begin
    s:=SQL.Text;
    SQL.Clear;
    SQL.Text:=s;
    ExecSQL;
    Active:=true;
  end;
end;

procedure TMain.DBGTowarZDostawyCellClick(Column: TColumn);
begin
  if ADOTowarZDostawy.RecordCount=0 then exit;
  edtENazwa.Text:=ADOTowarZDostawy.FieldByName('Nazwa').AsString;
  edtERozmiar.Text:=ADOTowarZDostawy.FieldByName('Rozmiar').AsString;
  edtERokProdukcji.Text:=ADOTowarZDostawy.FieldByName('RokProdukcji').AsString;
  edtECena.Text:=ADOTowarZDostawy.FieldByName('Cena').AsString;
  edtEMiejsceProdukcji.Text:=ADOTowarZDostawy.FieldByName('MiejsceProdukcji').AsString;
  edtEKolor.Text:=ADOTowarZDostawy.FieldByName('Kolor').AsString;
  cmbEKategoria.Text:=ADOTowarZDostawy.FieldByName('Kategoria').AsString;
  cmbELicencja.Text:=ADOTowarZDostawy.FieldByName('Licencja').AsString;
  cmbEZastosowanie.Text:=ADOTowarZDostawy.FieldByName('Zastosowanie').AsString;
  cmbEZastosowanieChange(DBGEgzemplarz);
end;

procedure TMain.btnSDodajClick(Sender: TObject);
var s:string;
begin
ADODodawanie.SQL.Clear;
ADODodawanie.SQL.Text:='insert into Sprzet '+
'(Kategoria, Licencja, Zastosowanie) values '+
'('+#39+edtSKategoria.Text+#39+','+#39+edtSLicencja.Text+#39+','+#39+edtSZastosowanie.Text+#39+');';
ADODodawanie.ExecSQL;
with ADOSprzet do begin
  s:=SQL.Text;
  SQL.Clear;
  SQL.Text:=s;
  ExecSQL;
  Active:=true;
end;
end;

procedure TMain.DBGZamownieDoRealizacjiCellClick(Column: TColumn);
begin
if ADOZamowienieDoRealizacji.RecordCount=0 then exit;
ADOEgzemplarzWZamowieniu.SQL.Clear;
ADOEgzemplarzWZamowieniu.SQL.Text:='select '+
  'Egzemplarz.ID_Egzemplarz, Egzemplarz.Nazwa, Egzemplarz.Cena, Egzemplarz.Kolor, Egzemplarz.Rozmiar, Egzemplarz.RokProdukcji, Egzemplarz.MiejsceProdukcji, '+
  'Sprzet.Kategoria, Sprzet.Zastosowanie, Sprzet.Licencja '+
  'from Egzemplarz, Sprzet '+
  'where (Sprzet.ID_Sprzet=Egzemplarz.ID_Sprzet) and (Egzemplarz.ID_Zamowienie='+ADOZamowienieDoRealizacji.FieldByName('ID_Zamowienie').AsString+');';
ADOEgzemplarzWZamowieniu.ExecSQL;
ADOEgzemplarzWZamowieniu.Active:=true;
end;

procedure TMain.DBGZamowienieZrealizowaneCellClick(Column: TColumn);
begin
if ADOZamowienieZrealizowane.RecordCount=0 then exit;
ADOEgzemplarzWZamowieniu.SQL.Clear;
ADOEgzemplarzWZamowieniu.SQL.Text:='select '+
  'Egzemplarz.ID_Egzemplarz, Egzemplarz.Nazwa, Egzemplarz.Cena, Egzemplarz.Kolor, Egzemplarz.Rozmiar, Egzemplarz.RokProdukcji, Egzemplarz.MiejsceProdukcji, '+
  'Sprzet.Kategoria, Sprzet.Zastosowanie, Sprzet.Licencja '+
  'from Egzemplarz, Sprzet '+
  'where (Sprzet.ID_Sprzet=Egzemplarz.ID_Sprzet) and (Egzemplarz.ID_Zamowienie='+ADOZamowienieZrealizowane.FieldByName('ID_Zamowienie').AsString+');';
ADOEgzemplarzWZamowieniu.ExecSQL;
ADOEgzemplarzWZamowieniu.Active:=true;

cmbZPracownik.Text:=ADOZamowienieZrealizowane.FieldByName('Pracownik.Nazwisko').AsString;
cmbZPracImie.Text:=ADOZamowienieZrealizowane.FieldByName('Pracownik.Imie').AsString;
cmbZKupujacy.Text:=ADOZamowienieZrealizowane.FieldByName('Kupujacy.Nazwisko').AsString;
cmbZKupImie.Text:=ADOZamowienieZrealizowane.FieldByName('Kupujacy.Imie').AsString;
mskZData.Text:=ADOZamowienieZrealizowane.FieldByName('DataZamowienia').AsString;
edtZSposobPlatnosci.Text:=ADOZamowienieZrealizowane.FieldByName('SposobPlatnosci').AsString;
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select Imie, Nazwisko from Pracownik where (ID_Pracownik='+ADOZamowienieZrealizowane.FieldByName('ID_Pracownik').AsString+');';
    ExecSQL;
    Active:=true;
    cmbZakNazwisko.Text:=ADODodawanie.FieldByName('Nazwisko').AsString;
    cmbZakImie.Text:=ADODodawanie.FieldByName('Imie').AsString;
  end;
  edtZakData.Text:=ADOZamowienieZrealizowane.FieldByName('DataZakupu').AsString;
end;

procedure TMain.DBGNIeSprzedaneDblClick(Sender: TObject);
var s:string;
begin
  if gbZamowienie.Enabled=false then exit;
  if ADONieSprzedane.RecordCount=0 then exit;
  if pcZamowienia.ActivePage.Caption='Zrealizowane' then exit;
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='update Egzemplarz set Dostepny='+#39+'Nie'+#39+', ID_Zamowienie='+ADOZamowienieDoRealizacji.FieldByName('ID_Zamowienie').AsString+' where (ID_Egzemplarz='+ADONieSprzedane.FieldByName('ID_Egzemplarz').AsString+');';
    ExecSQL;
  end;
  with ADOEgzemplarzWZamowieniu do begin
    s:=SQL.Text;
    SQL.Clear;
    SQL.Text:=s;
    ExecSQL;
    Active:=true;
  end;
  with ADONieSprzedane do begin
    s:=SQL.Text;
    SQL.Clear;
    SQL.Text:=s;
    ExecSQL;
    Active:=true;
  end;
end;

procedure TMain.DBGSprzedaneDblClick(Sender: TObject);
var s:string;
begin
  if gbZamowienie.Enabled=false then exit;
  if ADOEgzemplarzWZamowieniu.RecordCount=0 then exit;
  if pcZamowienia.ActivePage.Caption='Zrealizowane' then exit;
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='update Egzemplarz set Dostepny='+#39+'Tak'+#39+', ID_Zamowienie=0 where (ID_Egzemplarz='+ADOEgzemplarzWZamowieniu.FieldByName('ID_Egzemplarz').AsString+');';
    ExecSQL;
  end;
  with ADONieSprzedane do begin
    s:=SQL.Text;
    SQL.Clear;
    SQL.Text:=s;
    ExecSQL;
    Active:=true;
  end;
  with ADOEgzemplarzWZamowieniu do begin
    s:=SQL.Text;
    SQL.Clear;
    SQL.Text:=s;
    ExecSQL;
    Active:=true;
  end;
end;

procedure TMain.btnNoweZamownienieClick(Sender: TObject);
var s,g:string;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select ID_Kupujacy from Kupujacy where (Nazwisko='+#39+cmbZKupujacy.Text+#39+') and (Imie='+#39+cmbZKupImie.Text+#39+');';
    ExecSQL;
    Active:=true;
    s:=FieldByName('ID_Kupujacy').AsString;

    SQL.Clear;
    SQL.Text:='select ID_Pracownik from Pracownik where (Nazwisko='+#39+cmbZPracownik.Text+#39+') and (Imie='+#39+cmbZPracImie.Text+#39+');';
    ExecSQL;
    Active:=true;
    g:=FieldByName('ID_Pracownik').AsString;
    
    SQL.Clear;
    SQL.Text:='insert into Zamowienie (ID_Kupujacy, ID_Pracownik, DataZamowienia, SposobPlatnosci, Realizacja) values '+
    '('+s+','+g+','+#39+mskZData.Text+#39+', '+#39+edtZSposobPlatnosci.Text+#39+', '+#39+'Nie'+#39+');';
    ExecSQL;
  end;
  with ADOZamowienieDoRealizacji do begin
    s:=SQL.Text;
    SQL.Clear;
    SQL.Text:=s;
    ExecSQL;
    Active:=true;
  end;
end;

procedure TMain.cmbZPracownikChange(Sender: TObject);
var i:integer;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select distinct Imie from Pracownik '+
    'where (Nazwisko='+#39+cmbZPracownik.Text+#39+');';
    ExecSQL;
    Active:=True;
    First;
    cmbZPracImie.Items.Clear;
    for i:=0 to RecordCount-1 do begin
      cmbZPracImie.Items.Add(ADODodawanie.FieldByName('Imie').AsString);
      Next;
    end;
  end;
  cmbZPracImie.Text:=cmbZPracImie.Items.Strings[0];
end;



procedure TMain.cmbZKupujacyChange(Sender: TObject);
var i:integer;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select distinct Imie from Kupujacy '+
    'where (Nazwisko='+#39+cmbZKupujacy.Text+#39+');';
    ExecSQL;
    Active:=True;
    First;
    cmbZKupImie.Items.Clear;
    for i:=0 to RecordCount-1 do begin
      cmbZKupImie.Items.Add(ADODodawanie.FieldByName('Imie').AsString);
      Next;
    end;
  end;
  cmbZKupImie.Text:=cmbZKupImie.Items.Strings[0];
end;

procedure TMain.cmbZakNazwiskoChange(Sender: TObject);
var i:integer;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select distinct Imie from Pracownik '+
    'where (Nazwisko='+#39+cmbZakNazwisko.Text+#39+');';
    ExecSQL;
    Active:=True;
    First;
    cmbZakImie.Items.Clear;
    for i:=0 to RecordCount-1 do begin
      cmbZakImie.Items.Add(ADODodawanie.FieldByName('Imie').AsString);
      Next;
    end;
  end;
  cmbZakImie.Text:=cmbZakImie.Items.Strings[0];
end;

procedure TMain.btnZRealizujClick(Sender: TObject);
var s:string;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select ID_Pracownik from Pracownik where (Nazwisko='+#39+cmbZakNazwisko.Text+#39+') and (Imie='+#39+cmbZakImie.Text+#39+');';
    ExecSQL;
    Active:=true;
    s:=FieldByName('ID_Pracownik').AsString;
    SQL.Clear;
    SQL.Text:='insert into Zakup (ID_Zamowienie, ID_Kupujacy, ID_Pracownik, DataZakupu) values '+
    '('+ADOZamowienieDoRealizacji.FieldByName('ID_Zamowienie').AsString+','+ADOZamowienieDoRealizacji.FieldByName('ID_Kupujacy').AsString+
    ','+#39+s+#39+','+#39+edtZakData.Text+#39+');';
    ExecSQL;
    SQL.Clear;
    SQL.Text:='update Zamowienie set Realizacja='+#39+'Tak'+#39+' where (ID_Zamowienie='+ADOZamowienieDoRealizacji.FieldByName('ID_Zamowienie').AsString+');';
    ExecSQL;
  end;
  with ADOZamowienieDoRealizacji do begin
    s:=SQL.Text;
    SQL.Clear;
    SQL.Text:=s;
    ExecSQL;
    Active:=true;
  end;
  with ADOZamowienieZrealizowane do begin
    s:=SQL.Text;
    SQL.Clear;
    SQL.Text:=s;
    ExecSQL;
    Active:=true;
  end;
end;

procedure TMain.pcZamowieniaChange(Sender: TObject);
begin
  if pcZamowienia.ActivePage.Caption='Do realizacji' then begin
    gbZamowienie.Enabled:=true;
    gbZakup.Enabled:=true;
  end;
  if pcZamowienia.ActivePage.Caption='Zrealizowane' then begin
    gbZamowienie.Enabled:=false;
    gbZakup.Enabled:=false;
  end;
end;

procedure TMain.pgMainEnter(Sender: TObject);
begin
if btnLogowanie.Enabled=true then begin
  tsPracownicy.TabVisible:=false;
  tsDostawcy.TabVisible:=false;
  tsKupujacy.TabVisible:=false;
  tsSprzet.TabVisible:=false;
  tsDostawy.TabVisible:=false;
  tsZamowienia.TabVisible:=false;
  tsUprawnienia.TabVisible:=false;
  tsRaporty.TabVisible:=false;
end;
WypelnijCombo;
end;

procedure TMain.cmbLNazwiskoChange(Sender: TObject);
var i:integer;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select distinct Imie from Pracownik '+
    'where (Nazwisko='+#39+cmbLNazwisko.Text+#39+');';
    ExecSQL;
    Active:=True;
    First;
    cmbLImie.Items.Clear;
    for i:=0 to RecordCount-1 do begin
      cmbLImie.Items.Add(ADODodawanie.FieldByName('Imie').AsString);
      Next;
    end;
  end;
  cmbLImie.Text:=cmbLImie.Items.Strings[0];
end;

procedure TMain.lblZapomialemHaslaClick(Sender: TObject);
begin
MessageBox(MB_OK,'No to niestety masz pecha :P', 'Zapomiales hasla?',MB_OK);
end;

procedure TMain.btnLogowanieClick(Sender: TObject);
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:='select * from Uprawnienia where '+
    '(ID_Pracownik=(select ID_Pracownik from Pracownik where (Imie='+#39+cmbLImie.Text+#39+') and (Nazwisko='+#39+cmbLNazwisko.Text+#39+');)) '+
    'and (Haslo='+#39+edtLHaslo.Text+#39+');';
    ExecSQL;
    Active:=true;
  end;
  if ADODodawanie.FieldByName('Haslo').AsString='' then begin
    MessageBox(MB_OK,'Bledny login i/lub haslo!','Blad!',MB_OK);
    exit;
  end;

  MessageBox(MB_OK,'Brawo, zostales zalogowany!','Info!',MB_OK);
  btnLogowanie.Enabled:=false;
  btnWyloguj.Enabled:=true;
  lblZapomialemHasla.Visible:=false;
//-----tutaj nastapi odblokowywanie katrt, buttonow, etc.----//
  if ADODodawanie.FieldByName('Dostawy').AsInteger=1 then
    tsDostawy.TabVisible:=false;
  if ADODodawanie.FieldByName('Dostawy').AsInteger=1 then begin
    gbDostawa.Enabled:=false;
    gbEgzemplarz.Enabled:=false;
    tsDostawy.TabVisible:=true;
  end;
  if ADODodawanie.FieldByName('Dostawy').AsInteger=2 then begin
    gbDostawa.Enabled:=true;
    gbEgzemplarz.Enabled:=true;
    tsDostawy.TabVisible:=true;
  end;
  //.:`:.:`:.//
  if ADODodawanie.FieldByName('Zamowienia').AsInteger=0 then
    tsZamowienia.TabVisible:=false;
  if ADODodawanie.FieldByName('Zamowienia').AsInteger=1 then begin
    gbZamowienie.Enabled:=false;
    gbZakup.Enabled:=false;
    tsZamowienia.TabVisible:=true;
  end;
  if ADODodawanie.FieldByName('Zamowienia').AsInteger=2 then begin
    gbZamowienie.Enabled:=true;
    gbZakup.Enabled:=true;
    tsZamowienia.TabVisible:=true;
  end;
  //.:`:.:`:.//
  if ADODodawanie.FieldByName('Pracownicy').AsInteger=0 then
    tsPracownicy.TabVisible:=false;
  if ADODodawanie.FieldByName('Pracownicy').AsInteger=1 then begin
    pnlPracownicy.Enabled:=false;
    tsPracownicy.TabVisible:=true;
  end;
  if ADODodawanie.FieldByName('Pracownicy').AsInteger=2 then begin
    pnlPracownicy.Enabled:=true;;
    tsPracownicy.TabVisible:=true;
  end;
  //.:`:.:`:.//
  if ADODodawanie.FieldByName('Dostawcy').AsInteger=0 then
    tsDostawcy.TabVisible:=false;
  if ADODodawanie.FieldByName('Dostawcy').AsInteger=1 then begin
    pnlDostawcy.Enabled:=false;
    tsDostawcy.TabVisible:=true;
  end;
  if ADODodawanie.FieldByName('Dostawcy').AsInteger=2 then begin
    pnlDostawcy.Enabled:=true;;
    tsDostawcy.TabVisible:=true;
  end;
  //.:`:.:`:.//
  if ADODodawanie.FieldByName('Klienci').AsInteger=0 then
    tsKupujacy.TabVisible:=false;
  if ADODodawanie.FieldByName('Klienci').AsInteger=1 then begin
    pnlKlienci.Enabled:=false;
    tsKupujacy.TabVisible:=true;
  end;
  if ADODodawanie.FieldByName('Klienci').AsInteger=2 then begin
    pnlKlienci.Enabled:=true;;
    tsKupujacy.TabVisible:=true;
  end;
  //.:`:.:`:.//
  if ADODodawanie.FieldByName('Sprzet').AsInteger=0 then
    tsSprzet.TabVisible:=false;
  if ADODodawanie.FieldByName('Sprzet').AsInteger=1 then begin
    gbSprzet.Enabled:=false;
    tsSprzet.TabVisible:=true;
  end;
  if ADODodawanie.FieldByName('Sprzet').AsInteger=2 then begin
    gbSprzet.Enabled:=true;;
    tsSprzet.TabVisible:=true;
  end;
  //.:`:.:`:.//
  if ADODodawanie.FieldByName('Uprawnienia').AsInteger=0 then
    tsUprawnienia.TabVisible:=false;
  if ADODodawanie.FieldByName('Uprawnienia').AsInteger=1 then begin
    pnlUprawnienia.Enabled:=false;
    tsUprawnienia.TabVisible:=true;
  end;
  if ADODodawanie.FieldByName('Uprawnienia').AsInteger=2 then begin
    pnlUprawnienia.Enabled:=true;;
    tsUprawnienia.TabVisible:=true;
  end;

end;

procedure TMain.btnWylogujClick(Sender: TObject);
begin
  tsPracownicy.TabVisible:=false;
  tsDostawcy.TabVisible:=false;
  tsKupujacy.TabVisible:=false;
  tsSprzet.TabVisible:=false;
  tsDostawy.TabVisible:=false;
  tsZamowienia.TabVisible:=false;
  tsUprawnienia.TabVisible:=false;
  tsRaporty.TabVisible:=false;
  btnLogowanie.Enabled:=true;
  btnWyloguj.Enabled:=false;
  lblZapomialemHasla.Visible:=true;
end;

procedure TMain.btnPZmienClick(Sender: TObject);
var s:string;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:=
    'update Pracownik set '+
    'Nazwisko='+#39+edtPNazwisko.Text+#39+', '+
    'Imie='+#39+edtPImie.Text+#39+', '+
    'Miasto='+#39+edtPMiasto.Text+#39+', '+
    'Ulica='+#39+edtPUlica.Text+#39+', '+
    'KodPocztowy='+#39+edtPKodPocztowy.Text+#39+', '+
    'NrDomu='+#39+edtPNrDomu.Text+#39+', '+
    'Telefon='+#39+edtPTelefon.Text+#39+', '+
    'NIP='+#39+edtPNIP.Text+#39+', '+
    'Pesel='+#39+edtPPesel.Text+#39+
    ' where (ID_Pracownik='+ADOPracownik.FieldByName('ID_Pracownik').AsString+');';
    ExecSQL;
  end;
  with ADOPracownik do begin
    s:=SQL.Text;
    SQL.Clear;
    SQL.Text:=s;
    ExecSQL;
    Active:=true;
  end;
end;

procedure TMain.DBGUprawnieniaCellClick(Column: TColumn);
var i:integer;
begin
edtUImie.Text:=ADOUprawnienia.FieldByName('Imie').AsString;
edtUNazwisko.Text:=ADOUprawnienia.FieldByName('Nazwisko').AsString;
cmbUDostawy.Text:=cmbUDostawy.Items.Strings[ADOUprawnienia.FieldByName('Dostawy').AsInteger];
cmbUZamowienia.Text:=cmbUZamowienia.Items.Strings[ADOUprawnienia.FieldByName('Zamowienia').AsInteger];
cmbUPracownicy.Text:=cmbUPracownicy.Items.Strings[ADOUprawnienia.FieldByName('Pracownicy').AsInteger];
cmbUDostawcy.Text:=cmbUDostawcy.Items.Strings[ADOUprawnienia.FieldByName('Dostawcy').AsInteger];
cmbUKlienci.Text:=cmbUKlienci.Items.Strings[ADOUprawnienia.FieldByName('Klienci').AsInteger];
cmbUSprzet.Text:=cmbUSprzet.Items.Strings[ADOUprawnienia.FieldByName('Sprzet').AsInteger];
cmbUUprawnienia.Text:=cmbUUprawnienia.Items.Strings[ADOUprawnienia.FieldByName('Uprawnienia').AsInteger];
end;

procedure TMain.btnZDzisClick(Sender: TObject);
begin
edtZakData.Text:=DateToStr(Date);
end;

procedure TMain.btnZamDzisClick(Sender: TObject);
begin
mskZData.Text:=DateToStr(Date);
end;

procedure TMain.btnDDzisClick(Sender: TObject);
begin
edtEData.Text:=DateToStr(Date);
end;

procedure TMain.btnPZwolnijClick(Sender: TObject);
var s:string;
begin
  if ADOPracownik.FieldByName('Zatrudniony').AsString='Tak' then
    with ADODodawanie do begin
      SQL.Clear;
      SQL.Text:='update Pracownik set Zatrudniony='+#39+'Nie'+#39+' where (ID_Pracownik='+ADOPracownik.FieldByName('ID_Pracownik').AsString+');';
      ExecSQL;
    end else
    with ADODodawanie do begin
      SQL.Clear;
      SQL.Text:='update Pracownik set Zatrudniony='+#39+'Tak'+#39+' where (ID_Pracownik='+ADOPracownik.FieldByName('ID_Pracownik').AsString+');';
      ExecSQL;
    end;
  with ADOPracownik do begin
    s:=SQL.Text;
    SQL.Clear;
    SQL.Text:=s;
    ExecSQL;
    Active:=true;
  end;
end;

procedure TMain.DBGPracownikCellClick(Column: TColumn);
begin
  if ADOPracownik.RecordCount=0 then exit;
  edtPNazwisko.Text:=ADOPracownik.FieldByName('Nazwisko').AsString;
  edtPImie.Text:=ADOPracownik.FieldByName('Imie').AsString;
  edtPUlica.Text:=ADOPracownik.FieldByName('Ulica').AsString;
  edtPMiasto.Text:=ADOPracownik.FieldByName('Miasto').AsString;
  edtPNrDomu.Text:=ADOPracownik.FieldByName('NrDomu').AsString;
  edtPTelefon.Text:=ADOPracownik.FieldByName('Telefon').AsString;
  edtPKodPocztowy.Text:=ADOPracownik.FieldByName('KodPocztowy').AsString;
  edtPPesel.Text:=ADOPracownik.FieldByName('Pesel').AsString;
  edtPNIP.Text:=ADOPracownik.FieldByName('NIP').AsString;
end;

procedure TMain.pgMainChange(Sender: TObject);
var s:string;
begin
  if pgMain.ActivePage.Caption='Logowanie' then begin
    WypelnijCombo;
  end;
  if pgMain.ActivePage.Caption='Pracownicy' then begin
    with ADOPracownik do begin
      s:=SQL.Text;
      SQL.Clear;
      SQL.Text:=s;
      ExecSQL;
      Active:=true;
    end;
  end;
  if pgMain.ActivePage.Caption='Dostawcy' then begin
    with ADODostawca do begin
      s:=SQL.Text;
      SQL.Clear;
      SQL.Text:=s;
      ExecSQL;
      Active:=true;
    end;
  end;

  if pgMain.ActivePage.Caption='Klienci' then begin
    with ADOKupujacy do begin
      s:=SQL.Text;
      SQL.Clear;
      SQL.Text:=s;
      ExecSQL;
      Active:=true;
    end;
  end;
  if pgMain.ActivePage.Caption='Sprzet' then begin
    with ADOSprzet do begin
      s:=SQL.Text;
      SQL.Clear;
      SQL.Text:=s;
      ExecSQL;
      Active:=true;
    end;
  end;
  if pgMain.ActivePage.Caption='Dostawy' then begin
    with ADODostawa do begin
      s:=SQL.Text;
      SQL.Clear;
      SQL.Text:=s;
      ExecSQL;
      Active:=true;
    end;
    with ADOEgzemplarz do begin
      s:=SQL.Text;
      SQL.Clear;
      SQL.Text:=s;
      ExecSQL;
      Active:=true;
    end;
    WypelnijCombo;
  end;
  if pgMain.ActivePage.Caption='Zamowienia' then begin
    with ADONieSprzedane do begin
      s:=SQL.Text;
      SQL.Clear;
      SQL.Text:=s;
      ExecSQL;
      Active:=true;
    end;
    with ADOZamowienieDoRealizacji do begin
      s:=SQL.Text;
      SQL.Clear;
      SQL.Text:=s;
      ExecSQL;
      Active:=true;
    end;
    with ADOZamowienieZrealizowane do begin
      s:=SQL.Text;
      SQL.Clear;
      SQL.Text:=s;
      ExecSQL;
      Active:=true;
    end;
  end;
  if pgMain.ActivePage.Caption='Uprawnienia' then begin
    with ADOUprawnienia do begin
      s:=SQL.Text;
      SQL.Clear;
      SQL.Text:=s;
      ExecSQL;
      Active:=true;
    end;
  end;
end;

procedure TMain.Zakoncz1Click(Sender: TObject);
begin
close;
end;

procedure TMain.chkPokazujZwolnionychClick(Sender: TObject);
begin
  with ADOPracownik do begin
    SQL.Clear;
    if chkPokazujZwolnionych.Checked=true then
      SQL.Text:='select * from Pracownik order by Nazwisko, Imie;'
    else
      SQL.Text:='select * from Pracownik where (Zatrudniony='+#39+'Tak'+#39+') order by Nazwisko, Imie;';
    ExecSQL;
    Active:=true;
  end;
end;

procedure TMain.btnUZmienHasloClick(Sender: TObject);
begin
  if edtUHaslo.Text='' then begin
    MessageBox(MB_OK,'Haslo nie moze byc puste!','Blad!',MB_OK);
    edtUHaslo.Text:='';
    edtUHaslo2.Text:='';
    exit;
  end;
  if edtUHaslo.Text=edtUHaslo2.Text then
    with ADODodawanie do begin
      SQL.Clear;
      SQL.Text:='update Uprawnienia set Haslo='+#39+edtUHaslo.Text+#39+' where (ID_Pracownik='+ADOUprawnienia.FieldByName('ID_Pracownik').AsString+');';
      ExecSQL;
      MessageBox(MB_OK,'Haslo ustawione pomyslnie!','Info!',MB_OK);
    end
  else MessageBox(MB_OK,'Podales rozne hasla!','Blad!',MB_OK);
  edtUHaslo.Text:='';
  edtUHaslo2.Text:='';
end;

procedure TMain.btnUZmienClick(Sender: TObject);
var s:string;
begin
  with ADODodawanie do begin
    SQL.Clear;
    SQL.Text:=
    'update Uprawnienia set '+
    'Pracownicy='+cmbUPracownicy.Text+', '+
    'Dostawcy='+cmbUDostawcy.Text+', '+
    'Klienci='+cmbUKlienci.Text+', '+
    'Sprzet='+cmbUSprzet.Text+', '+
    'Dostawy='+cmbUDostawy.Text+', '+
    'Zamowienia='+cmbUZamowienia.Text+', '+
    'Uprawnienia='+cmbUUprawnienia.Text+' where (ID_Pracownik='+ADOUprawnienia.FieldByName('ID_Pracownik').AsString+');';
    ExecSQL;
  end;
  with ADOUprawnienia do begin
    s:=SQL.Text;
    SQL.Clear;
    SQL.Text:=s;
    ExecSQL;
    Active:=true;
  end;
end;

end.
