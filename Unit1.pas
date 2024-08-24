unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    GroupBox1: TGroupBox;
    Button19: TButton;
    Button20: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Edit2: TEdit;
    Button1: TButton;
    Button3: TButton;
    Button18: TButton;
    Button22: TButton;
    Button28: TButton;
    Button29: TButton;
    Button32: TButton;
    Label1: TLabel;
    Button33: TButton;
    Button34: TButton;
    Button30: TButton;
    Button31: TButton;
    Button27: TButton;
    Button21: TButton;
    procedure Button17Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button19Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
  private
    { Priva
    procedure Button21Click(Sender: TObject);te declarations }
    id1, id2, n1, n2 : integer; {id = tipo de operacao.
    n1 = auxiliar para apagar da direita para a esquerda.}
    v1, v2, v3, v4, a1 : real;
    edit_1, st_mem, st_ma1, m1, m2, m3, m4, m5, m6 : string;
    {m[...] = memoria.}
    bopr, bocle, bodec : boolean;
    {bopr = boolean porcentagem, para tirar a porcentagem do ultimo valor
     obtido e nao o valor da variavel.
     bocle = boolean limpar caracteres da direita para a esquerda, substitui
     o valor a ser usado do valor da variavel pelo presente na tela.
     bodec = boolean decimal, insere a virgula uma vez.}
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  h : TextFile;

implementation

{$R *.dfm}

procedure TForm1.Button17Click(Sender: TObject);
begin
  edit1.Text := edit_1 + '1';
  edit_1 := edit1.Text;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
   edit1.Text := edit_1 + '2';
  edit_1 := edit1.Text;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  edit1.Text := edit_1 + '3';
  edit_1 := edit1.Text;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  edit1.Text := edit_1 + '4';
  edit_1 := edit1.Text;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  edit1.Text := edit_1 + '5';
  edit_1 := edit1.Text;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  edit1.Text := edit_1 + '6';
  edit_1 := edit1.Text;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  edit1.Text := edit_1 + '7';
  edit_1 := edit1.Text;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  edit1.Text := edit_1 + '8';
  edit_1 := edit1.Text;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  edit1.Text := edit_1 + '9';
  edit_1 := edit1.Text;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  edit1.Text := edit_1 + '0';
  edit_1 := edit1.Text;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if bodec = false then
  begin
    edit1.Text := edit_1 + ',';
    edit_1 := edit1.Text;
  end;
  bodec := true;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  bodec := false;
  if bocle = true then
  begin
    v2 := strtofloat (edit1.Text);
    bocle := false;
  end;
  id2 := id1;
  id1 := 1;
  if edit_1 <> '' then
  begin
    v1 := strtofloat (edit_1);
    if v2 <> 0 then
    begin
      if id2 = 1 then
      begin
        v2 := v2 + v1;
      end
      else
      if id2 = 2 then
      begin
        v2 := v2 - v1;
      end
      else
      if id2 = 3 then
      begin
        v2 := v2 * v1;
      end
      else
      if id2 = 4 then
      begin
        v2 := v2 / v1;
      end
      else
      if id2 = 5 then
      begin
        if bopr = false then
        begin
          v3 := v2;
          v4 := strtofloat (edit_1);
        end;
        if id1 = 1 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 + v3;
          v3 := v2;
        end
        else
        if id1 = 2 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 - v3;
          v3 := v2;
        end
        else
        if id1 = 3 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 * v3;
          v3 := v2;
        end
        else
        if id1 = 4 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 / v3;
          v3 := v2;
        end;
        edit_1 := floattostr (v2);
        edit1.Text := edit_1;
        bopr := true;
      end;
      edit_1 := floattostr (v2);
      edit1.Text := edit_1;
    end
    else
    begin
      v2 := v1;
    end;
    edit_1 := '';
  end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  bodec := false;
  if bocle = true then
  begin
    v2 := strtofloat (edit1.Text);
    bocle := false;
  end;
  id2 := id1;
  id1 := 2;
  if edit_1 <> '' then
  begin
    v1 := strtofloat (edit_1);
    if v2 <> 0 then
    begin
      if id2 = 1 then
      begin
        v2 := v2 + v1;
      end
      else
      if id2 = 2 then
      begin
        v2 := v2 - v1;
      end
      else
      if id2 = 3 then
      begin
        v2 := v2 * v1;
      end
      else
      if id2 = 4 then
      begin
        v2 := v2 / v1;
      end
      else
      if id2 = 5 then
      begin
        if bopr = false then
        begin
          v3 := v2;
          v4 := strtofloat (edit_1);
        end;
        if id1 = 1 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 + v3;
          v3 := v2;
        end
        else
        if id1 = 2 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 - v3;
          v3 := v2;
        end
        else
        if id1 = 3 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 * v3;
          v3 := v2;
        end
        else
        if id1 = 4 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 / v3;
          v3 := v2;
        end;
        edit_1 := floattostr (v2);
        edit1.Text := edit_1;
        bopr := true;
      end;
      edit_1 := floattostr (v2);
      edit1.Text := edit_1;
    end
    else
    begin
      v2 := v1;
    end;
    edit_1 := '';
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  bodec := false;
  if bocle = true then
  begin
    v2 := strtofloat (edit1.Text);
    bocle := false;
  end;
  id2 := id1;
  id1 := 3;
  if edit_1 <> '' then
  begin
    v1 := strtofloat (edit_1);
    if v2 <> 0 then
    begin
      if id2 = 1 then
      begin
        v2 := v2 + v1;
      end
      else
      if id2 = 2 then
      begin
        v2 := v2 - v1;
      end
      else
      if id2 = 3 then
      begin
        v2 := v2 * v1;
      end
      else
      if id2 = 4 then
      begin
        v2 := v2 / v1;
      end
      else
      if id2 = 5 then
      begin
        if bopr = false then
        begin
          v3 := v2;
          v4 := strtofloat (edit_1);
        end;
        if id1 = 1 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 + v3;
          v3 := v2;
        end
        else
        if id1 = 2 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 - v3;
          v3 := v2;
        end
        else
        if id1 = 3 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 * v3;
          v3 := v2;
        end
        else
        if id1 = 4 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 / v3;
          v3 := v2;
        end;
        edit_1 := floattostr (v2);
        edit1.Text := edit_1;
        bopr := true;
      end;
      edit_1 := floattostr (v2);
      edit1.Text := edit_1;
    end
    else
    begin
      v2 := v1;
    end;
    edit_1 := '';
  end;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  bodec := false;
  if bocle = true then
  begin
    v2 := strtofloat (edit1.Text);
    bocle := false;
  end;
  id2 := id1;
  id1 := 4;
  if edit_1 <> '' then
  begin
    v1 := strtofloat (edit_1);
    if v2 <> 0 then
    begin
      if id2 = 1 then
      begin
        v2 := v2 + v1;
      end
      else
      if id2 = 2 then
      begin
        v2 := v2 - v1;
      end
      else
      if id2 = 3 then
      begin
        v2 := v2 * v1;
      end
      else
      if id2 = 4 then
      begin
        v2 := v2 / v1;
      end
      else
      if id2 = 5 then
      begin
        if bopr = false then
        begin
          v3 := v2;
          v4 := strtofloat (edit_1);
        end;
        if id1 = 1 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 + v3;
          v3 := v2;
        end
        else
        if id1 = 2 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 - v3;
          v3 := v2;
        end
        else
        if id1 = 3 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 * v3;
          v3 := v2;
        end
        else
        if id1 = 4 then
        begin
          v2 := v2*(v4/100);
          v2 := v2 / v3;
          v3 := v2;
        end;
        edit_1 := floattostr (v2);
        edit1.Text := edit_1;
        bopr := true;
      end;
      edit_1 := floattostr (v2);
      edit1.Text := edit_1;
    end
    else
    begin
      v2 := v1;
    end;
    edit_1 := '';
  end;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  bodec := false;
  id2 := id1;
  if edit_1 <> '' then
  begin
    v1 := strtofloat (edit_1);
  end;
  if v2 <> 0 then
  begin
    if id2 = 1 then
    begin
      v2 := v2 + v1;
    end
    else
    if id2 = 2 then
    begin
      v2 := v2 - v1;
    end
    else
    if id2 = 3 then
    begin
      v2 := v2 * v1;
    end
    else
    if id2 = 4 then
    begin
      v2 := v2 / v1;
    end;
      edit1.Text := floattostr (v2);
  end
  else
  begin
    v2 := v1;
  end;
  edit_1 := '';
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
  edit_1 := '';
  edit1.Text := '0';
  v1 := 0;
  v2 := 0;
  v3 := 0;
  v4 := 0;
  bopr := false;
  bocle := false;
  bodec := false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  bodec := false;
  if bocle = true then
  begin
    v2 := strtofloat (edit1.Text);
    bocle := false;
  end;
  id2 := id1;
  id1 := 5;
  if edit_1 <> '' then
  begin
    v1 := strtofloat (edit_1);
    if v2 <> 0 then
    begin
      if id1 = 1 then
      begin
        v2 := v2 + v1;
      end
      else
      if id1 = 2 then
      begin
        v2 := v2 - v1;
      end
      else
      if id1 = 3 then
      begin
        v2 := v2 * v1;
      end
      else
      if id1 = 4 then
      begin
        v2 := v2 / v1;
      end
      else
      if id1 = 5 then
      begin
        if bopr = false then
        begin
          v3 := v2;
          v4 := strtofloat (edit_1);
        end;
        if id2 = 1 then
        begin
          v2 := v2*(v4/100);
          v2 := v3 + v2;
          v3 := v2;
          id1 := 1;
        end
        else
        if id2 = 2 then
        begin
          v2 := v2*(v4/100);
          v2 := v3 - v2;
          v3 := v2;
          id1 := 2;
        end
        else
        if id2 = 3 then
        begin
          v2 := v2*(v4/100);
          v2 := v3 * v2;
          v3 := v2;
          id1 := 3;
        end
        else
        if id2 = 4 then
        begin
          v2 := v2*(v4/100);
          v2 := v3 / v2;
          v3 := v2;
          id1 := 4;
        end;
        edit_1 := floattostr (v2);
        edit1.Text := edit_1;
        bopr := true;
      end;
      edit_1 := floattostr (v2);
      edit1.Text := edit_1;
    end
    else
    begin
      v2 := v1;
    end;
    edit_1 := '';
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  bodec := false;
  if bocle = true then
  begin
    v2 := strtofloat (edit1.Text);
    bocle := false;
  end;
  id2 := 6;
  edit_1 := edit1.Text;
  v2 := strtofloat (edit_1);
  v2 := sqrt (v2);
  edit1.Text := floattostr(v2);
  v1 := strtofloat (edit1.Text);
  edit_1 := '';
end;

procedure TForm1.Button32Click(Sender: TObject);
begin
  edit_1 := edit1.Text;
  n1 := length (edit_1);
  delete(edit_1,n1,1);
  edit1.Text := edit_1;
  bocle := true;
end;

procedure TForm1.Button30Click(Sender: TObject);
begin  
  bodec := false;
  if bocle = true then
  begin
    v2 := strtofloat (edit1.Text);
    bocle := false;
  end;
  id2 := 6;
  edit_1 := edit1.Text;
  v2 := strtofloat (edit_1);
  v2 := sqr (v2);
  edit1.Text := floattostr(v2);
  v1 := v2;
  edit_1 := '';
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #43 then
     begin
      button14.Click;
     end;     
     if key = #45 then
     begin
      button10.Click;
     end;
     if key = #42 then
     begin
      button6.Click;
     end;
     if key = #47 then
     begin
      button18.Click;
     end;
     if key = #49 then
     begin
      button17.Click;
     end;
     if key = #50 then
     begin
      button16.Click;
     end;
     if key = #51 then
     begin
      button15.Click;
     end;
     if key = #52 then
     begin
      button13.Click;
     end;
     if key = #53 then
     begin
      button12.Click;
     end;
     if key = #54 then
     begin
      button11.Click;
     end;
     if key = #55 then
     begin
      button9.Click;
     end;
     if key = #48 then
     begin
      button5.Click;
     end;
     if key = #44 then
     begin
      button4.Click;
     end;
     if key = #13 then
     begin
      button22.Click;
     end;
     if key = #8 then
     begin
      button32.Click;
     end;
     if key = #56 then
     begin
      button8.Click;
     end;
     if key = #57 then
     begin
      button7.Click;
     end;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_DELETE then
   begin
      button29.Click;
   end;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  edit2.Text := 'M1 ' + m1;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  edit2.Text := 'M2 ' + m2;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  edit2.Text := 'M3 ' + m3;
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
  edit2.Text := 'M4 ' + m4;
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
  edit2.Text := 'M5 ' + m5;
end;

procedure TForm1.Button26Click(Sender: TObject);
begin
  edit2.Text := 'M6 ' + m6;
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
  st_mem := edit2.Text;
  st_ma1 := edit2.Text;
  n1 := length (st_mem);
  n2 := n1 - 3;
  delete (st_mem,4,n2);
  delete (st_ma1,1,3);
  if st_mem = 'M1 ' then
  begin
    m1 := st_ma1;
  end;
  if st_mem = 'M2 ' then
  begin
    m2 := st_ma1;
  end;
  if st_mem = 'M3 ' then
  begin
    m3 := st_ma1;
  end;
  if st_mem = 'M4 ' then
  begin
    m4 := st_ma1;
  end;
  if st_mem = 'M5 ' then
  begin
    m5 := st_ma1;
  end;
  if st_mem = 'M6 ' then
  begin
    m6 := st_ma1;
  end;
  st_mem := '';
  st_ma1 := '';
  n1 := 0;
  n2 := 0;
end;

procedure TForm1.Button28Click(Sender: TObject);
begin
  st_mem := edit2.Text;
  n1 := length (st_mem);
  if n1 > 3 then
  begin
    delete(st_mem,n1,1);
    edit2.Text := st_mem;
  end;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  st_mem := edit2.Text;
  n1 := length (st_mem);
  n2 := n1 - 3;
  delete (st_mem,4,n2);
  if st_mem = 'M1 ' then
  begin
    edit2.Text := st_mem + edit1.Text;
    m1 := edit1.Text;
  end;
  if st_mem = 'M2 ' then
  begin
    edit2.Text := st_mem + edit1.Text;
    m2 := edit1.Text;
  end;
  if st_mem = 'M3 ' then
  begin
    edit2.Text := st_mem + edit1.Text;
    m3 := edit1.Text;
  end;
  if st_mem = 'M4 ' then
  begin
    edit2.Text := st_mem + edit1.Text;
    m4 := edit1.Text;
  end;
  if st_mem = 'M5 ' then
  begin
    edit2.Text := st_mem + edit1.Text;
    m5 := edit1.Text;
  end;
  if st_mem = 'M6 ' then
  begin
    edit2.Text := st_mem + edit1.Text;
    m6 := edit1.Text;
  end;
  st_mem := '';
  n1 := 0;
  n2 := 0;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  st_mem := edit2.Text;
  delete (st_mem,1,3);
  edit_1 := st_mem;
  edit1.Text := st_mem;
end;

procedure TForm1.Button31Click(Sender: TObject);
begin
  st_mem := edit1.Text;
  a1 := strtofloat (st_mem);
  a1 := a1 + (-(a1+a1));
  edit1.Text := floattostr (a1);
  edit_1 := floattostr (a1);
  st_mem := '';
  st_ma1 := '';
  a1 := 0;
  n1 := 0;
  n2 := 0;
end;

procedure TForm1.Button34Click(Sender: TObject);
begin
  st_mem := edit2.Text;
  st_ma1 := edit2.Text;
  n1 := length (st_ma1);
  n2 := n1 - 3;
  delete (st_ma1,4,n2);
  delete (st_mem,1,3);
  a1 := strtofloat (st_mem);
  a1 := a1 + (-(a1+a1));
  edit2.Text := st_ma1 + floattostr (a1);
  st_mem := '';
  st_ma1 := '';
  a1 := 0;
  n1 := 0;
  n2 := 0;
end;

end.
