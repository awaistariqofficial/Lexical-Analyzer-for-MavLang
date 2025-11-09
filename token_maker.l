%{
#include <stdio.h>
#include <string.h>

int line_num = 1;  // To keep track of line numbers
%}

%%

"launch"        { printf("Line %d: <keyword_main> → %s\n", line_num, yytext); }
"lock"          { printf("Line %d: <keyword_if> → %s\n", line_num, yytext); }
"elsejet"       { printf("Line %d: <keyword_else> → %s\n", line_num, yytext); }
"loopback"      { printf("Line %d: <keyword_for_loop> → %s\n", line_num, yytext); }
"runway"        { printf("Line %d: <keyword_while_loop> → %s\n", line_num, yytext); }
"mission"       { printf("Line %d: <keyword_function_def> → %s\n", line_num, yytext); }
"engage"        { printf("Line %d: <keyword_function_call> → %s\n", line_num, yytext); }
"debrief"       { printf("Line %d: <keyword_return> → %s\n", line_num, yytext); }
"eject"         { printf("Line %d: <keyword_break> → %s\n", line_num, yytext); }
"afterburn"     { printf("Line %d: <keyword_increment> → %s\n", line_num, yytext); }
"stall"         { printf("Line %d: <keyword_pause> → %s\n", line_num, yytext); }
"signal"        { printf("Line %d: <keyword_print> → %s\n", line_num, yytext); }
"readjet"       { printf("Line %d: <keyword_input> → %s\n", line_num, yytext); }
"flightpath"    { printf("Line %d: <keyword_array> → %s\n", line_num, yytext); }
"target"        { printf("Line %d: <datatype_int> → %s\n", line_num, yytext); }
"altitude"      { printf("Line %d: <datatype_float> → %s\n", line_num, yytext); }
"airspeed"      { printf("Line %d: <datatype_string> → %s\n", line_num, yytext); }
"charcode"      { printf("Line %d: <datatype_char> → %s\n", line_num, yytext); }
"switch"        { printf("Line %d: <datatype_bool> → %s\n", line_num, yytext); }

"^^"            { printf("Line %d: <op_increment> → %s\n", line_num, yytext); }
"vv"            { printf("Line %d: <op_decrement> → %s\n", line_num, yytext); }
"assign"        { printf("Line %d: <op_assign> → %s\n", line_num, yytext); }
"++"            { printf("Line %d: <op_and> → %s\n", line_num, yytext); }
"+-"            { printf("Line %d: <op_or> → %s\n", line_num, yytext); }
">"             { printf("Line %d: <op_gt> → %s\n", line_num, yytext); }
"<"             { printf("Line %d: <op_lt> → %s\n", line_num, yytext); }

"{"             { printf("Line %d: <block_start> → %s\n", line_num, yytext); }
"}"             { printf("Line %d: <block_end> → %s\n", line_num, yytext); }
"("             { printf("Line %d: <paren_open> → %s\n", line_num, yytext); }
")"             { printf("Line %d: <paren_close> → %s\n", line_num, yytext); }
";"             { printf("Line %d: <semicolon> → %s\n", line_num, yytext); }
"["             { printf("Line %d: <array_open> → %s\n", line_num, yytext); }
"]"             { printf("Line %d: <array_close> → %s\n", line_num, yytext); }
","             { printf("Line %d: <comma> → %s\n", line_num, yytext); }

\"[^\"]*\"      { printf("Line %d: <string> → %s\n", line_num, yytext); }
\'[^\']\'       { printf("Line %d: <char> → %s\n", line_num, yytext); }

[0-9]+"."[0-9]+ { printf("Line %d: <float> → %s\n", line_num, yytext); }
[0-9]+          { printf("Line %d: <integer> → %s\n", line_num, yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Line %d: <identifier> → %s\n", line_num, yytext); }

[\n]+          { line_num++; }   // Increment line number
[\t ]+         { }               // Ignore spaces and tabs

.               { printf("Line %d: <unknown> → %s\n", line_num, yytext); }

%%

int main() {
    yylex();
    return 0;
}
