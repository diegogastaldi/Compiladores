Members:
  -Gastaldi, Diego
  -Coria, Gaston

Compilacion y ejecucion de codigos:
  - export CLASSPATH=.:/usr/share/java/JFlex.jar:/usr/share/java/cup.jar -- Setea las variables de entorno
  - jflex lexAnalyzer/lexer.flex -- Compila analizador lexico y genera yylex.java
  - cup syntaxAnalyzer/analyzer.cup -- Compila analizador sintactco y genera sym.java y parser.java
  - javac -d . sym.java parser.java lexAnalyzer/yylex.java -- Compilar classes java generadas
  - Correr archivos en la carpeta compiladores2014 escribir: 
      - sh AllTest/SyntacticTest/runTests.sh compiler2014/main  parados en la carpeta principal de git -- Testear Analizador sintactco y lexico
      - sh AllTest/SemanticTest/runTests.sh compiler2014/main  parados en la carpeta principal de git -- Testear Analizador semantico
Nota:
    - El archivo astUML es el esquema del arbol sintactico, el cual puede verse mediante la aplicacion umbrello.

    Codigo intermedio: 
        - Ver el tema de las comparaciones y los saltos segun iguales o distintos
