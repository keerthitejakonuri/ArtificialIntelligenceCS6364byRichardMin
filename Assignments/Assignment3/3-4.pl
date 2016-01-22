:- use_module(library(clpfd)).

check([X|Y]):- X #\= 0.

sum_finder([],F,0).
sum_finder([X|Xs],F,R):- X1 #= X*F,F1 is F*10,sum_finder(Xs,F1,X2),R #= X1 + X2.

clppuzzle(As + Bs = Cs):-
term_variables([As|Bs],Vars2),
term_variables([Vars2|Cs],Vars),
Vars ins 0..9,
all_different(Vars),
reverse(As,Ad),
reverse(Bs,Bd),
reverse(Cs,Cd),
sum_finder(Ad,1,Ar),
sum_finder(Bd,1,Br),
sum_finder(Cd,1,Cr),
Ar + Br #= Cr,
check(As),
check(Bs),
check(Cs).

