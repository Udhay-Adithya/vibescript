/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#include <string>
#ifndef YYTOKENTYPE
#define YYTOKENTYPE
/* Put the tokens into the symbol table, so that GDB and other debuggers
   know about them.  */
enum yytokentype
{
   IDENTIFIER_TOKEN = 258,
   DIGITS_TOKEN = 259,
   VIBES_TOKEN = 260,
   FEELS_TOKEN = 261,
   MOOD_TOKEN = 262,
   GLOWUP_TOKEN = 263,
   GLOWDOWN_TOKEN = 264,
   PLUS_TOKEN = 265,
   MINUS_TOKEN = 266,
   MULTIPLY_TOKEN = 267,
   DIVIDE_TOKEN = 268,
   LPAREN_TOKEN = 269,
   RPAREN_TOKEN = 270,
   LBRACE_TOKEN = 271,
   RBRACE_TOKEN = 272,
   SEMICOLON_TOKEN = 273,
   COMMA_TOKEN = 274,
   BET_TOKEN = 275,
   NO_CAP_TOKEN = 276,
   BOP_TOKEN = 277,
   SUS_TOKEN = 278,
   OK_BOOMER_TOKEN = 279,
   SLAY_TOKEN = 280,
   FIRE_TOKEN = 281,
   SNATCHED_TOKEN = 282,
   FLEX_TOKEN = 283,
   SPILL_TOKEN = 284,
   SHOOK_TOKEN = 285,
   SALTY_TOKEN = 286,
   TEA_TOKEN = 287,
   CLOUT_TOKEN = 288,
   DEAD_TOKEN = 289,
   GREATER_THAN_TOKEN = 290,
   LESS_THAN_TOKEN = 291
};
#endif
/* Tokens.  */
#define IDENTIFIER_TOKEN 258
#define DIGITS_TOKEN 259
#define VIBES_TOKEN 260
#define FEELS_TOKEN 261
#define MOOD_TOKEN 262
#define GLOWUP_TOKEN 263
#define GLOWDOWN_TOKEN 264
#define PLUS_TOKEN 265
#define MINUS_TOKEN 266
#define MULTIPLY_TOKEN 267
#define DIVIDE_TOKEN 268
#define LPAREN_TOKEN 269
#define RPAREN_TOKEN 270
#define LBRACE_TOKEN 271
#define RBRACE_TOKEN 272
#define SEMICOLON_TOKEN 273
#define COMMA_TOKEN 274
#define BET_TOKEN 275
#define NO_CAP_TOKEN 276
#define BOP_TOKEN 277
#define SUS_TOKEN 278
#define OK_BOOMER_TOKEN 279
#define SLAY_TOKEN 280
#define FIRE_TOKEN 281
#define SNATCHED_TOKEN 282
#define FLEX_TOKEN 283
#define SPILL_TOKEN 284
#define SHOOK_TOKEN 285
#define SALTY_TOKEN 286
#define TEA_TOKEN 287
#define CLOUT_TOKEN 288
#define DEAD_TOKEN 289
#define GREATER_THAN_TOKEN 290
#define LESS_THAN_TOKEN 291

#if !defined YYSTYPE && !defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 24 "parser.y"
{
   int intValue;
   std::string *stringValue;
}
/* Line 1529 of yacc.c.  */
#line 126 "parser.hpp"
YYSTYPE;
#define yystype YYSTYPE /* obsolescent; will be withdrawn */
#define YYSTYPE_IS_DECLARED 1
#define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;
