%{
#include "tokens.h"
#include <iostream>
#include <string>

extern int yylex();
extern int yylineno;
void yyerror(const char* s);
int yydebug = 1;
%}

// Token declarations
%token IDENTIFIER_TOKEN DIGITS_TOKEN VIBES_TOKEN
%token FEELS_TOKEN MOOD_TOKEN GLOWUP_TOKEN GLOWDOWN_TOKEN
%token PLUS_TOKEN MINUS_TOKEN MULTIPLY_TOKEN DIVIDE_TOKEN
%token LPAREN_TOKEN RPAREN_TOKEN LBRACE_TOKEN RBRACE_TOKEN
%token SEMICOLON_TOKEN COMMA_TOKEN BET_TOKEN NO_CAP_TOKEN
%token BOP_TOKEN SUS_TOKEN OK_BOOMER_TOKEN SLAY_TOKEN
%token FIRE_TOKEN SNATCHED_TOKEN FLEX_TOKEN SPILL_TOKEN
%token SHOOK_TOKEN SALTY_TOKEN TEA_TOKEN CLOUT_TOKEN
%token DEAD_TOKEN
%token GREATER_THAN_TOKEN LESS_THAN_TOKEN

%union {
    int intValue;
    std::string *stringValue;
}

%type <intValue> DIGITS_TOKEN
%type <stringValue> IDENTIFIER_TOKEN VIBES_TOKEN

%%
program:
    statements
    ;

statements:
    statement
    | statements statement
    ;

statement:
    expression SEMICOLON_TOKEN
    | BET_TOKEN expression LBRACE_TOKEN statements RBRACE_TOKEN
    | NO_CAP_TOKEN LBRACE_TOKEN statements RBRACE_TOKEN
    ;

expression:
    IDENTIFIER_TOKEN MOOD_TOKEN expression
    | DIGITS_TOKEN
    | VIBES_TOKEN
    | FEELS_TOKEN
    ;
%%

void yyerror(const char* s) {
    std::cerr << "Parse error: " << s << " at line " << yylineno << std::endl;
}
