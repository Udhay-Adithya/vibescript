%{
#include "parser.tab.h"
#include "tokens.h"
#include <cstdio>
#include <string>
%}

%option yylineno

BET         "bet"
NO_CAP      "no cap"
BOP         "bop"
SUS         "sus"
OK_BOOMER   "ok boomer"
SLAY        "slay"
FIRE        "fire"
SNATCHED    "snatched"
FLEX        "flex"
SPILL       "spill"
SHOOK       "shook"
SALTY       "salty"
TEA         "tea"
CLOUT       "clout"
DEAD        "woke|big yikes"
FEELS       "feels"

EQUAL       "="
GREATER_THAN ">"
LESS_THAN   "<"
PLUS        "+"
MINUS       "-"
MULTIPLY    "*"
DIVIDE      "/"
LPAREN      "("
RPAREN      ")"
LBRACE      "{"
RBRACE      "}"
SEMICOLON   ";"
COMMA       ","
GLOWUP      "\+\+"
GLOWDOWN    "--"

%%
[ \t]+                  ;
{BET}                   { return BET_TOKEN; }
{NO_CAP}                { return NO_CAP_TOKEN; }
{BOP}                   { return BOP_TOKEN; }
{SUS}                   { return SUS_TOKEN; }
{OK_BOOMER}             { return OK_BOOMER_TOKEN; }
{SLAY}                  { return SLAY_TOKEN; }
{FIRE}                  { return FIRE_TOKEN; }
{SNATCHED}              { return SNATCHED_TOKEN; }
{FLEX}                  { return FLEX_TOKEN; }
{SPILL}                 { return SPILL_TOKEN; }
{SHOOK}                 { return SHOOK_TOKEN; }
{SALTY}                 { return SALTY_TOKEN; }
{TEA}                   { /* Ignore comments */ while (yytext[0] != '\n' && yylex() != 0); }
{CLOUT}                 { return CLOUT_TOKEN; }
{DEAD}                  { return DEAD_TOKEN; }
{FEELS}                 { return FEELS_TOKEN; }

{EQUAL}                 { return MOOD_TOKEN; }
{GREATER_THAN}         { return GREATER_THAN_TOKEN; }
{LESS_THAN}            { return LESS_THAN_TOKEN; }
{GLOWUP}               { return GLOWUP_TOKEN; }
{GLOWDOWN}             { return GLOWDOWN_TOKEN; }
{PLUS}                 { return PLUS_TOKEN; }
{MINUS}                { return MINUS_TOKEN; }
{MULTIPLY}             { return MULTIPLY_TOKEN; }
{DIVIDE}               { return DIVIDE_TOKEN; }
{LPAREN}               { return LPAREN_TOKEN; }
{RPAREN}               { return RPAREN_TOKEN; }
{LBRACE}               { return LBRACE_TOKEN; }
{RBRACE}               { return RBRACE_TOKEN; }
{SEMICOLON}            { return SEMICOLON_TOKEN; }
{COMMA}                { return COMMA_TOKEN; }

"\"([^\"\\]|\\.)*\""    { 
                          yylval.stringValue = new std::string(yytext + 1);
                          yylval.stringValue->pop_back();
                          return VIBES_TOKEN; 
                        }
[0-9]+                  { 
                          yylval.intValue = std::stoi(yytext); 
                          return DIGITS_TOKEN; 
                        }
[a-zA-Z_][a-zA-Z0-9_]*  { 
                          yylval.stringValue = new std::string(yytext); 
                          return IDENTIFIER_TOKEN; 
                        }

\n                      ;  
.                       { printf("Unknown character: %s\n", yytext); return -1; }
%%

int yywrap() {
    return 1;
}
