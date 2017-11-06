how to run code:
1) flex ass.l
2) yacc -d ass.y
3) gcc lex.yy.c y.tab.c -ll -lm
4)./a.out

Enter the expression:
x, z := ~(m&n), (m<b | m<c);

Note:Semicolon must be needed to execute the inserted expression and to stop please press 'CTRL+C'
