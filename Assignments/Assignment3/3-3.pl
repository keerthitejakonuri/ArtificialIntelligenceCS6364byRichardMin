path(state(X,Y,Z),state(X,Y,Z),L):-write(state(X,Y,Z)),write("\n").

path(state(X,Y,Z),state(X1,Y1,Z1),L) :- X \== table,halt(X,M,Xc),move(state(on(M,Xc),Y,Z),state(Xc,on(M,Y),Z)),not(member(state(Xc,on(M,Y),Z),L)),addstate(state(on(M,Xc),Y,Z),L,L1),path(state(Xc,on(M,Y),Z),state(X1,Y1,Z1),L1),write(state(X,Y,Z)),write("\n").

path(state(X,Y,Z),state(X1,Y1,Z1),L) :- X \== table,halt(X,M,Xc),move(state(on(M,Xc),Y,Z),state(Xc,Y,on(M,Z))),not(member(state(Xc,Y,on(M,Z)),L)),addstate(state(on(M,Xc),Y,Z),L,L1),path(state(Xc,Y,on(M,Z)),state(X1,Y1,Z1),L1),write(state(X,Y,Z)),write("\n").

path(state(X,Y,Z),state(X1,Y1,Z1),L) :- Y \== table,halt(Y,M,Yc),move(state(X,on(M,Yc),Z),state(on(M,X),Yc,Z)),not(member(state(on(M,X),Yc,Z),L)),addstate(state(X,on(M,Yc),Z),L,L1),path(state(on(M,X),Yc,Z),state(X1,Y1,Z1),L1),write(state(X,Y,Z)),write("\n").

path(state(X,Y,Z),state(X1,Y1,Z1),L) :- Y \== table,halt(Y,M,Yc),move(state(X,on(M,Yc),Z),state(X,Yc,on(M,Z))),not(member(state(X,Yc,on(M,Z)),L)),addstate(state(X,on(M,Yc),Z),L,L1),path(state(X,Yc,on(M,Z)),state(X1,Y1,Z1),L1),write(state(X,Y,Z)),write("\n").

path(state(X,Y,Z),state(X1,Y1,Z1),L) :- Z \== table,halt(Z,M,Zc),move(state(X,Y,on(M,Zc)),state(on(M,X),Y,Zc)),not(member(state(on(M,X),Y,Zc),L)),addstate(state(X,Y,on(M,Zc)),L,L1),path(state(on(M,X),Y,Zc),state(X1,Y1,Z1),L1),write(state(X,Y,Z)),write("\n").

path(state(X,Y,Z),state(X1,Y1,Z1),L) :- Z \== table,halt(Z,M,Zc),move(state(X,Y,on(M,Zc)),state(X,on(M,Y),Zc)),not(member(state(X,on(M,Y),Zc),L)),addstate(state(X,Y,on(M,Zc)),L,L1),path(state(X,on(M,Y),Zc),state(X1,Y1,Z1),L1),write(state(X,Y,Z)),write("\n").

move(state(on(X,NewX),OldY,Z),state(NewX,on(X,OldY),Z)).
move(state(on(X,NewX),Y,OldZ),state(NewX,Y,on(X,OldZ))).
move(state(OldX,on(Y,NewY),Z),state(on(Y,OldX),NewY,Z)).
move(state(X,on(Y,NewY),OldZ),state(X,NewY,on(Y,OldZ))).
move(state(OldX,Y,on(Z,NewZ)),state(on(Z,OldX),Y,NewZ)).
move(state(X,OldY,on(Z,NewZ)),state(X,on(Z,OldY),NewZ)).

addstate(A,B,[A|B]).

halt(on(X,Y),X,Y).



















