funcion rellena ( m, numeroempleados , variables , n , numeroempleados , variables) //Crearemos la función "rellena" con sus variables correspondientes, con su tipo e indicadas
	definir i , cont , horas como numero; //Definir variables, esto lo haremos siempre al principio de cada fución
	definir nombre , apellido como texto;
	Para i<-0 Hasta numeroempleados-1 Con Paso 1 Hacer //Bucle para la introducción de los datos de los empleados
		Escribir "Datos del ",(i+1)," empleado";
		Escribir "Introduce el nombre del empleado";
		Leer nombre;
		m[i,0]<-nombre;
		Escribir "Introduce los apellidos del empleado";
		leer apellido;
		m[i,1]<-apellido;
		Escribir "Introduce el numero de horas trabajadas este mes";
		leer horas;
		Mientras horas>160 Hacer //Instrucción para hacer que no pueda introducir mas de 160 horas en el programa
			Escribir "No se pueden introducir mas de 160 horas";
			leer horas;
		Fin Mientras
		n[i,2]<- horas;
		Limpiar Pantalla;
	Fin Para
Fin funcion
funcion mostrarnomina( m, numeroempleados , variables , n , numeroempleados , variables) //Crearemos una nueva función "mostrarnomina" con sus variables correspondientes, con su tipo e indicadas
	definir i , dinero como numero; //Definir variables, esto lo haremos siempre al principio de cada fución
	Escribir "Lista de empleados y sueldo";
	Escribir "--------------------------------------------------------";
	Para i<-0 Hasta numeroempleados-1 Con Paso 1 Hacer //Bucle para mostrar las nóminas de cada empleado
		dinero=(n[i,2]*12);
		Escribir "El empleado ",m[i,0]," ",m[i,1];
		Escribir "Horas trabajadas: ",n[i,2],", Sueldo al mes: ",dinero," Euros";
		Escribir "";
	Fin Para
	Escribir "--------------------------------------------------------";
	Escribir "Pulse una tecla para regresar al menú";
	Esperar Tecla;
FinFuncion

Funcion  sorteo  ( m, numeroempleados , variables ) //Crearemos una nueva función "sorteo" con sus variables correspondientes, con su tipo e indicadas
	definir num como numero; //Definir variables, esto lo haremos siempre al principio de cada fución
	num<-azar(numeroempleados); //Seleccionaremos un número al azar
	Escribir "---------------------------------------------------------";
	Escribir "Ahora vamos a hacer el sorteo de una paletilla ibérica entre los empleados";
	Escribir "Presione una tecla para realizar el sorteo";
	Esperar Tecla;
	Escribir "......Ha salido el número: ",num+1;
	Escribir "El empleado ganador es: ",m[num,0]," ",m[num,1]," .... Enhorabuena!!!!";
	Escribir "---------------------------------------------------------";
	Escribir "Pulsa una tecla para regresar al menú";
	Esperar Tecla;
Fin funcion

Algoritmo menu //Este es el menú que se mostrará cada vez que terminemos una función o queramos seleccionar otra, este es el algoritmo principal
	definir numeroempleados , variables , i , rellenar , opciones como numero; //Definir variables, esto lo haremos siempre al principio de cada fución
	definir salir como logico; //Definiremos este valor como booleano o "lógico" en español para cuando este sea verdadero haga la acción asignada
	salir=falso;
	
	numeroempleados<-0;
	variables<-4;
	
	Escribir "Introduce el número de empleados";
	Leer numeroempleados;
	
	dimension m[numeroempleados,variables];  //Definiremos arrays y las declararemos
	dimension n[numeroempleados,variables];
	definir m Como texto;
	definir n Como numero;
	
	Repetir //Creación del menú con opción a salida, por eso el "repetir"
		Escribir "";
		Escribir "Menú principal";
		Escribir "1. Introducir datos de los empleados.";
		Escribir "2. Muestra las nóminas.";
		Escribir "3. Sorteo Navidad.";
		Escribir "4. Salir.";
		Leer opciones;
		
		Segun opciones Hacer //Según el número introducido nos llevará a una función distinta
			1:
				Limpiar Pantalla; //cada vez que seleccionemos una función se limpiará la pantalla
				rellena(m, numeroempleados , variables , n , numeroempleados , variables); //Nos lleva a la función "rellena"
			2:
				Limpiar Pantalla;
				mostrarnomina(m, numeroempleados , variables , n , numeroempleados , variables); //Nos lleva a la función "mostrarnomina"
			3:  
				Limpiar Pantalla;
				sorteo(m, numeroempleados , variables ); //Nos lleva a la función "sorteo"
			4:
				Limpiar Pantalla;
				salir<-verdadero; //esto activará el valor booleano o lógico y hará que nos salgamos del menú
			De Otro Modo: //En el caso de introducir un número no listado en las opciones, este nos lo indicará
				Escribir "Opción no válida ";
		FinSegun
		
	Hasta Que salir=verdadero;
FinAlgoritmo
