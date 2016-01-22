member(X,[X|Y]).
member(X,[Y|Z]):-member(X,Z).
path(X,Y):-path(X,Y,[X]).
path(X,X,Visitedalready).
path(X,Z,Visitedalready):-edge(X,Y), not(member(Y,Visitedalready)), path(Y,Z,[Y|Visitedalready]).
edge(a,b). edge(b,a). edge(a,c).
edge(b,d). edge(b,e). edge(c,e).
edge(d,f). edge(e,f). edge(e,g).