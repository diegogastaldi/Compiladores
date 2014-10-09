Members:
  -Gastaldi, Diego
  -Coria, Gaston

Compilacion y ejecucion de codigos:
  - export CLASSPATH=.:/usr/share/java/JFlex.jar:/usr/share/java/cup.jar -- Setea las variables de entorno
  - jflex lexAnalyzer/lexer.flex -- Compila analizador lexico y genera yylex.java
  - cup syntaxAnalyzer/analyzer.cup--Compila analizador sintactco y genera sym.java y parser.java (mover estos a su paquete)
  - javac -d . syntaxAnalyzer/sym.java syntaxAnalyzer/parser.java lexAnalyzer/yylex.java -- Compilar classes java generadas
      - sh AllTest/SyntacticTest/runTests.sh compiler2014/main  parados en la carpeta principal de git -- Testear Analizador sintactco y lexico
      - sh AllTest/SemanticTest/runTests.sh compiler2014/main  parados en la carpeta principal de git -- Testear Analizador semantico
      

Nota:
  - diferencia entre 64 y 32()
  - DOCUMENTACION

llamadas externas en aassembler  (Parametros en registros -> Llamadas internas). 
float.