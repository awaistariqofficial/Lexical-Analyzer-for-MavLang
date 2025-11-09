%{
#include <stdio.h>
#include <string.h>
%}

%%

"launch"        { printf("<keyword_main launch>\n"); }
"lock"          { printf("<keyword_if lock>\n"); }
"elsejet"       { printf("<keyword_else elsejet>\n"); }
"loopback"      { printf("<keyword_for_loop loopback>\n"); }
"runway"        { printf("<keyword_while_loop runway>\n"); }
"mission"       { printf("<keyword_function_def mission>\n"); }
"engage"        { printf("<keyword_function_call engage>\n"); }
"debrief"       { printf("<keyword_return debrief>\n"); }
"eject"         { printf("<keyword_break eject>\n"); }
"afterburn"     { printf("<keyword_increment afterburn>\n"); }
"stall"         { printf("<keyword_pause stall>\n"); }
"signal"        { printf("<keyword_print signal>\n"); }
"readjet"       { printf("<keyword_input readjet>\n"); }
"flightpath"    { printf("<keyword_array flightpath>\n"); }
"target"        { printf("<datatype_int target>\n"); }
"altitude"      { printf("<datatype_float altitude>\n"); }
"airspeed"      { printf("<datatype_string airspeed>\n"); }
"charcode"      { printf("<datatype_char charcode>\n"); }
"switch"        { printf("<datatype_bool switch>\n"); }

"^^"        { printf("<op_increment ^^>\n"); }
"vv"            { printf("<op_decrement vv>\n"); }
"assign"        { printf("<op_assign assign>\n"); }
"++"        { printf("<op_and ++>\n"); }
"+-"          { printf("<op_or +->\n"); }
">"             { printf("<op_gt>\n"); }
"<"             { printf("<op_lt>\n"); }

"{"             { printf("<block_start>\n"); }
"}"             { printf("<block_end>\n"); }
"("           { printf("<paren_open>\n"); }
")"           { printf("<paren_close>\n"); }
";"             { printf("<semicolon>\n"); }
"["           { printf("<array_open>\n"); }
"]"           { printf("<array_close>\n"); }
","             { printf("<comma>\n"); }

\"[^\"]*\"      { printf("<string %s>\n", yytext); }
\'[^\']\'       { printf("<char %s>\n", yytext); }

[0-9]+"."[0-9]+ { printf("<float %s>\n", yytext); }
[0-9]+          { printf("<integer %s>\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("<identifier %s>\n", yytext); }

[\n\t ]+        { }

.               { printf("<unknown %s>\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
