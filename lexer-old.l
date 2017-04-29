/*Definations FIDELL
*/

space [\t]+
newline [\n]+
digit[0-9]

doubleequal '=='
sum ‘+‘
dol ‘$’
arrow ‘->’
dash ‘—’
lparan ‘(‘
rparan ‘)’
lcparan ‘{’
rcparan ‘}’
equal ‘=’
colon ‘:’
comma ‘,’


alphabetic [a-zA-Z]

alphanumeric({alphabetic} | {digit})ar

integer {digit}+

string ('{alphanumeric}*')

boolean (true|false)

float {digit}+','{digit}+

summation lparan(integer sum)* integer rparan | (integer sum)* integer | lparan(float sum)* float rparan | (float sum)* float   

%%

int main(){
	
	yylex();

	return 0;
}
