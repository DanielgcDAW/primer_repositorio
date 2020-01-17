funcion rellena ( m, numeroempleados , variables , n , numeroempleados , variables) //Crearemos la funci�n "rellena" con sus variables correspondientes, con su tipo e indicadas
	definir i , cont , horas como numero; //Definir variables, esto lo haremos siempre al principio de cada fuci�n
	definir nombre , apellido como texto;
	Para i<-0 Hasta numeroempleados-1 Con Paso 1 Hacer //Bucle para la introducci�n de los datos de los empleados
		Escribir "Datos del ",(i+1)," empleado";
		Escribir "Introduce el nombre del empleado";
		Leer nombre;
		m[i,0]<-nombre;
		Escribir "Introduce los apellidos del empleado";
		leer apellido;
		m[i,1]<-apellido;
		Escribir "Introduce el numero de horas trabajadas este mes";
		leer horas;
		Mientras horas>160 Hacer //Instrucci�n para hacer que no pueda introducir mas de 160 horas en el programa
			Escribir "No se pueden introducir mas de 160 horas";
			leer horas;
		Fin Mientras
		n[i,2]<- horas;
		Limpiar Pantalla;
	Fin Para
Fin funcion
funcion mostrarnomina( m, numeroempleados , variables , n , numeroempleados , variables) //Crearemos una nueva funci�n "mostrarnomina" con sus variables correspondientes, con su tipo e indicadas
	definir i , dinero como numero; //Definir variables, esto lo haremos siempre al principio de cada fuci�n
	Escribir "Lista de empleados y sueldo";
	Escribir "--------------------------------------------------------";
	Para i<-0 Hasta numeroempleados-1 Con Paso 1 Hacer //Bucle para mostrar las n�minas de cada empleado
		dinero=(n[i,2]*12);
		Escribir "El empleado ",m[i,0]," ",m[i,1];
		Escribir "Horas trabajadas: ",n[i,2],", Sueldo al mes: ",dinero," Euros";
		Escribir "";
	Fin Para
	Escribir "--------------------------------------------------------";
	Escribir "Pulse una tecla para regresar al men�";
	Esperar Tecla;
FinFuncion

Funcion  sorteo  ( m, numeroempleados , variables ) //Crearemos una nueva funci�n "sorteo" con sus variables correspondientes, con su tipo e indicadas
	definir num como numero; //Definir variables, esto lo haremos siempre al principio de cada fuci�n
	num<-azar(numeroempleados); //Seleccionaremos un n�mero al azar
	Escribir "---------------------------------------------------------";
	Escribir "Ahora vamos a hacer el sorteo de una paletilla ib�rica entre los empleados";
	Escribir "Presione una tecla para realizar el sorteo";
	Esperar Tecla;
	Escribir "......Ha salido el n�mero: ",num+1;
	Escribir "El empleado ganador es: ",m[num,0]," ",m[num,1]," .... Enhorabuena!!!!";
	Escribir "---------------------------------------------------------";
	Escribir "Pulsa una tecla para regresar al men�";
	Esperar Tecla;
Fin funcion

Algoritmo menu //Este es el men� que se mostrar� cada vez que terminemos una funci�n o queramos seleccionar otra, este es el algoritmo principal
	definir numeroempleados , variables , i , rellenar , opciones como numero; //Definir variables, esto lo haremos siempre al principio de cada fuci�n
	definir salir como logico; //Definiremos este valor como booleano o "l�gico" en espa�ol para cuando este sea verdadero haga la acci�n asignada
	salir=falso;
	
	numeroempleados<-0;
	variables<-4;
	
	Escribir "Introduce el n�mero de empleados";
	Leer numeroempleados;
	
	dimension m[numeroempleados,variables];  //Definiremos arrays y las declararemos
	dimension n[numeroempleados,variables];
	definir m Como texto;
	definir n Como numero;
	
	Repetir //Creaci�n del men� con opci�n a salida, por eso el "repetir"
		Escribir "";
		Escribir "Men� principal";
		Escribir "1. Introducir datos de los empleados.";
		Escribir "2. Muestra las n�minas.";
		Escribir "3. Sorteo Navidad.";
		Escribir "4. Salir.";
		Leer opciones;
		
		Segun opciones Hacer //Seg�n el n�mero introducido nos llevar� a una funci�n distinta
			1:
				Limpiar Pantalla; //cada vez que seleccionemos una funci�n se limpiar� la pantalla
				rellena(m, numeroempleados , variables , n , numeroempleados , variables); //Nos lleva a la funci�n "rellena"
			2:
				Limpiar Pantalla;
				mostrarnomina(m, numeroempleados , variables , n , numeroempleados , variables); //Nos lleva a la funci�n "mostrarnomina"
			3:  
				Limpiar Pantalla;
				sorteo(m, numeroempleados , variables ); //Nos lleva a la funci�n "sorteo"
			4:
				Limpiar Pantalla;
				salir<-verdadero; //esto activar� el valor booleano o l�gico y har� que nos salgamos del men�
			De Otro Modo: //En el caso de introducir un n�mero no listado en las opciones, este nos lo indicar�
				Escribir "Opci�n no v�lida ";
		FinSegun
		
	Hasta Que salir=verdadero;
FinAlgoritmo
