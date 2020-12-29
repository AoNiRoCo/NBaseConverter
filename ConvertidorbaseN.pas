 PROGRAM ConvertidorBaseN;
uses dos,crt, sysutils;

(*Diseño Código
ENCABEZADO
Nombre: ConvertidorBaseN
Autores:Ricardo Nieto
Fecha de creación: 20/12/19
Fecha de última modificación: 28/12/20
*)

Type

 Datos = Record
	Simbolos:String;
	Decimal:Int64;
	RnarioCad:String;
        Exito:Boolean;
	end;
	
var

dato:Datos;

Function Decimal_Rnario():Boolean;
	Var

	Resultado:STRING;
	Resultado2:STRING;
	R,S,j,i:integer;
        Conteo:Int64;
	BEGIN
			writeln('Ingresa Decimal');
		readln(Dato.Decimal);
		R:=1;
		S:=1;

		Conteo:=0;
		Resultado:=Dato.Simbolos[1];
		while (Dato.Decimal>Conteo) Do
		begin
				while (Dato.Simbolos[S]<>Resultado[R])do
				begin
						S:=S+1;
				end;

				if (S=(length(Dato.Simbolos)))then
				begin

					if(R=length(Resultado))then
					begin
						Resultado:=Concat(Resultado,Dato.Simbolos[2]);

						while(R>1)do
						begin
							Resultado[R]:=Dato.Simbolos[1];
							R:=R-1;
						end;
						Resultado[1]:=Dato.Simbolos[1];
						Conteo:=Conteo+1;
      // Writeln('Conteo:'+intToStr(Conteo)+',Resultad[r]:'+Resultado[R]+',Simbolos:s:'+Dato.Simbolos[S]+',Dato.Decimal:'+InttoStr(Dato.Decimal)+'resultado:'+Resultado+',r:'+InttoStr(R)+',S:'+InttoStr(S));//sleep(360);
        end
					else
					begin
					R:=R+1;
					end;
					S:=1;
				end
				else
				begin
				S:=S+1;
					Resultado[R]:=Dato.Simbolos[S];
					while(R>1)do
							begin
							if (R>1)then
								begin
								R:=R-1;
									Resultado[R]:=Dato.Simbolos[1];
								end;
							Resultado[1]:=Dato.Simbolos[1];
							S:=1;
							end;
					S:=1;
					Conteo:=Conteo+1;
    //   Writeln('Conteo:'+intToStr(Conteo)+',Resultad[r]:'+Resultado[R]+',Simbolos:s:'+Dato.Simbolos[S]+',Dato.Decimal:'+InttoStr(Dato.Decimal)+'resultado:'+Resultado+',r:'+InttoStr(R)+',S:'+InttoStr(S));//sleep(360);
              end;
		End;
		Resultado2:=Resultado;
		Resultado:='';
		i:=length(Resultado2);

		for j:=1 to length(Resultado2) do
		begin
		Resultado:=Concat(Resultado,Resultado2[i]);
		i:=i-1;
		end;
		Dato.RnarioCad:=Resultado;
		//Writeln('Conteo:'+intToStr(Conteo)+',Resultad[r]:'+Resultado[R]+',Simbolos:s:'+Dato.Simbolos[S]+',Dato.Decimal:'+InttoStr(Dato.Decimal)+'resultado:'+Resultado+',r:'+InttoStr(R)+',S:'+InttoStr(S));//sleep(360);
        Writeln('resultado:'+Resultado);
				 readkey();
	END;

Function Rnario_Decimal():Boolean;
         VAR

         Long:int64;
          Long2:int64;
		  Long3:integer;
          Valor:int64;
          Peso:INT64;
          j,k,i:integer;
        	BEGIN
				writeln('ingresa numero');
		readln(Dato.RnarioCad);
	
		
		Long:=length(Dato.RnarioCad);
		Long2:=Long;
		Long3:=length(dato.Simbolos);

		i:=1;
		Dato.Decimal:=0;
		for i:=1 to Long2 do
		begin
		j:=1;
		
			while (Dato.Simbolos[j]<>Dato.RnarioCad[i])do//ciclo para extraer el valor del caracter
			begin
				if (j=(long3+1))then
				begin
					writeln('Simbolos Incompatibles');
					readkey();
					exit;
				end;
				j:=j+1;
			end;
			Valor:=j-1;
		
			Peso:=1;
			
			k:=i;
			
			WHILE (K<LONG)DO
			begin
				Peso:=Peso*length(dato.Simbolos);
                K:=K+1;
			
			end;
			
			Valor:=Valor*Peso;
			Dato.Decimal:=Dato.Decimal+Valor;

		end;
		writeln('El resultado es: ',Dato.Decimal);readkey();
	END;


Procedure Menu();
var
	seleccion:integer;
	Completado:Boolean;
begin
        clrscr;
		Seleccion:=0;
	writeln    ('BIENVENIDO');

		writeln('Ingresa cadena de simbolos');
		readln(Dato.Simbolos);
	
		writeln ('ESCRIBE EL NUMERO DEL PROCESO A REALIZAR');
		writeln (' 1: decimal a n');
		writeln (' 2: n a decimal');
		writeln (' 3: SALIR');
		
		readln(seleccion);


		
			case (seleccion) of
				 1: Completado:=Decimal_Rnario();
				 2: Completado:=Rnario_Decimal();
				 3:EXIT;
				 end;
			menu();
		
 end;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////



begin
	Menu;
end.
