Nota:
	En lugar de main, elegir la clase principal (con o sin optimizaciones)
	A los print siempre hay que ponerles el formato de lo que va a mostra

Compilacion:
  - export CLASSPATH=.:/usr/share/java/JFlex.jar:/usr/share/java/cup.jar -- Setea las variables de entorno
  - jflex lexAnalyzer/lexer.flex -- Compila analizador lexico y genera yylex.java
  - cup syntaxAnalyzer/analyzer.cup--Compila analizador sintactco y genera sym.java y parser.java (mover estos a su paquete)
  - javac -d . syntaxAnalyzer/sym.java syntaxAnalyzer/parser.java lexAnalyzer/yylex.java -- Compilar classes java generadas
  - Desde la clase principal compilar todos los paquetes.

Ejecucion de test:
   - sh AllTest/syntacticTest/runTests.sh compiler2014/main  parados en la carpeta principal de git -- Testear Analizador sintactco y lexico. 
   - sh AllTest/semanticTest/runTests.sh compiler2014/main  parados en la carpeta principal de git -- Testear Analizador semantico
   - sh AllTest/assembyTest/runTests.sh compiler2014/main  parados en la carpeta principal de git -- Testear Analizador semantico
   - sh AllTest/optimizationTest/runTests.sh compiler2014/main  parados en la carpeta principal de git -- Testear Analizador semantico
   - sh AllTest/test-CTDS/runTests.sh compiler2014/main  parados en la carpeta principal de git -- Testear Analizador semantico

Compilar un programa:
	 - ./ctdsWOpt programName -- Para generar assembler con Optimizaciones
	 - ./ctdsWoutOpt programName -- Para generar assembler sin Optimizaciones

Ejecucion de programa compilado:
	 - ./programName

Members:
  -Gastaldi, Diego
  -Coria, Gaston