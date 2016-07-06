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
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Edit1: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
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
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
    procedure Edit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit11KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public  declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure secondDegree(b, c: extended; var x11, x12, x21, x22: extended);
var d: extended;
begin
 d := b*b-4*c;
 if d > 0 then
  begin
   x11 := (-b + sqrt(d))*0.5;
   x21 := (-b - sqrt(d))*0.5;
   x12 := 0; x22 := 0;
  end
 else if d = 0 then
  begin
   x11 := -b*0.5;
   x21 := -b*0.5;
   x12 := 0; x22 := 0;
  end
 else if d < 0 then
  begin
   x11 := -b*0.5;
   x21 := -b*0.5;
   x12 := sqrt(-d)*0.5;
   x22 := -sqrt(-d)*0.5
  end;
end;

procedure thirdDegree(b, c, d: extended; var x11, x21, x22, x31, x32: extended);
var p, q, d1, d2, F, u, v, alpha, beta: extended;
begin
 p := c - b*b/3;
 q := (2*b*b*b - 9*b*c)/27 + d;
 d1 := p*p*p/27 + q*q/4;

 if d1>0
    then
      begin
        if -q/2+Sqrt(d1)>0 then u:=exp(ln(abs(-q/2+Sqrt(d1)))/3);
        if -q/2+Sqrt(d1)<0 then u:=-exp(ln(abs(-q/2+Sqrt(d1)))/3);
        if -q/2+Sqrt(d1)=0 then u:=0;
        if -q/2-Sqrt(d1)>0 then v:=exp(ln(abs(-q/2-Sqrt(d1)))/3);
        if -q/2-Sqrt(d1)<0 then v:=-exp(ln(abs(-q/2-Sqrt(d1)))/3);
        if -q/2-Sqrt(d1)=0 then v:=0;
        x11:=u+v-b/3;
        x21:=-(u+v)/2-b/3;
        x22:=(u-v)*Sqrt(3)/2;
        x31:=-(u+v)/2-b/3;
        x32:=(u-v)*Sqrt(3)/2;
      end else
  if d1=0
    then
      begin
        if q<0 then u:=exp(ln(abs(-q/2))/3);
        if q>0 then u:=-exp(ln(abs(-q/2))/3);
        if q=0 then u:=0;
        x11:=2*u-b/3;
        x21:=-u-b/3;
        x31:=-u-b/3;
        x22:=0;
        x32:=0;
      end else


 {if d1 >= 0 then
  begin
   if -q*0.5 + sqrt(d1) = 0 then
    begin
     if q = 0 then
      begin
       alpha := 0; beta := 0;
      end
     else
      begin
       alpha := 0;
       beta := -exp(ln(q*0.5 + sqrt(d1))/3);
      end;
    end
   else
    begin
     if -q*0.5 - sqrt(d1) = 0 then
      begin
       alpha := exp(ln(-q*0.5 + sqrt(d1))/3);
       beta := 0;
      end
     else
      begin
       alpha := ((-q*0.5 + sqrt(d1))/abs(-q*0.5 + sqrt(d1)))*exp(ln(abs(-q*0.5 + sqrt(d1)))/3);
       beta := ((-q*0.5 - sqrt(d1))/abs(-q*0.5 - sqrt(d1)))*exp(ln(abs(-q*0.5 - sqrt(d1)))/3);
      end;
    end;
   x11 := alpha + beta - b/3;
   x21 := -0.5*(alpha + beta) - b/3;
   x22 := sqrt(3)*0.5*(alpha - beta);
   x31 := -0.5*(alpha + beta) - b/3;;
   x32 := -sqrt(3)*0.5*(alpha - beta);
  end
 else }if d1 < 0 then
  begin
   if q < 0 then F:=Arctan(-2*sqrt(-d)/q)
   else if q > 0 then F := Arctan(-2*sqrt(-d)/q)+Pi
   else if q = 0 then F := Pi/2;
   x11 := 2*sqrt(-p/3)*cos((F+2*Pi)/3)-b/3;
   u := x11 + b;
   v := u*x11 + c;
   secondDegree(u, v, x21, x22, x31, x32);
  end;
end;



procedure TForm1.Button1Click(Sender: TObject);
var q,w,e,r,t,q1,w1,e1,r1,t1,a,b,c,aa,bb,cc,dd,m,n,y1,d,p3,q3,Af,Af1,Af2,Bt,Bt1,Bt2,Re,Im,F,x1,x2,x3,x4,z1,z2,d1,d2,b1,c1,x11,x12,x21,x22,x31,x32,x41,x42: extended;
begin

 if Edit1.Text='' then Edit1.Text:=FloatToStr(1);
 if Edit2.Text='' then Edit2.Text:=FloatToStr(1);
 if Edit3.Text='' then Edit3.Text:=FloatToStr(1);
 if Edit4.Text='' then Edit4.Text:=FloatToStr(1);
 if Edit5.Text='' then Edit5.Text:=FloatToStr(0);

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
  //--------------------------------------------------------------------------------------------------------
if Checkbox5.Checked=False then
 begin if checkbox4.checked=False then
  begin if checkbox3.checked=false then
   begin if checkbox2.checked=false then
    edit6.Text:='X[1] = X[2] = X[3] = X[4] = 0' else      //checkbox2.checked
   begin
    if q=0 then Edit6.Text:='X[1] = X[2] = X[3] = 0' else
    begin
    x1:=-w/q;
    Edit6.Text:='X[1] = '+FloatToStr(x1)+';  X[2] = X[3] = X[4] = 0';
    end
   end;
   end
  else //  checkbox3.checked  5 4 3 квадратное
  begin
   if q=0 then
    begin
     if w=0 then Edit6.Text:='X = 0'
    else // w != 0, q = 0
    begin
    x1:=-e/w;
    Edit6.Text:='X[1] = '+FloatToStr(x1)+';  X[2] = X[3] = 0';
    end;
    end
   else  //q != 0
   begin
    secondDegree(w/q,e/q,x11,x12,x21,x22);
       if x12 <> 0 then
       begin
        if x12=1 then begin
         Edit6.Text:='X[1] = X[2] = 0;  X[3,4] = '+FloatToStr(x11)+' +/- i  (Complex)';
        end
        else begin
         Edit6.Text:='X[1] = X[2] = 0;  X[3,4] = '+FloatToStr(x11)+' +/- '+FloatToStr(x12)+'*i  (Complex)';
        end
       end else //x12 = 0
       begin
         if x11=x21
         then Edit6.Text:='X[1] = X[2] = 0;  X[3] = X[4] = '+FloatToStr(x11)
         else Edit6.Text:='X[1] = X[2] = 0;  X[3] = '+FloatToStr(x11)+';  X[4] = '+FloatToStr(x21);
        end;
     end;
   Edit12.Visible:=True;
  end;
 end
else    //checkbox4.checked
begin
  if q=0 then
  begin
   if w=0 then
   begin
    if e=0 then Edit6.Text:='X = 0'
    else //e != 0
    begin
     x1:=-r/e;
     Edit6.Text:='X[1] = 0;  X[2] = '+FloatToStr(x1);
    end;
   end
   else  //w != 0
   begin
    secondDegree(e/w,r/w,x11,x12,x21,x22);
       if x12 <> 0 then
       begin
        if x12=1 then begin
         Edit6.Text:='X[1] = X[2] = 0;  X[3,4] = '+FloatToStr(x11)+' +/- i  (Complex)';
        end
        else begin
         Edit6.Text:='X[1] = X[2] = 0;  X[3,4] = '+FloatToStr(x11)+' +/- '+FloatToStr(x12)+'*i  (Complex)';
        end
       end else //x12 = 0
       begin
         if x11=x21
         then Edit6.Text:='X[1] = 0;  X[2] = X[3] = '+FloatToStr(x11)
         else Edit6.Text:='X[1] = 0;  X[2] = '+FloatToStr(x11)+';  X[3] = '+FloatToStr(x21);
        end;
        Edit12.Visible:=True;
   end;
  end
  else  // q != 0
begin
thirdDegree(w/q,e/q,r/q,x11,x21,x22,x31,x32);
      Edit12.Visible:=True;
      end;
    end;
  end
else    //checkBox5.checked
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
        secondDegree(r/e,t/e,x11,x12,x21,x22);
        if x12=1 then
        begin
         Edit6.Text:='X = '+FloatToStr(x11)+' +/- i  (Complex)';
        end
        else if x12 <> 0  then
        begin
         Edit6.Text:='X = '+FloatToStr(x11)+' +/- '+FloatToStr(x12)+'*i  (Complex)';
        end
        else if x12 = 0  then
        begin
          if x11 = x21 then Edit6.Text:='X[1] = X[2] = '+FloatToStr(x11)
          else Edit6.Text:='X[1] = '+FloatToStr(x11)+';  X[2] = '+FloatToStr(x21);
        end;
     end;
     Edit12.Visible:=True;
   end
   else {ТРЕТЬЯ СТЕПЕНЬ}
     begin
       thirdDegree(e/w,r/w,t/w,x11,x21,x22,x31,x32);
       if x22 = 0 then
       begin
         Edit6.Text:='X[1] = '+FloatToStr(x11)+';  X[2] = '+FloatToStr(x21)+';  X[3] = '+FloatToStr(x31);
       end else
       begin
         Edit6.Text:='X[1] = '+FloatToStr(x11)+';  X[2,3] = '+FloatToStr(x21)+' +/- '+FloatToStr(x22)+'*i  (Complex)';
       end;
     end;
     Edit12.Visible:=True;
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
         if (abs(-q3/2+sqrt(d))<>0) and (-q3/2-sqrt(d)<>0) then
         begin
          Af:=((-q3/2+sqrt(d))/abs(-q3/2+sqrt(d)))*exp(ln(abs(-q3/2+sqrt(d)))/3);
          Bt:=((-q3/2-sqrt(d))/abs(-q3/2-sqrt(d)))*exp(ln(abs(-q3/2-sqrt(d)))/3);
         end
         else if abs(-q3/2+sqrt(d))<>0 then
         begin
          Af:=((-q3/2+sqrt(d))/abs(-q3/2+sqrt(d)))*exp(ln(abs(-q3/2+sqrt(d)))/3);
         end
         else if -q3/2-sqrt(d)<>0  then
         begin
          Bt:=((-q3/2-sqrt(d))/abs(-q3/2-sqrt(d)))*exp(ln(abs(-q3/2-sqrt(d)))/3);
         end;


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
         if q3<0 then F:=Arctan(-2*sqrt(-d)/q3);
         if q3>0 then F:=Arctan(-2*sqrt(-d)/q3)+Pi;
         if q3=0 then F:=Pi/2;
         y1:=2*sqrt(-p3/3)*cos((F+2*Pi)/3)-a/3;
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
        Af1:=-b/(2*q1*w1*e1*r1*t1);
        Bt1:=sqrt(-d1)/(2*q1*w1*e1*r1*t1);
       end
              else
       begin
         x1:=(-r-sqrt(d1))/(2*q1*w1*e1*r1*t1) ;
         x2:=(-r+sqrt(d1))/(2*q1*w1*e1*r1*t1);
       end;
    end;
    begin
      b:=aa/2+m;
      c:=y1/2+n;
      d2:=b*b-4*c;
       if d2<0 then
       begin
        Af2:=-b/(2*q1*w1*e1*r1*t1);
        Bt2:=sqrt(-d2)/(2*q1*w1*e1*r1*t1);
       end
              else
       begin
         x3:=(-r-sqrt(d2))/(2*q1*w1*e1*r1*t1);
         x4:=(-r+sqrt(d2))/(2*q1*w1*e1*r1*t1);
       end;
      end;
    if d1=d2 then begin
    Edit12.Text:='Q = '+FloatToStr(d)+'; D = '+FloatToStr(d1); end
    else begin
    Edit12.Text:='Q = '+FloatToStr(d)+'; D[1] = '+FloatToStr(d1)+'; D[2] = '+FloatToStr(d2); end;
    if d1>=0 then if d2>=0 then Edit6.Text:='X[1] = '+FloatToStr(x1)+';  X[2] = '+FloatToStr(x2)+';  X[3] = '+FloatToStr(x3)+';  X[4] = '+FloatToStr(x4);
    if d1>=0 then if d2<0 then Begin if Bt2=1 then Edit6.Text:='X[1] = '+FloatToStr(x1)+';  X[2] = '+FloatToStr(x2)+';  X[3,4] = '+FloatToStr(Af2)+' +/- i'
    else Edit6.Text:='X[1] = '+FloatToStr(x1)+';  X[2] = '+FloatToStr(x2)+';  X[3,4] = '+FloatToStr(Af2)+' +/- '+FloatToStr(Bt2)+'*i'; end;
    if d1<0 then if d2>=0 then Begin if Bt1=1 then Edit6.Text:='X[1] = '+FloatToStr(x3)+';  X[2] = '+FloatToStr(x4)+';  X[3,4] = '+FloatToStr(Af1)+' +/- i'
    else Edit6.Text:='X[1] = '+FloatToStr(x3)+';  X[2] = '+FloatToStr(x4)+';  X[3,4] = '+FloatToStr(Af1)+' +/- '+FloatToStr(Bt1)+'*i'; end;
    if d1<0 then if d2<0 then Begin
    if (Bt1=1) and (Bt2=1) then Edit6.Text:='X[1,2] = '+FloatToStr(Af1)+' +/- i;  X[3,4] = '+FloatToStr(Af2)+' +/- i'
    else if bt1=1 then Edit6.Text:='X[1,2] = '+FloatToStr(Af1)+' +/- i;  X[3,4] = '+FloatToStr(Af2)+' +/- '+FloatToStr(Bt2)+'*i'
    else if Bt2=1 then Edit6.Text:='X[1,2] = '+FloatToStr(Af1)+' +/- '+FloatToStr(Bt1)+'*i;  X[3,4] = '+FloatToStr(Af2)+' +/- i'
    else Edit6.Text:='X[1,2] = '+FloatToStr(Af1)+' +/- '+FloatToStr(Bt1)+'*i;  X[3,4] = '+FloatToStr(Af2)+' +/- '+FloatToStr(Bt2)+'*i';
   end;
   Edit12.Visible:=True;
  end;
 end;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   edit1.visible:=false;
   edit2.visible:=false;
   edit3.visible:=false;
   edit4.visible:=false;
   edit5.visible:=false;
   edit6.visible:=false;
   edit7.visible:=false;
   edit8.visible:=false;
   edit9.visible:=false;
   edit10.visible:=false;
   edit11.visible:=false;
   edit12.visible:=false;
   Label1.Visible:=false;
   Label2.Visible:=false;
   Label3.Visible:=false;
   Label4.Visible:=false;
   Label5.Visible:=false;
   Label6.Visible:=false;
   Label7.Visible:=false;
   Label8.Visible:=false;
   Label9.Visible:=false;
   Label10.Visible:=false;
   Label11.Visible:=false;
   Label12.Visible:=false;
   Label13.Visible:=false;
   Label14.Visible:=false;
   Label15.Visible:=false;
   Label16.Visible:=false;
   Label17.Visible:=false;
   Label18.Visible:=false;
   CheckBox1.visible:=false;
   CheckBox2.visible:=false;
   CheckBox3.visible:=false;
   CheckBox4.visible:=false;
   CheckBox5.visible:=false;
   CheckBox6.visible:=false;
   Button1.Visible:=false;
   Button2.Visible:=false;
   form1.height:=220;
   Button3.Visible:=True;
   StaticText1.Visible:=true;
   StaticText2.Visible:=true;
   edit13.visible:=true;
   edit14.visible:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    edit13.visible:=False;
    edit14.visible:=false;
    Button3.Visible:=False;
    StaticText1.Visible:=False;
    StaticText2.Visible:=False;
    edit1.visible:=true;
    edit2.visible:=true;
    edit3.visible:=true;
    edit4.visible:=true;
    edit5.visible:=true;
    edit6.visible:=true;
    Label1.Visible:=true;
    Label2.Visible:=true;
    Label3.Visible:=true;
    Label4.Visible:=true;
    Label5.Visible:=true;
    Label6.Visible:=true;
    Label7.Visible:=true;
    Label8.Visible:=true;
    Label14.Visible:=true;
    Label15.Visible:=true;
    Label16.Visible:=true;
    Label17.Visible:=true;
    Label18.Visible:=true;
    if checkbox6.checked=true then
    begin
    Label9.Visible:=true;
    Label10.Visible:=true;
    Label11.Visible:=true;
    Label12.Visible:=true;
    Label13.Visible:=true;
    edit7.visible:=true;
    edit8.visible:=true;
    edit9.visible:=true;
    edit10.visible:=true;
    edit11.visible:=true;
    end
    else form1.Height:=161;
    CheckBox1.visible:=true;
    CheckBox2.visible:=true;
    CheckBox3.visible:=true;
    CheckBox4.visible:=true;
    CheckBox5.visible:=true;
    CheckBox6.visible:=true;
    Button1.Visible:=true;
    Button2.Visible:=true;
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
 if CheckBox1.Checked=False then Edit12.Visible:=False;
 if CheckBox1.Checked=True then Edit1.Enabled:=True;
 if CheckBox1.Checked=True then Edit7.Enabled:=True;
 if CheckBox1.Checked=True then Label9.Enabled:=True;
 if CheckBox1.Checked=True then Label1.Enabled:=True;
 if CheckBox1.Checked=True then Label5.Enabled:=True;
 if CheckBox1.Checked=True then Label17.Enabled:=True;
 if CheckBox1.Checked=True then Edit12.Visible:=False;

 if CheckBox1.Checked=True then Edit1.Setfocus;

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
 if CheckBox2.Checked=False then Edit12.Visible:=False;
 if CheckBox2.Checked=True then Edit2.Enabled:=True;
 if CheckBox2.Checked=True then Edit8.Enabled:=True;
 if CheckBox2.Checked=True then Label10.Enabled:=True;
 if CheckBox2.Checked=True then Label2.Enabled:=True;
 if CheckBox2.Checked=True then Label6.Enabled:=True;
 if CheckBox2.Checked=True then Label16.Enabled:=True;
 if CheckBox2.Checked=True then Edit12.Visible:=False;

 if CheckBox2.Checked=True then Edit2.Setfocus;

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
 if CheckBox3.Checked=False then Edit12.Visible:=False;
 if CheckBox3.Checked=True then Edit3.Enabled:=True;
 if CheckBox3.Checked=True then Edit9.Enabled:=True;
 if CheckBox3.Checked=True then Label11.Enabled:=True;
 if CheckBox3.Checked=True then Label3.Enabled:=True;
 if CheckBox3.Checked=True then Label7.Enabled:=True;
 if CheckBox3.Checked=True then Label15.Enabled:=True;
 if CheckBox3.Checked=True then Edit12.Visible:=False;

 if CheckBox3.Checked=True then Edit3.Setfocus;

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
 if CheckBox4.Checked=False then Edit12.Visible:=False;
 if CheckBox4.Checked=True then Edit4.Enabled:=True;
 if CheckBox4.Checked=True then Edit10.Enabled:=True;
 if CheckBox4.Checked=True then Label12.Enabled:=True;
 if CheckBox4.Checked=True then Label4.Enabled:=True;
 if CheckBox4.Checked=True then Edit12.Visible:=False;
 if CheckBox5.Checked=True then if CheckBox4.Checked=True then Label14.Enabled:=True;

 if CheckBox4.Checked=True then Edit4.Setfocus;

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
 if CheckBox5.Checked=False then Edit12.Visible:=False;
 if CheckBox5.Checked=True then Edit5.Enabled:=True;
 if CheckBox5.Checked=True then Edit11.Enabled:=True;
 if CheckBox5.Checked=True then Label13.Enabled:=True;
 if CheckBox5.Checked=True then Edit12.Visible:=False;
 if CheckBox4.Checked=True then if CheckBox5.Checked=True then Label14.Enabled:=True;

 if CheckBox5.Checked=True then Edit5.Setfocus;

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
 if CheckBox6.Checked=False then Form1.Height:=162;

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
 if CheckBox6.Checked=False then Edit12.Visible:=False;


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
 if CheckBox6.Checked=True then Edit12.Visible:=False;

end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
 If CheckBox6.Checked=False then
 begin
 if Edit2.Enabled=True then begin
 if key = ord(13) then edit2.Setfocus end
 else if Edit3.Enabled=True then begin
 if key = ord(13) then edit3.Setfocus end
 else if Edit4.Enabled=True then begin
 if key = ord(13) then edit4.Setfocus end
 else if Edit5.Enabled=True then begin
 if key = ord(13) then edit5.Setfocus end
 else
 if key = ord(13) then
   begin
    Button1.Click;
    if edit1.enabled=true then Edit1.Setfocus
    else if edit2.enabled=true then Edit2.Setfocus
    else if edit3.enabled=true then Edit3.Setfocus
    else if edit4.enabled=true then Edit4.Setfocus
    else if edit5.enabled=true then Edit5.Setfocus
   end;
 end
 else begin
 if key = ord(13) then edit7.Setfocus end
end;

procedure TForm1.Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
 If CheckBox6.Checked=False then
 begin
 if Edit3.Enabled=True then begin
 if key = ord(13) then edit3.Setfocus end
 else if Edit4.Enabled=True then begin
 if key = ord(13) then edit4.Setfocus end
 else if Edit5.Enabled=True then begin
 if key = ord(13) then edit5.Setfocus end
 else if key = ord(13) then
 begin
    Button1.Click;
    if edit1.enabled=true then Edit1.Setfocus
    else if edit2.enabled=true then Edit2.Setfocus
    else if edit3.enabled=true then Edit3.Setfocus
    else if edit4.enabled=true then Edit4.Setfocus
    else if edit5.enabled=true then Edit5.Setfocus
  end;
 end else begin
 if key = ord(13) then edit8.Setfocus end
end;

procedure TForm1.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
 If CheckBox6.Checked=False then
 begin
 if Edit4.Enabled=True then begin
 if key = ord(13) then edit4.Setfocus end
 else if Edit5.Enabled=True then begin
 if key = ord(13) then edit5.Setfocus end
 else if key = ord(13) then
 begin
    Button1.Click;
    if edit1.enabled=true then Edit1.Setfocus
    else if edit2.enabled=true then Edit2.Setfocus
    else if edit3.enabled=true then Edit3.Setfocus
    else if edit4.enabled=true then Edit4.Setfocus
    else if edit5.enabled=true then Edit5.Setfocus
  end;
 end
 else begin
 if key = ord(13) then edit9.Setfocus end
end;

procedure TForm1.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
 If CheckBox6.Checked=False then
 begin
 if Edit5.Enabled=True then begin
 if key = ord(13) then edit5.Setfocus end
 else if key = ord(13) then
 begin
    Button1.Click;
    if edit1.enabled=true then Edit1.Setfocus
    else if edit2.enabled=true then Edit2.Setfocus
    else if edit3.enabled=true then Edit3.Setfocus
    else if edit4.enabled=true then Edit4.Setfocus
    else if edit5.enabled=true then Edit5.Setfocus
  end;
 end
 else begin
 if key = ord(13) then edit10.Setfocus end
end;

procedure TForm1.Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
 if key = ord(13) then
 begin
 If CheckBox6.Checked=False then
 begin
    Button1.Click;
    if edit1.enabled=true then Edit1.Setfocus
    else if edit2.enabled=true then Edit2.Setfocus
    else if edit3.enabled=true then Edit3.Setfocus
    else if edit4.enabled=true then Edit4.Setfocus
    else if edit5.enabled=true then Edit5.Setfocus
  end
 else begin
 if key = ord(13) then edit11.Setfocus end
 end
end;

procedure TForm1.Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
 if Edit2.Enabled=True then begin
 if key = ord(13) then edit2.Setfocus end
 else if Edit3.Enabled=True then begin
 if key = ord(13) then edit3.Setfocus end
 else if Edit4.Enabled=True then begin
 if key = ord(13) then edit4.Setfocus end
 else if Edit5.Enabled=True then begin
 if key = ord(13) then edit5.Setfocus end
 else if key = ord(13) then
    begin
    Button1.Click;
    if edit1.enabled=true then Edit1.Setfocus
    else if edit2.enabled=true then Edit2.Setfocus
    else if edit3.enabled=true then Edit3.Setfocus
    else if edit4.enabled=true then Edit4.Setfocus
    else if edit5.enabled=true then Edit5.Setfocus
  end;
end;

procedure TForm1.Edit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
 if Edit3.Enabled=True then begin
 if key = ord(13) then edit3.Setfocus end
 else if Edit4.Enabled=True then begin
 if key = ord(13) then edit4.Setfocus end
 else if Edit5.Enabled=True then begin
 if key = ord(13) then edit5.Setfocus end
 else if key = ord(13) then
    begin
    Button1.Click;
    if edit1.enabled=true then Edit1.Setfocus
    else if edit2.enabled=true then Edit2.Setfocus
    else if edit3.enabled=true then Edit3.Setfocus
    else if edit4.enabled=true then Edit4.Setfocus
    else if edit5.enabled=true then Edit5.Setfocus
  end;
end;

procedure TForm1.Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
 if Edit4.Enabled=True then begin
 if key = ord(13) then edit4.Setfocus end
 else if Edit5.Enabled=True then begin
 if key = ord(13) then edit5.Setfocus end
 else if key = ord(13) then
    begin
    Button1.Click;
    if edit1.enabled=true then Edit1.Setfocus
    else if edit2.enabled=true then Edit2.Setfocus
    else if edit3.enabled=true then Edit3.Setfocus
    else if edit4.enabled=true then Edit4.Setfocus
    else if edit5.enabled=true then Edit5.Setfocus
  end;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
 if Image1.Top=-440 then Image1.Top:=0 else
 {if Image1.Top=-440 then Image1.Top:=-660 else}
 if Image1.Top=-220 then Image1.Top:=-440 else
 if Image1.Top=0 then Image1.Top:=-220;
 Edit12.Visible:=False;
end;

procedure TForm1.Edit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Edit5.Enabled=True then begin
 if key = ord(13) then edit5.Setfocus end
 else if key = ord(13) then
    begin
    Button1.Click;
    if edit1.enabled=true then Edit1.Setfocus
    else if edit2.enabled=true then Edit2.Setfocus
    else if edit3.enabled=true then Edit3.Setfocus
    else if edit4.enabled=true then Edit4.Setfocus
    else if edit5.enabled=true then Edit5.Setfocus
  end;
end;

procedure TForm1.Edit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = ord(13) then
    begin
    Button1.Click;
    if edit1.enabled=true then Edit1.Setfocus
    else if edit2.enabled=true then Edit2.Setfocus
    else if edit3.enabled=true then Edit3.Setfocus
    else if edit4.enabled=true then Edit4.Setfocus
    else if edit5.enabled=true then Edit5.Setfocus
    end;
end;

end.
end;

end.


