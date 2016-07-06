unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Edit1: TEdit;
    Edit12: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var q,w,e,r,t,q1,w1,e1,r1,t1,a,b,c,aa,bb,cc,dd,m,n,y,y1,y2,d,p3,q3,r3,Af,Af1,Af2,Bt,Bt1,Bt2,Re,Im,F,x1,x2,x3,x4,z1,z2,z3,z,d1,d2: double;
begin

 if Edit1.Text='' then Edit1.Text:=FloatToStr(1);
 if Edit2.Text='' then Edit2.Text:=FloatToStr(1);
 if Edit3.Text='' then Edit3.Text:=FloatToStr(1);
 if Edit4.Text='' then Edit4.Text:=FloatToStr(1);
 if Edit5.Text='' then Edit5.Text:=FloatToStr(1);

 if CheckBox1.Checked=False then Edit1.Text:='';
 if CheckBox2.Checked=False then Edit2.Text:='';
 if CheckBox3.Checked=False then Edit3.Text:='';
 if CheckBox4.Checked=False then Edit4.Text:='';
 if CheckBox5.Checked=False then Edit5.Text:='';

 if CheckBox1.Checked=False then Edit7.Text:='';
 if CheckBox2.Checked=False then Edit8.Text:='';
 if CheckBox3.Checked=False then Edit9.Text:='';
 if CheckBox4.Checked=False then Edit10.Text:='';
 if CheckBox5.Checked=False then Edit11.Text:='';

 if CheckBox1.Checked=False then q:=0
 else q:=StrToFloat(Edit1.Text);
 if CheckBox2.Checked=False then w:=0
 else w:=StrToFloat(Edit2.Text);
 if CheckBox3.Checked=False then e:=0
 else e:=StrToFloat(Edit3.Text);
 if CheckBox4.Checked=False then r:=0
 else r:=StrToFloat(Edit4.Text);
 if CheckBox5.Checked=False then t:=0
 else t:=StrToFloat(Edit5.Text);

 if Edit7.Text='' then Edit7.Text:=FloatToStr(1);
 if Edit8.Text='' then Edit8.Text:=FloatToStr(1);
 if Edit9.Text='' then Edit9.Text:=FloatToStr(1);
 if Edit10.Text='' then Edit10.Text:=FloatToStr(1);
 if Edit11.Text='' then Edit11.Text:=FloatToStr(1);

 q1:=StrToFloat(Edit7.Text);
 w1:=StrToFloat(Edit8.Text);
 e1:=StrToFloat(Edit9.Text);
 r1:=StrToFloat(Edit10.Text);
 t1:=StrToFloat(Edit11.Text);

 if q=0 then CheckBox1.Checked:=False;
 if w=0 then CheckBox2.Checked:=False;
 if e=0 then CheckBox3.Checked:=False;
 if r=0 then CheckBox4.Checked:=False;
 if t=0 then CheckBox5.Checked:=False;

 if q=0 then Edit1.Text:='';
 if w=0 then Edit2.Text:='';
 if e=0 then Edit3.Text:='';
 if r=0 then Edit4.Text:='';
 if t=0 then Edit5.Text:='';


 if CheckBox1.Checked=False then Edit7.Text:='';
 if CheckBox2.Checked=False then Edit8.Text:='';
 if CheckBox3.Checked=False then Edit9.Text:='';
 if CheckBox4.Checked=False then Edit10.Text:='';
 if CheckBox5.Checked=False then Edit11.Text:='';

 if q1*w1*e1*r1*t1=0 then begin
 Edit6.Text:='No solutions, because you cannot divide by zero.' end
 else
 begin
  q:=(q*w1*e1*r1*t1);
  w:=(w*q1*e1*r1*t1);
  e:=(e*q1*w1*r1*t1);
  r:=(r*q1*w1*e1*t1);
  t:=(t*q1*w1*e1*r1);

if Checkbox5.Checked=False then
begin
t:=r; r:=e; e:=w; w:=q;
  if w=0 then
  begin
     if e=0 then
     begin
       if r=0 then
       begin
         if t=0 then
         Edit6.Text:='0=0'
                else
         Edit6.Text:='No solutions';
       end
              else {ПЕРВАЯ СТЕПЕНЬ}
       begin
         x1:=(-t)/r;
         Edit6.Text:='X[1] = 0;  X[2] = '+FloatToStr(x1);
       end;
     end
            else {ВТОРАЯ СТЕПЕНЬ}
     begin
       d:=r*r-4*e*t;
       Edit12.Text:='D = '+FloatToStr(d);
       if d<0 then
       begin
        Af:=-r/2*e;
        Bt:=sqrt(-d)/2*e;
        if Af=1 then begin
         Edit6.Text:='X[1] = 0;  X[2,3] = '+FloatToStr(Af)+' +/- i  (Complex)'; end
        else begin
         Edit6.Text:='X[1] = 0;  X[2,3] = '+FloatToStr(Af)+' +/- '+FloatToStr(Bt)+'*i  (Complex)'; end
       end
              else
       begin
         x1:=(-r-sqrt(d))/(2*e);
         x2:=(-r+sqrt(d))/(2*e);
         if x1=x2
         then Edit6.Text:='X[1] = 0;  X[2] = X[3] = '+FloatToStr(x1)
         else Edit6.Text:='X[1] = 0;  X[2] = '+FloatToStr(x1)+';  X[3] = '+FloatToStr(x2);
       end;
     end;
   end
   else {ТРЕТЬЯ СТЕПЕНЬ}
      begin
       a:=e/w;
       b:=r/w;
       c:=t/w;
       p3:=(3*b-a*a)/3;
       q3:=(2*a*a*a-9*a*b+27*c)/27;
       z1:=4*p3*p3*p3; z2:=27*q3*q3;
       d:=(z1+z2)/108;
       Edit12.Text:='Q = '+FloatToStr(d);
       Af:=0; Bt:=0; F:=0;

       if d>0 then
        begin
         Af:=((-q3/2+sqrt(d))/abs(-q3/2+sqrt(d)))*exp(ln(abs(-q3/2+sqrt(d)))/3);
         Bt:=((-q3/2-sqrt(d))/abs(-q3/2-sqrt(d)))*exp(ln(abs(-q3/2-sqrt(d)))/3);

         x1:=Af+Bt-a/3;
         if (4*p3*p3*p3+27*q3*q3)=0 then
         Re:=-(Af+Bt)/2-a/3;
         Im:=(Af-Bt)*sqrt(3)/2;
         Edit6.Text:='X[1] = 0;  X[2] = '+FloatToStr(x1)+'; X[3,4] = '+FloatToStr(Re)+' +/- '+FloatToStr(Im)+'*i';
        end;
       if d=0 then
        begin
         if q3=0 then
          begin
           x1:=-a/3;
           Edit6.Text:='X[1] = 0;  X[2] = X[3] = X[4] = '+FloatToStr(x1);
          end
         else
          begin
           Af:=((-q3/2)/abs(-q3/2))*Exp(Ln(abs(-q3/2))/3);
           x1:=2*Af-a/3;
           x2:=-Af-a/3;
           Edit6.Text:='X[1] = 0;  X[2] = '+FloatToStr(x1)+';  X[3] = X[4] = '+FloatToStr(x2);
          end;
        end;
       if d<0 then
        begin
         if q<0 then F:=Arctan(-2*sqrt(-d)/q3);
         if q>0 then F:=Arctan(-2*sqrt(-d)/q3)+Pi;
         if  q=0 then F:=Pi/2;

         x1:=2*sqrt(-p3/3)*cos(F/3)-a/3;
         x2:=2*sqrt(-p3/3)*cos((F+2*Pi)/3)-a/3;
         x3:=2*sqrt(-p3/3)*cos((F+4*Pi)/3)-a/3;
         if q=0 then x3:=-a/3;

         Edit6.Text:='X[1] = 0;  X[2] = '+FloatToStr(x1)+'; X[3] = '+FloatToStr(x2)+'; X[4] = '+FloatToStr(x3);
        end;
      end;

end
 else
begin


  if q=0 then
  begin
   if w=0 then
   begin
     if e=0 then
     begin
       if r=0 then
       begin
         if t=0 then
         Edit6.Text:='0=0'
                else
         Edit6.Text:='No solutions';
       end
              else {ПЕРВАЯ СТЕПЕНЬ}
       begin
         x1:=(-t)/r;
         Edit6.Text:='X = '+FloatToStr(x1);
       end;
     end
            else {ВТОРАЯ СТЕПЕНЬ}
     begin
       d:=r*r-4*e*t;
       Edit12.Text:='D = '+FloatToStr(d);
       if d<0 then
       begin
        Af:=-r/2*e;
        Bt:=sqrt(-d)/2*e;
        if Af=1 then begin
         Edit6.Text:='X = '+FloatToStr(Af)+' +/- i  (Complex)'; end
        else begin
         Edit6.Text:='X = '+FloatToStr(Af)+' +/- '+FloatToStr(Bt)+'*i  (Complex)'; end
       end
              else
       begin
         x1:=(-r-sqrt(d))/(2*e);
         x2:=(-r+sqrt(d))/(2*e);
         if x1=x2
         then Edit6.Text:='X[1] = X[2] = '+FloatToStr(x1)
         else Edit6.Text:='X[1] = '+FloatToStr(x1)+';  X[2] = '+FloatToStr(x2);
       end;
     end;
   end
   else {ТРЕТЬЯ СТЕПЕНЬ}
      begin
       a:=e/w;
       b:=r/w;
       c:=t/w;
       p3:=(3*b-a*a)/3;
       q3:=(2*a*a*a-9*a*b+27*c)/27;
       z1:=4*p3*p3*p3; z2:=27*q3*q3;
       d:=(z1+z2)/108;
       Edit12.Text:='Q = '+FloatToStr(d);
       Af:=0; Bt:=0; F:=0;

       if d>0 then
        begin
         Af:=((-q3/2+sqrt(d))/abs(-q3/2+sqrt(d)))*exp(ln(abs(-q3/2+sqrt(d)))/3);
         Bt:=((-q3/2-sqrt(d))/abs(-q3/2-sqrt(d)))*exp(ln(abs(-q3/2-sqrt(d)))/3);

         x1:=Af+Bt-a/3;
         if (4*p3*p3*p3+27*q3*q3)=0 then
         Re:=-(Af+Bt)/2-a/3;
         Im:=(Af-Bt)*sqrt(3)/2;
         Edit6.Text:='X[1] = '+FloatToStr(x1)+'; X[2,3] = '+FloatToStr(Re)+' +/- '+FloatToStr(Im)+'*i';
        end;
       if d=0 then
        begin
         if q3=0 then
          begin
           x1:=-a/3;
           Edit6.Text:='X[1] = X[2] = X[3] = '+FloatToStr(x1);
          end
         else
          begin
           Af:=((-q3/2)/abs(-q3/2))*Exp(Ln(abs(-q3/2))/3);
           x1:=2*Af-a/3;
           x2:=-Af-a/3;
           Edit6.Text:='X[1] = '+FloatToStr(x1)+';  X[2] = X[3] = '+FloatToStr(x2);
          end;
        end;
       if d<0 then
        begin
         if q<0 then F:=Arctan(-2*sqrt(-d)/q3);
         if q>0 then F:=Arctan(-2*sqrt(-d)/q3)+Pi;
         if q=0 then F:=Pi/2;

         x1:=2*sqrt(-p3/3)*cos(F/3)-a/3;
         x2:=2*sqrt(-p3/3)*cos((F+2*Pi)/3)-a/3;
         x3:=2*sqrt(-p3/3)*cos((F+4*Pi)/3)-a/3;
         if q=0 then x3:=-a/3;

         Edit6.Text:='X[1] = '+FloatToStr(x1)+'; X[2] = '+FloatToStr(x2)+'; X[3] = '+FloatToStr(x3);
        end;
      end;

  end
  else   {ЧЕТВЕРТАЯ СТЕПЕНЬ}
   begin
    aa:=w/q; bb:=e/q; cc:=r/q; dd:=t/q;
    a:=-bb;
    b:=(aa*cc-4*dd);
    c:=-aa*aa*dd+4*bb*dd-cc*cc;
    begin
       p3:=(3*b-a*a)/3;
       q3:=(2*a*a*a-9*a*b+27*c)/27;
       z1:=4*p3*p3*p3; z2:=27*q3*q3;
       d:=(z1+z2)/108;
       Af:=0; Bt:=0; F:=0;

       if d>0 then
        begin
         Af:=((-q3/2+sqrt(d))/abs(-q3/2+sqrt(d)))*exp(ln(abs(-q3/2+sqrt(d)))/3);
         Bt:=((-q3/2-sqrt(d))/abs(-q3/2-sqrt(d)))*exp(ln(abs(-q3/2-sqrt(d)))/3);

         y1:=Af+Bt-a/3;
        end else
       if d=0 then
        begin
         if q3=0 then
          begin
           y1:=-a/3;
          end
         else
          begin
           Af:=((-q3/2)/abs(-q3/2))*Exp(Ln(abs(-q3/2))/3);
           y1:=2*Af-a/3;
          end;
        end else
       if d<0 then
        begin
         if q<0 then F:=Arctan(-2*sqrt(-d)/q3);
         if q>0 then F:=Arctan(-2*sqrt(-d)/q3)+Pi;
         if q=0 then F:=Pi/2;
         y1:=2*sqrt(-p3/3)*cos(F/3)-a/3;
        end;
      end;
    begin
     if (a*y1/2-c)<0 then
     begin
      m:=sqrt(abs(aa*aa/4-bb+y1));
      n:=-sqrt(abs(y1*y1/4-dd));
     end
    else
     begin
      m:=sqrt(abs(aa*aa/4-bb+y1));
      n:=sqrt(abs(y1*y1/4-dd));
     end;
     end;
     begin
      b:=aa/2-m;
      c:=y1/2-n;
      d1:=b*b-4*c;
       if d1<0 then
       begin
        Af1:=-b/2;
        Bt1:=sqrt(-d1)/2;
       end
              else
       begin
         x1:=(-r-sqrt(d1))/2;
         x2:=(-r+sqrt(d1))/2;
       end;
    end;
    begin
      b:=aa/2+m;
      c:=y1/2+n;
      d2:=b*b-4*c;
       if d2<0 then
       begin
        Af2:=-b/2;
        Bt2:=sqrt(-d2)/2;
       end
              else
       begin
         x3:=(-r-sqrt(d2))/2;
         x4:=(-r+sqrt(d2))/2;
       end;
      end;
    if d1=d2 then begin
    Edit12.Text:='Q = '+FloatToStr(d)+'; D = '+FloatToStr(d1); end
    else begin
    Edit12.Text:='Q = '+FloatToStr(d)+'; D[1] = '+FloatToStr(d1)+'; D[2] = '+FloatToStr(d2); end;
    if d1>=0 then if d2>=0 then Edit6.Text:='X[1] = '+FloatToStr(x1)+';  X[2] = '+FloatToStr(x2)+';  X[3] = '+FloatToStr(x3)+';  X[4] = '+FloatToStr(x4);
    if d1>=0 then if d2<0 then Edit6.Text:='X[1] = '+FloatToStr(x1)+';  X[2] = '+FloatToStr(x2)+';  X[3,4] = '+FloatToStr(Af2)+' +/- '+FloatToStr(Bt2)+'*i';
    if d1<0 then if d2>=0 then Edit6.Text:='X[1] = '+FloatToStr(x3)+';  X[2] = '+FloatToStr(x4)+';  X[3,4] = '+FloatToStr(Af1)+' +/- '+FloatToStr(Bt1)+'*i';
    if d1<0 then if d2<0 then Edit6.Text:='X[1,2] = '+FloatToStr(Af1)+' +/- '+FloatToStr(Bt1)+'*i;  X[3,4] = '+FloatToStr(Af2)+' +/- '+FloatToStr(Bt2)+'*i';
   end;
  end;
 end;
end;

 procedure TForm1.CheckBox1Change(Sender: TObject);
begin
 if CheckBox1.Checked=False then Edit1.Enabled:=False;
 if CheckBox1.Checked=False then Edit7.Enabled:=False;
 if CheckBox1.Checked=False then Label9.Enabled:=False;
 if CheckBox1.Checked=False then Label1.Enabled:=False;
 if CheckBox1.Checked=False then Label5.Enabled:=False;
 if CheckBox1.Checked=False then Label17.Enabled:=False;
 if CheckBox1.Checked=False then Edit7.Text:='';
 if CheckBox1.Checked=False then Edit1.Text:='';
 if CheckBox1.Checked=True then Edit1.Enabled:=True;
 if CheckBox1.Checked=True then Edit7.Enabled:=True;
 if CheckBox1.Checked=True then Label9.Enabled:=True;
 if CheckBox1.Checked=True then Label1.Enabled:=True;
 if CheckBox1.Checked=True then Label5.Enabled:=True;
 if CheckBox1.Checked=True then Label17.Enabled:=True;
 if CheckBox1.Checked=False then
 if CheckBox2.Checked=False then
 if CheckBox3.Checked=False then Edit12.Visible:=False;
 if CheckBox1.Checked=True then Edit12.Visible:=True;
 if CheckBox2.Checked=True then Edit12.Visible:=True;
 if CheckBox3.Checked=True then Edit12.Visible:=True;

 if CheckBox1.Checked=False then
 if CheckBox2.Checked=False then
 if CheckBox3.Checked=False then
 if CheckBox4.Checked=False then
 if CheckBox5.Checked=False then begin
  Edit6.Text:='0 = 0 ; Enter your equation and press "GO!" C:'; end;
 if CheckBox1.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox2.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox3.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox4.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox5.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
end;

procedure TForm1.CheckBox2Change(Sender: TObject);
begin
 if CheckBox2.Checked=False then Edit2.Enabled:=False;
 if CheckBox2.Checked=False then Edit8.Enabled:=False;
 if CheckBox2.Checked=False then Label10.Enabled:=False;
 if CheckBox2.Checked=False then Label2.Enabled:=False;
 if CheckBox2.Checked=False then Label6.Enabled:=False;
 if CheckBox2.Checked=False then Label16.Enabled:=False;
 if CheckBox2.Checked=False then Edit8.Text:='';
 if CheckBox2.Checked=False then Edit2.Text:='';
 if CheckBox2.Checked=True then Edit2.Enabled:=True;
 if CheckBox2.Checked=True then Edit8.Enabled:=True;
 if CheckBox2.Checked=True then Label10.Enabled:=True;
 if CheckBox2.Checked=True then Label2.Enabled:=True;
 if CheckBox2.Checked=True then Label6.Enabled:=True;
 if CheckBox2.Checked=True then Label16.Enabled:=True;
 if CheckBox1.Checked=False then
 if CheckBox2.Checked=False then
 if CheckBox3.Checked=False then Edit12.Visible:=False;
 if CheckBox1.Checked=True then Edit12.Visible:=True;
 if CheckBox2.Checked=True then Edit12.Visible:=True;
 if CheckBox3.Checked=True then Edit12.Visible:=True;

  if CheckBox1.Checked=False then
  if CheckBox2.Checked=False then
  if CheckBox3.Checked=False then
  if CheckBox4.Checked=False then
  if CheckBox5.Checked=False then begin
   Edit6.Text:='0 = 0 ; Enter your equation and press "GO!" C:'; end;
  if CheckBox1.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
  if CheckBox2.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
  if CheckBox3.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
  if CheckBox4.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
  if CheckBox5.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
end;

procedure TForm1.CheckBox3Change(Sender: TObject);
begin
 if CheckBox3.Checked=False then Edit3.Enabled:=False;
 if CheckBox3.Checked=False then Edit9.Enabled:=False;
 if CheckBox3.Checked=False then Label11.Enabled:=False;
 if CheckBox3.Checked=False then Label3.Enabled:=False;
 if CheckBox3.Checked=False then Label7.Enabled:=False;
 if CheckBox3.Checked=False then Label15.Enabled:=False;
 if CheckBox3.Checked=False then Edit9.Text:='';
 if CheckBox3.Checked=False then Edit3.Text:='';
 if CheckBox3.Checked=True then Edit3.Enabled:=True;
 if CheckBox3.Checked=True then Edit9.Enabled:=True;
 if CheckBox3.Checked=True then Label11.Enabled:=True;
 if CheckBox3.Checked=True then Label3.Enabled:=True;
 if CheckBox3.Checked=True then Label7.Enabled:=True;
 if CheckBox3.Checked=True then Label15.Enabled:=True;
 if CheckBox1.Checked=False then
 if CheckBox2.Checked=False then
 if CheckBox3.Checked=False then Edit12.Visible:=False;
 if CheckBox1.Checked=True then Edit12.Visible:=True;
 if CheckBox2.Checked=True then Edit12.Visible:=True;
 if CheckBox3.Checked=True then Edit12.Visible:=True;

  if CheckBox1.Checked=False then
  if CheckBox2.Checked=False then
  if CheckBox3.Checked=False then
  if CheckBox4.Checked=False then
  if CheckBox5.Checked=False then begin
   Edit6.Text:='0 = 0 ; Enter your equation and press "GO!" C:'; end;
  if CheckBox1.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
  if CheckBox2.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
  if CheckBox3.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
  if CheckBox4.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
  if CheckBox5.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
end;

procedure TForm1.CheckBox4Change(Sender: TObject);
begin
 if CheckBox4.Checked=False then Edit4.Enabled:=False;
 if CheckBox4.Checked=False then Edit10.Enabled:=False;
 if CheckBox4.Checked=False then Label12.Enabled:=False;
 if CheckBox4.Checked=False then Label4.Enabled:=False;
 if CheckBox4.Checked=False then Label14.Enabled:=False;
 if CheckBox4.Checked=False then Edit10.Text:='';
 if CheckBox4.Checked=False then Edit4.Text:='';
 if CheckBox4.Checked=True then Edit4.Enabled:=True;
 if CheckBox4.Checked=True then Edit10.Enabled:=True;
 if CheckBox4.Checked=True then Label12.Enabled:=True;
 if CheckBox4.Checked=True then Label4.Enabled:=True;
 if CheckBox5.Checked=True then if CheckBox4.Checked=True then Label14.Enabled:=True;
 if CheckBox1.Checked=False then
 if CheckBox2.Checked=False then
 if CheckBox3.Checked=False then Edit12.Visible:=False;
 if CheckBox1.Checked=True then Edit12.Visible:=True;
 if CheckBox2.Checked=True then Edit12.Visible:=True;
 if CheckBox3.Checked=True then Edit12.Visible:=True;

 if CheckBox1.Checked=False then
 if CheckBox2.Checked=False then
 if CheckBox3.Checked=False then
 if CheckBox4.Checked=False then
 if CheckBox5.Checked=False then begin
  Edit6.Text:='0 = 0 ; Enter your equation and press "GO!" C:'; end;
 if CheckBox1.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox2.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox3.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox4.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox5.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
end;

procedure TForm1.CheckBox5Change(Sender: TObject);
begin
 if CheckBox5.Checked=False then Edit5.Enabled:=False;
 if CheckBox5.Checked=False then Edit11.Enabled:=False;
 if CheckBox5.Checked=False then Label13.Enabled:=False;
 if CheckBox5.Checked=False then Label14.Enabled:=False;
 if CheckBox5.Checked=False then Edit11.Text:='';
 if CheckBox5.Checked=False then Edit5.Text:='';
 if CheckBox5.Checked=True then Edit5.Enabled:=True;
 if CheckBox5.Checked=True then Edit11.Enabled:=True;
 if CheckBox5.Checked=True then Label13.Enabled:=True;
 if CheckBox4.Checked=True then if CheckBox5.Checked=True then Label14.Enabled:=True;
 if CheckBox1.Checked=False then
 if CheckBox2.Checked=False then
 if CheckBox3.Checked=False then Edit12.Visible:=False;
 if CheckBox1.Checked=True then Edit12.Visible:=True;
 if CheckBox2.Checked=True then Edit12.Visible:=True;
 if CheckBox3.Checked=True then Edit12.Visible:=True;

 if CheckBox1.Checked=False then
 if CheckBox2.Checked=False then
 if CheckBox3.Checked=False then
 if CheckBox4.Checked=False then
 if CheckBox5.Checked=False then begin
  Edit6.Text:='0 = 0 ; Enter your equation and press "GO!" C:'; end;
 if CheckBox1.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox2.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox3.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox4.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
 if CheckBox5.Checked=True then begin Edit6.Text:='Please, enter your equation and press "GO!" C:'; end;
end;

procedure TForm1.CheckBox6Change(Sender: TObject);
begin
 if CheckBox6.Checked=False then Label1.Top:=26;
 if CheckBox6.Checked=False then Label2.Top:=26;
 if CheckBox6.Checked=False then Label3.Top:=26;
 if CheckBox6.Checked=False then Label4.Top:=26;
 if CheckBox6.Checked=False then Label5.Top:=24;
 if CheckBox6.Checked=False then Label6.Top:=24;
 if CheckBox6.Checked=False then Label7.Top:=24;
 if CheckBox6.Checked=False then Label17.Top:=17;
 if CheckBox6.Checked=False then Label16.Top:=17;
 if CheckBox6.Checked=False then Label15.Top:=17;
 if CheckBox6.Checked=False then Label14.Top:=17;
 if CheckBox6.Checked=False then Label8.Top:=26;
 if CheckBox6.Checked=False then Edit6.Top:=80;
 if CheckBox6.Checked=False then Button1.Top:=96;
 if CheckBox6.Checked=False then Form1.Height:=159;

 if CheckBox6.Checked=False then Edit7.Visible:=False;
 if CheckBox6.Checked=False then Edit8.Visible:=False;
 if CheckBox6.Checked=False then Edit9.Visible:=False;
 if CheckBox6.Checked=False then Edit10.Visible:=False;
 if CheckBox6.Checked=False then Edit11.Visible:=False;
 if CheckBox6.Checked=False then Label9.Visible:=False;
 if CheckBox6.Checked=False then Label10.Visible:=False;
 if CheckBox6.Checked=False then Label11.Visible:=False;
 if CheckBox6.Checked=False then Label12.Visible:=False;
 if CheckBox6.Checked=False then Label13.Visible:=False;


 if CheckBox6.Checked=True then Label1.Top:=48;
 if CheckBox6.Checked=True then Label2.Top:=48;
 if CheckBox6.Checked=True then Label3.Top:=48;
 if CheckBox6.Checked=True then Label4.Top:=48;
 if CheckBox6.Checked=True then Label5.Top:=48;
 if CheckBox6.Checked=True then Label6.Top:=48;
 if CheckBox6.Checked=True then Label7.Top:=48;
 if CheckBox6.Checked=True then Label17.Top:=39;
 if CheckBox6.Checked=True then Label16.Top:=39;
 if CheckBox6.Checked=True then Label15.Top:=39;
 if CheckBox6.Checked=True then Label14.Top:=39;
 if CheckBox6.Checked=True then Label8.Top:=45;
 if CheckBox6.Checked=True then Edit6.Top:=168;
 if CheckBox6.Checked=True then Button1.Top:=159;
 if CheckBox6.Checked=True then Form1.Height:=220;

 if CheckBox6.Checked=True then Edit7.Visible:=True;
 if CheckBox6.Checked=True then Edit8.Visible:=True;
 if CheckBox6.Checked=True then Edit9.Visible:=True;
 if CheckBox6.Checked=True then Edit10.Visible:=True;
 if CheckBox6.Checked=True then Edit11.Visible:=True;
 if CheckBox6.Checked=True then Label9.Visible:=True;
 if CheckBox6.Checked=True then Label10.Visible:=True;
 if CheckBox6.Checked=True then Label11.Visible:=True;
 if CheckBox6.Checked=True then Label12.Visible:=True;
 if CheckBox6.Checked=True then Label13.Visible:=True;

end;

end.
end;

end.

