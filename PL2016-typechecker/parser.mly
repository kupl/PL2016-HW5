%{

%}

%token <int> NUM
%token TRUE FALSE
%token <string> ID
%token INT PLUS MINUS STAR SLASH EQUAL EQUALEQUAL LE LT GE GT NOT AND OR IF THEN
ELSE WHILE DO READ PRINT SEMICOLON LET IN COMMA ISZERO LETREC PROC SET NEWREF DEREF
SETREF BEGIN END
%token LBRACE RBRACE LBLOCK RBLOCK LPAREN RPAREN EOF

%left SEMICOLON
%left OR
%left AND
%left LT LE GT GE EQUALEQUAL
%left PLUS MINUS
%left STAR SLASH 
%right NOT 


%start program
%type <Type.program> program
%%

program:
    exp EOF { $1 }
    ;

exp:
    NUM { Type.CONST $1 }
  | ID { Type.VAR $1 }
  | exp PLUS exp  { Type.ADD ($1,$3) }
  | exp MINUS exp  { Type.SUB ($1,$3) }
  | exp STAR exp  { Type.MUL ($1,$3) }
  | exp SLASH exp  { Type.DIV ($1,$3) }
  | ISZERO exp { Type.ISZERO $2 }
  | IF exp THEN exp ELSE exp { Type.IF ($2,$4,$6) }
  | LET ID EQUAL exp IN exp { Type.LET ($2,$4,$6) }
  | LETREC ID LPAREN ID RPAREN EQUAL exp IN exp { Type.LETREC ($2,$4,$7,$9) }
  | PROC LPAREN ID RPAREN exp { Type.PROC ($3,$5) } 
  | LPAREN exp exp RPAREN { Type.CALL ($2,$3) }
  | LPAREN exp RPAREN { $2 }
%%

let parse_error s = print_endline s
