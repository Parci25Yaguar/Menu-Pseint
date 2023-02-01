
// funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir ""
	Escribir titulo
	Para pos = 0 Hasta lim - 1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "**********************************"
	Escribir "  Elija una opción por favor : [1..",lim,"] " Sin Saltar
	leer opcion
FinFuncion
////////////////////////////////////////////////////////////////////////////////////
//EJERCICIOS NUMEROS
// SubAlgoritmo mayorDosNumeros()
// esta funcion pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero 1 : "; Sin Saltar leer num1
	Escribir "Ingrese numero 2 : "; Sin Saltar leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir "El numero ",num1," es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
FinFuncion
// SubAlgoritmo divisionPorResta()
// esta funcion pide dos numeros y presenta la resta
Funcion divisionPorResta()
	Definir dividendo, divisor, cont, resta Como Real
	Escribir "Ingrese el (DIVIDENDO): "; Sin Saltar leer dividendo;
	Escribir "Ingrese el (DIVISOR): "; Sin Saltar leer divisor;
	cont = 0; 
	resta = dividendo; //Numero Mayor y reste el divisor
	Escribir "Respuesta:"
	Mientras resta-divisor >= 0 Hacer
		resta = resta - divisor
		Escribir (resta+divisor),"-",dividendo," = ",resta
		cont = cont + 1
	Fin Mientras
	Escribir "La division entre: ",dividendo," / ",divisor," = ",cont
FinFuncion
//Esta Funcion mostrar la multiplicacion del los dos numeros ingresados y 
//mostrar su suma.
Funcion multiplicaSuma()
	Definir num1, num2, suma Como Real
	Escribir "Ingrese el primer numero "; Sin Saltar leer num1;
	Escribir "Ingrese el segundo numero "; Sin Saltar leer num2;
	suma = 0;
	Para cont = 1 Hasta num2  Con Paso 1 Hacer
		suma = suma + num1;
		Escribir (suma-num1), "+",num1,"=",suma
	FinPara
	Escribir "La multiplicacion de :",num1," x ",num2," = ",suma
FinFuncion
//Esta Funcion suma los Pares y encuentra los Multiplos de 5
Funcion sumaParesProductos()
	Definir sumaPar, num, producto, limite, cont Como Entero
	sumaPar  = 0; limite = 0; producto = 1; num  = 0; 
	Escribir "Por favor ingrese un limite: "; Sin Saltar leer limite
	Escribir "El LIMITE es: ",limite;
	Para cont = 1 Hasta limite Hacer
		Escribir "Ingrese numero => ", cont
		Leer num;
		Si num MOD 2 = 0 Entonces
			sumaPar = sumaPar + num
		SiNo
			Si num MOD 5 = 0 Entonces
				producto = producto * num  
			FinSi
		FinSi
	FinPara
	Escribir "La SUMA de los PARES es: ",sumaPar;
	Escribir "La MULTIPLICACION de los MULTIPLOS DE 5 es:",producto;
FinFuncion
//Esta Funcion permite mostra la suma de digitos que son ingresados
Funcion digitosSecuencia()
	Definir num, digito, cont Como Entero
	cont = 0;
	Escribir "Ingrese un numero: "; Sin Saltar leer num;
	Mientras num <> 0 Hacer
		Mientras num > 0 Hacer
			digito = ( num MOD 10 );
			num    = trunc( num / 10 );
			cont = cont + 1;
		FinMientras
		Escribir "Ingrese un numero: "; Sin Saltar leer num;
	FinMientras
	Escribir "La SUMA DE DIGITOS INGRESADOS es: ",cont
FinFuncion
//Esta Funcion aplica descuentos e IVA a los trajes mayores a 100
Funcion Tienda()
	Escribir "*************BIENVENIDO*************";
	Escribir "******TIENDA DE TRAJES LUJOSOS******";
	Escribir "************************************";
	Definir num, descuento, IVA, pago, precioTraje, total, valorTraje, preciodescuento Como Real
	Escribir "Ingrese la cantidad de traje(s) que desea llevar:";
	leer num;
	Escribir "Ingrese el valor del tranje(s):";
	Leer precioTraje;
	Si precioTraje > 100 Entonces
		descuento   = precioTraje * 0.10;
	SiNo
		descuento   = precioTraje * 0.05;
	FinSi
	preciodescuento = precioTraje - descuento;
	total           = preciodescuento * num;
	IVA             = total * 0.12;
	valorTotal      = total + IVA;
	Escribir "*************FACTURA****************";
	Escribir "Valor de traje(s) es: ",precioTraje;
	Escribir "Valor de traje(s) con descuento :",preciodescuento;
	Escribir "IVA Aplicado :",IVA;
	Escribir "Su total de pagar es: ",valorTotal
	Escribir "************************************";
FinFuncion
//Esta Funcion indica que variable es el mayor de los 3 y prsenta por pantalla
Funcion segundoMayor()
	Definir num1, num2, num3 Como Entero
	Escribir "Ingrese el primero numero: "; Sin Saltar leer num1;
	Escribir "Ingrese el segundo numero: "; Sin Saltar leer num2;
	Escribir "Ingrese el terce numero:   "; Sin Saltar leer num3;
	Si num2 > num1 Y num2 > num3 Entonces
		Escribir ""
		Escribir "El segundo numero ", num2, " es el MAYOR";
	SiNo
		Si num1 > num2 Y num1 > num3 Entonces
			Escribir ""
			Escribir "El primer numero ", num1, " es el MAYOR";
		SiNo
			Escribir ""
			Escribir "El tercer numero ", num3 " es el MAYOR";
		FinSi
	FinSi
FinFuncion
//Esta Funcion permite sumas las notas ingresadas y mostrar su promedio
Funcion secuenciaPromedio()
	Definir num, cont, prom, notasValor, sumaNotas Como Real
	num = 0; cont = 0; notasValor = 0;
	Mientras num >= 0 Hacer
		Escribir "Ingrese sus Notas: "; Sin Saltar leer num;
		Si num > 0 Entonces
			notasValor = notasValor + num;
			cont = cont + 1;
		FinSi
	FinMientras
	prom = ( notasValor/cont );
	Escribir "El PROMEDIO de las NOTAS es: ",prom;
FinFuncion
//Esta Funcion verifica que NUMEROS SON AMIGOS
Funcion numeroAmigos()
	Definir num, num2, sumaNum, sumaNum2, cont Como Entero
	sumaNum=0; sumaNum2=0
	Escribir "Ingrese el Primer Numero: "; Sin Saltar leer num
	Escribir "Ingrese el Segundo Numero: ";Sin Saltar leer num2
	Para cont = 1 hasta num Hacer
		Si num MOD cont = 0 Entonces
			sumaNum = sumaNum + cont
		FinSi
	FinPara
	Para cont = 1 hasta num2 Hacer
		si num2 MOD cont = 0 Entonces
			sumaNum2 = sumaNum2 + cont
		FinSi
	FinPara
	Si sumaNum = sumaNum2 Entonces
		Escribir "El Numero ",num, " y ",num2, " son AMIGOS";
	SiNo
		Escribir "El Numero ",num, " y ",num2, " NO son AMIGOS";
	FinSi
FinFuncion
//Esta Funcion permite saber SI SON PRIMOS GEMELOS
Funcion primosGemelos()
	Definir cont, contNumero1, contNumero2, num, num2 Como Entero
	contNumero1 = 0; contNumero2 = 0;
	Escribir "Ingrese Numero 1: "; Sin Saltar Leer num;
	Escribir "Ingrese Numero 2: "; Sin Saltar Leer num2;
	Para cont = 1 Hasta num Hacer
		Si num MOD cont = 0 Entonces
			contNumero1 = contNumero1 + 1
		FinSi
	FinPara
	Para cont = 1 Hasta num2 Hacer
		Si num2 MOD cont = 0 Entonces
			contNumero2 = contNumero2 + 1
		FinSi
	FinPara
	Si contNumero1 = 2 Y contNumero2 = 2 Entonces
		Escribir "El numero: ",num," y ",num2," son PRIMOS GEMELOS";
	SiNo
		Escribir "El numero: ",num," y ",num2," NO son PRIMOS GEMELOS";
	FinSi
FinFuncion

///////////////////////////////////////////////////////////////////////////////////
//EJERCICIOS CADENAS
//Esta Funcion invierte el Nombre ingresado
Funcion nombreCaracter()
	Definir nombre Como Caracter
	Definir pos, long Como Entero
	nombre = "";
	Escribir "Introduzca el NOMBRE: "; Sin Saltar leer nombre;
	Escribir "**RESULTADOS**";
	long = Longitud(nombre) - 1;
	Para pos = 0 Hasta long Hacer
		Escribir Subcadena(nombre, pos, pos)
	FinPara
FinFuncion
//Esta Funcion permite escoger las inciales primera, medio y ultimo
Funcion primeroMedioUltimo()
	Definir frase, letra1, letra2, letra3 Como Caracter
	Definir pos, media, long, c1, c2 Como Entero
	c1 = 1 ; c2 = 0; pos = 0;
	Escribir "Ingrese FRASE: "; Sin Saltar leer frase;
	long = Longitud(frase)
	Para pos = 0 Hasta long -1 Hacer
		Si Subcadena(frase, pos, pos) = "" Entonces
			c1 = c1 + 1;
		SiNo
			Si Subcadena(frase, pos, pos) <> "" Entonces
				c2 = c2 + 1;
			FinSi
		FinSi
		letra1 = Subcadena(frase, 0, 0);
		letra3 = Subcadena(frase, pos, pos);
	FinPara
	media  = trunc(c2 / 2) 
	letra2 = Subcadena(frase, media, media);
	Escribir "**RESULTADOS**";
	Escribir "Primer LETRA es: ",letra1;
	Si letra2 = "" Entonces
		media = media + 1;
		letra2 = Subcadena(frase, media, media)
		Escribir "Segunda LETRA es: ",letra2;
	Sino
		Escribir "Segunda LETRA es: ",letra2;
	FinSi
	Escribir "Ultima LETRA es: ",letra3;
FinFuncion
//Esta Funcion compara si los caracteres son iguales o no
Funcion nombresIguales()
	Definir nombre, nombre2, frase, frase2 Como Caracter
	Escribir "Que desea ingresar ","FRASE"," o ","NOMBRE";
	Leer opc1
	Segun opc1 Hacer
		"FRASE" o "frase":
			Escribir "Ingrese FRASE 1: "; Sin Saltar leer frase;
			Escribir "Ingrese FRASE 2: "; Sin Saltar leer frase2;
			Si frase = frase2 Entonces
				Escribir "La FRASE: ",frase," y ",frase2, " son IGUALES";
			Sino
				Escribir "La FRASE: ",frase," y ",frase2, " NO son IGUALES";
			FinSi
		"NOMBRE" o "nombre":
			Escribir "Ingrese NOMBRE 1: "; Sin Saltar leer nombre;
			Escribir "Ingrese NOMBRE 2: "; Sin Saltar leer nombre2;
			Si nombre = nombre2 Entonces
				Escribir "El NOMBRE: ",nombre," y ",nombre2, " son IGUALES";
			Sino
				Escribir "El NOMBRE: ",nombre," y ",nombre2, " NO son IGUALES";
			FinSi
		De Otro Modo:
			Escribir "Opcion Invalidad"
	Fin Segun
FinFuncion
//Esta Funcion verifica que Arreglo tiene mas longitud
Funcion fraseMayorLongitud()
	Definir frase, frase2 Como Caracter
	frase = ""; frase2 = "";
	Escribir "Ingrese Primero Frase: "; Sin Saltar leer frase;
	Escribir "Ingrese Segunda Frase: "; Sin Saltar leer frase2;
	Si Longitud(frase)==Longitud(frase2) Entonces
		Escribir "La Frase: ","[ ",frase," ]"," tiene la misma Longitud que la Frase ","[ ",frase2," ]";
	SiNo
		Si Longitud(frase) > Longitud(frase2)  Entonces
			Escribir "La Frase: ","[ ",frase,"]"," tiene MAYOR Longitud que la Frase ","[ ",frase2," ]";
		SiNo
			Escribir "La Frase: ","[ ",frase2," ]"," tiene MAYOR Longitud que la Frase ","[ ",frase," ]";
		FinSi
	FinSi
FinFuncion
//Esta Funcion permite saber cuantos simbolos hay
Funcion simbolosCadena() 
	Definir frase Como Caracter
	Definir long, pos, c,c1,c2,c3 Como Entero
	pos = 0; c = 0; c1 = 0; c2 = 0; c3 = 0;
	Escribir "Ingrese FRASE: "; Sin Saltar leer frase;
	long = Longitud(frase) -1;
	Para pos = 0 Hasta long Hacer
		Si Subcadena(frase, pos, pos) = "," Entonces
			c = c + 1; 
		Finsi
		Si Subcadena(frase ,pos, pos) = ";" Entonces
			c1 = c1 + 1;
		Finsi
		Si Subcadena(frase, pos, pos) = "." Entonces
			c2 = c2 + 1;
		Finsi
		Si Subcadena(frase, pos, pos) = ":" Entonces
			c3 = c3 + 1;
		FinSi
	FinPara
	Escribir "CANTIDAD de [ , ] es: ",c
	Escribir "CANTIDAD de [ ; ] es: ",c1
	EScribir "CANTIDAD de [ . ] es: ",c2
	Escribir "CANTIDAD de [ : ] es: ",c3
FinFuncion
//Esta Funcion permite imprimir las vocales, digitos y consonantes
Funcion vocalesConsonatesDigi()
	Definir frase Como Caracter
	Definir cont, cont2, cont3, long, pos Como Entero
	cont  = 0; cont3 = 0;
	cont2 = 0; frase = "";
	Escribir "Ingrese FRASE: "; Sin Saltar leer frase;
	long = Longitud(frase) -1;
	Para pos = 0 Hasta long Hacer
		si subcadena(frase,pos,pos) >= "0" y subcadena(frase,pos,pos) <= "9"
			cont = cont + 1;
		FinSi
		Si Subcadena(frase,pos,pos) = "a" o Subcadena(frase,pos,pos) = "e" o Subcadena(frase,pos,pos) = "i" o Subcadena(frase,pos,pos) = "o" o Subcadena(frase,pos,pos) = "u" o Subcadena(frase,pos,pos) = "A" o Subcadena(frase,pos,pos) = "E" o Subcadena(frase,pos,pos) = "I" o Subcadena(frase,pos,pos) = "O" o Subcadena(frase,pos,pos) = "U"
			cont2 = cont2 + 1;
		FinSi
		Si Subcadena(frase,pos,pos) = "b" o Subcadena(frase,pos,pos) = "c" o Subcadena(frase,pos,pos) = "d" o Subcadena(frase,pos,pos) = "f" o Subcadena(frase,pos,pos) = "g" o Subcadena(frase,pos,pos) = "h" o Subcadena(frase,pos,pos) = "j" o Subcadena(frase,pos,pos)="k" o Subcadena(frase,pos,pos)="l" o Subcadena(frase,pos,pos)="m" o Subcadena(frase,pos,pos)="n" o Subcadena(frase,pos,pos)="?" o Subcadena(frase,pos,pos)="p" o Subcadena(frase,pos,pos)="q" o Subcadena(frase,pos,pos)="r" o Subcadena(frase,pos,pos)="s" o Subcadena(frase,pos,pos)="t" o Subcadena(frase,pos,pos)="v" o Subcadena(frase,pos,pos)="w" o Subcadena(frase,pos,pos)="x" o Subcadena(frase,pos,pos)="y" o Subcadena(frase,pos,pos)="z" o Subcadena(frase,pos,pos)="B" o Subcadena(frase,pos,pos)="C" o Subcadena(frase,pos,pos)="D" o Subcadena(frase,pos,pos)="F" o Subcadena(frase,pos,pos)="G" o Subcadena(frase,pos,pos)="H" o Subcadena(frase,pos,pos)="J" o Subcadena(frase,pos,pos)="K" o Subcadena(frase,pos,pos)="L" o Subcadena(frase,pos,pos)="M" o Subcadena(frase,pos,pos)="N" o Subcadena(frase,pos,pos)="?" o Subcadena(frase,pos,pos)="P" o Subcadena(frase,pos,pos)="Q" o Subcadena(frase,pos,pos)="R" o Subcadena(frase,pos,pos)="S" o Subcadena(frase,pos,pos)="T" o Subcadena(frase,pos,pos)="V" o Subcadena(frase,pos,pos)="W" o Subcadena(frase,pos,pos)="X" o Subcadena(frase,pos,pos)="Y" o Subcadena(frase,pos,pos)="Z"
			cont3 = cont3 + 1;
		FinSi
	FinPara
	Escribir "La FRASE: ","[ ",frase," ]";
	Escribir "Total de DIGITOS: ",cont;
	Escribir "Total de VOCALES: ",cont2;
	Escribir "Total de COSONANTES: ",cont3;
FinFuncion
//Esta Funcion permite saber la cantidas de palabras que se ingresaron
Funcion contarPalabras(frase)
	Definir lon,contador Como Entero
	contador = 1
	lon=Longitud(frase)
	para pos=1 Hasta lon Con Paso 1 Hacer
		Si Subcadena(frase,pos,pos) = " " & Subcadena(frase,pos+1,pos+1) <> " " Entonces
			contador = contador + 1
		FinSi
	FinPara
	Escribir "La Frase : ","[ ",frase," ]"; 
	Escribir "Tiene ",contador," PALABRAS"
FinFuncion
//Esta Funcion indica la SUMA de digitos
Funcion cedula1() 
	Definir cedula Como Caracter
	Definir long, pos, suma, cedulaNumero Como Entero
	suma = 0;
	Escribir "Por Favor ingrese su CEDULA: "; Sin Saltar leer cedula
	long = Longitud(cedula);
	Para pos = 0 Hasta long -1 Hacer
		cedulaNumero = ConvertirANumero(Subcadena(cedula, pos, pos));
		suma = suma + cedulaNumero;
	FinPara
	Escribir "CEDULA: ","[ ",cedula," ]";
	Escribir "SUMA de sus DIGITOS es: ",suma;
FinFuncion
//Esta Funcion verifica si la palabra es Palindroma
Funcion palindromo()
	Definir palabra, pal Como Caracter
	Definir log Como Entero
	Escribir "Ingrese Frase: "; Sin Saltar leer palabra;
	log = Longitud(palabra)
	pal  = ""
	Mientras log > 0 Hacer
		log = log - 1;
		pal = pal + Subcadena(palabra, log, log);
	FinMientras
	Si palabra = pal Entonces
		Escribir "La Frase ",palabra," es PALINDROMA";
	SiNo
		Escribir "La Frase ",palabra," no es PALINDROMA";
	FinSi
FinFuncion
//Esta Funcion Permite encontrar um caracter
Funcion posicionCaracter() 
	Definir frase, caracter1, caracter2 Como Caracter
	Definir long, pos, cont Como Entero
	frase = ""; long  = 0;
	Escribir "Ingrese FRASE: "; Sin Saltar leer frase;
	long = Longitud(frase);
	Para pos = 0 Hasta long Hacer
		caracter2 = Subcadena(frase, pos, pos)
		caracter1 = Subcadena(frase, pos-1, pos-1)
		si caracter2 <> "" Entonces
			Escribir cont, " " Subcadena(frase, pos, pos)
			cont = cont + 1;
		FinSi
	FinPara
FinFuncion

//////////////////////////////////////////////////////////////////////////////////////
//EJERCICIOS ARREGLOS
//Esta Funcion permite imprimir los digitos ingresados uno por uno
Funcion presentarArreglo()
	Definir num, cont, arreglo, pos, indice Como Entero
	cont = 0; pos = 0;
	Escribir "Ingrese la cantidad de digitos: "; Sin Saltar leer indice
	Dimension arreglo[indice]
	Mientras cont < indice Hacer
		Escribir "Ingrese Numero: "; Sin Saltar leer num;
		arreglo[pos] = num;
		pos          = pos  + 1;
		cont         = cont + 1;
	FinMientras
	Escribir "*********************************"
	Escribir "RESULTADO DE DIGITOS: ";
	Para cont = 0 Hasta pos-1 Con Paso 1 Hacer
		Escribir arreglo[cont] " " Sin Saltar; 
	FinPara
FinFuncion
//Esta Funcion imprimi los valor que son PARES
Funcion paresArreglo()
	Definir num, cont, arreglo, pos, indice Como Entero
	cont = 0; pos = 0;
	Escribir "Ingrese la cantidad de digitos: "; Sin Saltar leer indice
	Dimension arreglo[indice]
	Mientras cont <= indice-1 Hacer
		Escribir "Ingrese un Numero: "; Sin Saltar leer num;
		Si num MOD 2 = 0 Entonces
			arreglo[pos] = num;
			pos          = pos + 1;
		FinSi
		cont = cont + 1;
	FinMientras
	Escribir "********************************"
	Escribir "NUMEROS PARES SON: ";
	Para cont = 0 Hasta pos-1 Con Paso 1 Hacer
		Escribir arreglo[cont] " " Sin Saltar; 
	FinPara
FinFuncion
//Esta Funcion permite verificar los numero si son negativos e Imprimir 
Funcion arregloNegativo()
	Definir num, cont, arreglo, pos, indice Como Entero
	cont = 0; pos = 0;
	Escribir "Ingrese la cantidad de digitos: "; Sin Saltar leer indice
	Dimension arreglo[indice]
	Mientras cont < indice Hacer
		Escribir "Ingrese un Numero: "; Sin Saltar leer num;
		Si num < 0 Entonces
			arreglo[pos] = num;
			pos          = pos + 1;
		FinSi
		cont = cont + 1;
	FinMientras
	Escribir "********************************"
	Escribir "NUMEROS NEGATIVOS ES: ";
	Para cont = 0 Hasta pos-1 Con Paso 1 Hacer
		Escribir arreglo[cont] " " Sin Saltar; 
	FinPara
FinFuncion
//Esta Funcion permite obtener la primera incial del nombre ingresado eh Imprimir 
Funcion arregloNombres()
	Definir indice, limite, cont, cont2, cont3 Como Entero
	Definir nombre Como Caracter
	indice = 0; cont2 = 0;
	cont   = 1; cont3 = 1;
	Escribir "Ingrese la cantidad de nombres: "; Sin Saltar leer limite
	Dimension nombre[limite + 1]
	Para indice = 1 Hasta limite Con Paso 1 Hacer
		Escribir "Ingrese nombre: ",indice;
		leer nombre[indice];
		cont = cont + 1;
	FinPara
	Para indice = 1 Hasta limite Con Paso 1 Hacer
		cont2 = cont2 + 1;
		Escribir "La INCIAL del NOMBRE ",cont3," : ",Subcadena(nombre[indice],0,0);
		cont3 = cont3 + 1;
	FinPara
FinFuncion
//Esta Funcion permite suma los numeros y dividir para obtener su promedio y mostras la cantidad de elementos
Funcion arregloNumerosPromedio()
	Definir indice, limite, cont, acum Como Real
	Definir arreglo, valorNota, promedio, suma, indice2 Como Real
	cont = 1; acum = 0;
	Escribir "Ingrese el limite: "; Sin Saltar leer limite 
	Dimension arreglo[ limite + 1]
	Para indice = 1 Hasta limite Con Paso 1 Hacer
		Escribir "Ingrese Valor Numero: " ,cont," "; Sin Saltar leer valorNota;
		arreglo[indice] = valorNota
		cont = cont + 1;
	FinPara
	Para indice2 <- 1 Hasta limite Con Paso 1 Hacer
		acum = acum + arreglo[indice2]
	Fin Para
	promedio = acum / limite 
	suma     = acum
	Escribir "PROMEDIO del ARREGLO es: ",promedio;
	Escribir "La SUMA de los INGRESADOS es: ",suma;
	Escribir "El TOTAL de NUMEROS es: ",limite;
FinFuncion
//Esta Funcion permite encontrar los MULTIPLOS DE 5 
Funcion arregloInversa5()
	Definir limite, arreglo, num, pos, cont, indice, numMenor Como Entero
	cont = 1; pos = 0; numMenor = 0;
	Escribir "Ingrese el limite: "; Sin Saltar leer limite 
	Dimension arreglo[ limite]
	Mientras numMenor < limite Hacer
		Escribir "Ingrese Valor: ",cont," "; Sin Saltar Leer num;
		Si num MOD 5 = 0 Entonces
			arreglo[pos] = num;
			pos          = pos + 1;
		FinSi
		cont     = cont + 1;
		numMenor = numMenor + 1;
	FinMientras
	Escribir "MULTIPLOS DE 5 ENCONTRADOS son: ";
	Para indice = pos-1 Hasta 0 Con Paso -1 Hacer
		Escribir arreglo[indice]," ", Sin Saltar;
	FinPara
FinFuncion
//Esta Funcion permite imprimir el primero numero, medio y ultimo
Funcion arregloPrimeroMedioU()
	Definir arreglo Como Caracter
	Definir long, pos, cont, limite Como Entero
	pos = 0; 
	Escribir "Ingrese Cantidad de Digito: "; Sin Saltar leer limite;
	Dimension arreglo[ limite + 1];
	Para cont = 1 Hasta limite Hacer
		Escribir "Ingrese Numero ",cont," :"
		leer arreglo[pos]
		pos = pos + 1;
	FinPara
	Escribir "El PRIMER numero es: ", arreglo[0]
	Escribir "El NUMERO MEDIO es: ", arreglo(trunc(([pos]-1)/2))
	Escribir "El ULTIMO numero es: ", arreglo([pos]-1)
FinFuncion
//Esta Funcion permite imprimir los digitos ingresados en otro ARREGLO
Funcion CopiarPesentar()
	Definir pos, limite, arreglo, arreglo1 Como Entero
	Escribir "Ingrese el Limite del Arreglo: "; Sin Saltar leer limite;
	Escribir "Por Favor ingrese los digitos: ";
	Dimension arreglo[ limite + 1];
	Para pos = 1 Hasta limite Hacer
		leer arreglo[ pos ];
	FinPara
	Dimension arreglo2[ limite + 1];
	Para pos = 1 Hasta limite Hacer
		arreglo2[ pos ] = arreglo[ pos ];
	FinPara
	Escribir "VALORES del Arreglo 2 :";
	Para pos = 1 Hasta limite Hacer
		Escribir arreglo2[ pos ]
	FinPara
FinFuncion
//Esta Funcion permite suma los arreglos ingresados
Funcion copiarArregloSumaElemento()
	Definir limite, pos, arreglo, arreglo2, arreglo3 Como Entero
	Escribir "Ingrese el Limite del Arreglo: "; Sin Saltar leer limite;
	Escribir "Ingrese Digitos del Primero Arreglo: ";
	Dimension arreglo[ limite + 1];
	Para pos = 1 Hasta limite Hacer
        Leer arreglo[ pos ];
    FinPara
	Escribir "Ingrese Digitos del Segundo Arreglo: ";
	Dimension arreglo2[ limite + 1];
	Para pos = 1 Hasta limite Hacer
        Leer arreglo2[ pos ];
    FinPara
	Dimension arreglo3[ limite + 1];
    Escribir "SUMA de los ARREGLOS es: "
    Para pos = 1 Hasta limite Hacer
        arreglo3[ pos ] = arreglo[ pos ] + arreglo2[ pos ] 
		Escribir arreglo3[ pos ];
    FinPara
FinFuncion
//Esta Funcion permite obtener el factorial de un limite de numeros 
Funcion arregloFactoriales()
	Definir limite, factorial, arreglo, arreglo2 Como Entero;
	Definir pos, n Como Entero;
	Escribir "Ingrese el limite de Numeros: "; Sin Saltar leer limite;
	Dimension arreglo[limite + 1];
	Dimension arreglo2[limite + 1];
	Para pos = 1 Hasta limite Hacer
		Escribir "Ingrese el Numero: ",pos;
		leer arreglo[pos]
	FinPara
	Para pos = 1 Hasta limite Hacer
		factorial = 1;
		Para n = 1 hasta arreglo[pos] Hacer
			factorial = factorial * n
		FinPara
		arreglo2[pos] = factorial
	FinPara
	Escribir "Los FACTORIALES son: ";
	Para pos = 1 Hasta limite Hacer
		Escribir arreglo2[pos];
	FinPara
FinFuncion
/////////////////////////////////////////////////////////////////////////////////////

// Algoritmo principal del proyecto
Algoritmo TRABAJO_FINAL
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,opcc,opca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)EJERCICIOS CON NUMEROS"
	menuPrincipal[1] = "  2)EJERCICIOS CON CADENAS"
	menuPrincipal[2] = "  3)EJERCICIOS CON ARREGLOS"
	menuPrincipal[3] = "  4)Salir"
	
	// Arreglo submenu NUMEROS
	menuNumeros[0] = "  1)Mayor de 2 Numeros"
	menuNumeros[1] = "  2)Dividir dos numeros por restas"
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas"
	// n=5 : 20,5,10,2,1 respuesta: sumpares=32  multiplos5=1000
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
	//  2,123,10,2345,0 respuesta = 10    r=trunc(2/10)=0 r = 2 mod 10 =2
	menuNumeros[4] = "  5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
	//El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
	//precio superior a 100, se les aplicará un descuento del 10%  y a los demas
	//el 5%. presentar el valor de cada traje con su respectivo valor, descuento y pago
	//considerando el iva del 12%. Asuma que se ingresan n trajes.
	// n=2
	// PrecioTraje=120   des=precioTraje*0.10=12  iva=(120-12)*0.12 pago=precioTraje-des+iva
	// PrecioTraje=50   des=precioTraje*0.05=2.5  iva=(50-2.5)*0.12
	menuNumeros[5] = "  6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor"
	// la secuencia termina cuando se ingrese un numero negativo
	// 2,4,6,8,-10
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio"
	// dos numeros son amigos cuando la suma de los divisores del primer numero
	// son iguales a la suma de los divisores del segundo numero.
	// n1=6(1,2,3)=6 n2=25(1,5)=6
	menuNumeros[8] = "  9)Numeros amigos"
	// dos numeros son primos gemelos si ambos son primos
	menuNumeros[9] = "  10)Primos gemelos"
	menuNumeros[10]= "  11)Salir"
	
	// arreglos submenu CADENAS
	// nombre = "ana"  ana
	menuCadenas[0] = "  1)Presentar un nombre caracter por caracter"
	// frase="hola que tal"    hql
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase"
	//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
	menuCadenas[2] = "  3)Dado dos nombres o frase indicar si son iguales"
	//f1="Hola" f2="mal"  si longitud(f1)>longitud(f2)
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud"
	//frase="Hola, que tal; como te va,Bien: y tu, como estas."
	// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena"
	//frase="Juan tiene 20 dolares"
	// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
	// frase = "hola   que  tal" palabras=3
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	// cedula="0914192182"= 37   convertirANumero(subcadena(frase,pos,pos))
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula"
	// palabra="ana"
	menuCadenas[8] = "  9)Indicar si una palabra es palindroma"
	// cadena="hola que tal"
	//         01234567891011
	//caracter="qui"  resp=-1
	//caracter="que"  resp=5
	menuCadenas[9] = "  10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
	menuCadenas[10] ="  11)Salir"
	
	// arreglo submenu ARREGLOS
	// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
	menuArreglos[0] = "1)Dado un arreglo cualquiera ingresarlo y presentarlo"
	// arreglo=[2,3,4,67,8] presenta 2 4 8 
	menuArreglos[1] = "2)Presentar los numeros pares de un arreglo"
	//n=5
	// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
	menuArreglos[2]= "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
    // n=3
	// ["ana","jose","dan"]  presenta a j d 
	menuArreglos[3]= "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre"
    //n=5  arreglo=[10,20,30,5,10]= total=75  cant=5   prom=15   
	menuArreglos[4]= "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
    //n=5  arreglo=[8,20,7,5,4] presenta 5 20
	menuArreglos[5]= "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
	//n=5  arreglo=[8,20,7,5,4] presenta 8  7  4
	menuArreglos[6]= "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
    //n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
	menuArreglos[7]= "8)Dado un arreglo copiarlo en otro y presentarlo"
    //n=5  arreglo1=[8,20,7,5,4]
	//     arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
	menuArreglos[8]= "9)Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
	//n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24] 
	menuArreglos[9]= "10)Dado una serie de numeros guarda en un arreglo los factoriales"
	menuArreglos[10]="11) Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu("******MENU PRINCIPAL [BSSS] ******",menuPrincipal,4)
		Segun opc Hacer
		"1":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("********MENU NUMEROS***************",menuNumeros,11)
				Segun opcn Hacer
					"1":
						Borrar Pantalla
						Escribir "1)Mayor de dos Numeros";
						mayorDosNumeros()
						Esperar 4 Segundos
					"2":
						Borrar Pantalla
						Escribir "2)Dividivion de dos numeros por resta sucesiba";
						divisionPorResta()
						Esperar 4 Segundos
					"3":
						Borrar Pantalla
						Escribir "3)Multiplicar dos numeros por sumas sucesivas";
						multiplicaSuma()
						Esperar 4 Segundos
					"4":
						Borrar Pantalla
						Escribir "4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
						sumaParesProductos()
						Esperar 4 Segundos
					"5":
						Borrar Pantalla
						Escribir "5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
						digitosSecuencia()
						Esperar 3 Segundos
					"6":
						Borrar Pantalla
						//Escribir "6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
						tienda()
						Esperar 5 Segundos
					"7":
						Borrar Pantalla
						Escribir "7)Dado tres numeros indicar si el segundo es el mayor"
						segundoMayor()
						Esperar 3 Segundos
					"8":
						Borrar Pantalla
						Escribir "8)Dado una secuencia de numeros presentar su promedio"
						secuenciaPromedio()
						Esperar 3 Segundos
					"9":
						Borrar Pantalla
						Escribir "9)Numeros amigos"
						numeroAmigos()
						Esperar 3 Segundos
					"10":
						Borrar Pantalla
						Escribir "10)primos gemelos"
						primosGemelos()
						Esperar 3 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 1 Segundos
					De Otro Modo:
						Escribir "Opcion invalidad..."
						Esperar 2 Segundos
				Fin Segun
			FinMientras
		"2":
			opcc =""
			Mientras opcc <> "11" Hacer
				opcc=presentarMenu("************MENU CADENAS**********",menuCadenas,11)
				Segun opcc Hacer
					"1":
						Borrar Pantalla
						Escribir "1)Presentar un nombre caracter por caracter"
						nombreCaracter()
						Esperar 4 Segundos
					"2":
						Borrar Pantalla
						Escribir "2)Presentar el primero, el medio y el ultimo caracter de una frase"
						primeroMedioUltimo()
						Esperar 4 Segundos
					"3":
						Borrar Pantalla
						Escribir "3)Dado dos nombres o frase indicar si son iguales"
						nombresIguales()
						Esperar 4 Segundos
					"4":
						Borrar Pantalla
						Escribir "4)Dadas dos frase indicar la de mayor longitud"
						fraseMayorLongitud()
						Esperar 6 Segundos
					"5":
						Borrar Pantalla
						Escribir "5)Indicar cuantas ,.;: hay en una cadena"
						simbolosCadena()
						Esperar 6 Segundos
					"6":
						Borrar Pantalla
						Escribir "6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
						vocalesConsonatesDigi()
						Esperar 4 Segundos
					"7":
						Borrar Pantalla
						Escribir "7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
						Escribir "Ingrese Frase: "; Sin Saltar leer frase
						contarPalabras(frase)
						Esperar 4 Segundos
					"8":
						Borrar Pantalla
						Escribir "8)Presentar la suma de los digitos de una cedula"
						cedula1()
						Esperar 4 Segundos
					"9":
						Borrar Pantalla
						Escribir "9)Indicar si una palabra es palindroma"
						palindromo()
						Esperar 4 Segundos
					"10":
						Borrar Pantalla
						Escribir "10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
						posicionCaracter()
						Esperar 4 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 1 Segundos
					De Otro Modo:
						Escribir "Opcion invalidad"
						Esperar 2 Segundos
				FinSegun
			FinMientras
		"3":
			opca = ""
			Mientras opca <> "11" Hacer
				opca = presentarMenu("************MENU ARREGLOS*********",menuArreglos,11)
				Segun opca Hacer
					"1": 
						Borrar Pantalla
						Escribir "1)Dado un arreglo cualquiera ingresarlo y presentarlo"
						presentarArreglo()
						Esperar 4 Segundos
					"2":
						Borrar Pantalla
						Escribir "2)Presentar los numeros pares de un arreglo"
						paresArreglo()
						Esperar 3 Segundos
					"3":
						Borrar Pantalla
						Escribir "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
						arregloNegativo()
						Esperar 3 Segundos
					"4":
						Borrar Pantalla
						Escribir "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre"
						arregloNombres()
						Esperar 3 Segundos
					"5":
						Borrar Pantalla
						Escribir "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
						arregloNumerosPromedio()
						Esperar 4 Segundos
					"6":
						Borrar Pantalla
						Escribir "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
						arregloInversa5()
						Esperar 3 Segundos
					"7":
						Borrar Pantalla
						Escribir "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
						arregloPrimeroMedioU()
						Esperar 4 Segundos
					"8":
						Borrar Pantalla
						Escribir "8)Dado un arreglo copiarlo en otro y presentarlo"
						CopiarPesentar()
						Esperar 4 Segundos
					"9":
						Borrar Pantalla
						Escribir "9)Dado 2 arreglos copiar en un otro arreglo la suma de cada elemento de los 2 arreglos"
						copiarArregloSumaElemento()
						Esperar 4 Segundos
					"10":
						Borrar Pantalla
						Escribir "10)Dado una serie de numeros guarda en un arreglo los factoriales"
						arregloFactoriales()
						Esperar 4 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 1 Segundos
					De Otro Modo:
						Escribir "Opcion invalidad";
						Esperar 1 Segundos
				FinSegun
			FinMientras
		"4":
			Escribir "**************************"
			Escribir "Gracias por usar el Sistema :D "
			Esperar 1 Segundos
		De Otro Modo:
			Escribir "Opcion Invalidad"
			Esperar 1 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo
