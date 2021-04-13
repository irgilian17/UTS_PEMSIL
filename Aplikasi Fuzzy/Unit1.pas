unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    edt2: TEdit;
    lbl4: TLabel;
    edt3: TEdit;
    lbl5: TLabel;
    edt4: TEdit;
    lbl6: TLabel;
    edt5: TEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    edt12: TEdit;
    lbl19: TLabel;
    lbl20: TLabel;
    edt18: TEdit;
    edt19: TEdit;
    btn1: TButton;
    lbl21: TLabel;
    edt20: TEdit;
    edt21: TEdit;
    lbl22: TLabel;
    lbl23: TLabel;
    edt22: TEdit;
    lbl24: TLabel;
    edt23: TEdit;
    lbl25: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl26: TLabel;
    btn2: TButton;
    btn3: TButton;
    lbl27: TLabel;
    lbl28: TLabel;
    edt13: TEdit;
    edt14: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  angka1, angka2: Real;
  BatasAtas1,BatasBawah1,BatasAtas2,BatasBawah2:Real;
  angkaTurun, angkaNaik, angkaSedikit, angkaBanyak: Real;
  //Rules1,Rules2,Rules3,Rules4: Real;
  //BatasAtas3,BatasBawah3: Real;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
    angka1 := strtofloat(edt1.Text);
    angka2 := strtofloat(edt2.Text);
    BatasAtas1 := strtofloat(edt20.Text);
    BatasBawah1 := strtofloat(edt21.Text);
    BatasAtas2 := strtofloat(edt22.Text);
    BatasBawah2 := strtofloat(edt23.Text);
    begin  //Permintaan Kondisi TURUN
      if (angka1 < BatasBawah1) then
        edt3.Text:=('1');
      if (angka1 >= BatasBawah1) and (angka1 <= BatasAtas1) then
        edt3.Text :=floattostr( (BatasAtas1-angka1)/(BatasAtas1-BatasBawah1));
      if (angka1 > BatasAtas1) then
        edt3.Text:=('0');
        //Permintaan Kondisi NAIK
      if (angka1 < BatasBawah1) then
        edt4.Text:=('0');
      if (angka1 >= BatasBawah1) and (angka1 <= BatasAtas1) then
        edt4.Text :=floattostr( (angka1-BatasBawah1)/(BatasAtas1-BatasBawah1));
      if (angka1 > BatasAtas1) then
        edt4.Text:=('1');
    end;

    begin      //Persediaan Kondisi SEDIKIT
      if (angka2 < BatasBawah2) then
        edt5.Text:=('1');
      if (angka2 >= BatasBawah2) and (angka1 <= BatasAtas1) then
        edt5.Text :=floattostr( (BatasAtas2-angka2)/(BatasAtas2-BatasBawah2));
      if (angka2 > BatasAtas2) then
        edt5.Text:=('0');
              //Persediaan Kondisi BANYAK
      if (angka2 < BatasBawah2) then
        edt6.Text:=('0');
      if (angka2 >= BatasBawah2) and (angka2 <= BatasAtas2) then
        edt6.Text :=floattostr((angka2-BatasBawah2)/(BatasAtas2-BatasBawah2));
      if (angka2 > BatasAtas2) then
        edt6.Text:=('1');
    end;

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
    angkaTurun := StrToFloat(edt3.Text);
    angkaNaik := StrToFloat(edt4.Text);
    angkaSedikit := StrToFloat(edt5.Text);
    angkaBanyak := StrToFloat(edt6.Text);
    begin
      //rules1
       if (angkaTurun < angkaBanyak)then
        edt9.Text := FloatToStr(angkaTurun);
       if (angkaTurun > angkaBanyak) then
        edt9.Text := FloatToStr(angkaBanyak);
      //rules2
       if (angkaTurun < angkaSedikit)then
        edt10.Text := FloatToStr(angkaTurun);
       if (angkaTurun > angkaSedikit) then
        edt10.Text := FloatToStr(angkaSedikit);
       //rules3
       if (angkaNaik < angkaBanyak)then
        edt11.Text := FloatToStr(angkaNaik);
       if (angkaNaik > angkaBanyak) then
        edt11.Text := FloatToStr(angkaBanyak);
       //rules4
       if (angkaNaik < angkaSedikit)then
        edt12.Text := FloatToStr(angkaNaik);
       if (angkaNaik > angkaSedikit) then
        edt12.Text := FloatToStr(angkaSedikit);
    end;

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  //Rules1:=StrToFloat(edt9.Text);
  //Rules2:=StrToFloat(edt10.Text);
  //Rules3:=StrToFloat(edt11.Text);
  //Rules4:=StrToFloat(edt12.Text);
    begin
       edt7.Text:=FloatToStr(())
    end;
end;

end.
