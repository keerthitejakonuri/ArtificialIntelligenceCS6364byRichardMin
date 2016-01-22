path(X):- path(0:0,[0:0],X).
path(2:X,Visited,Visited).
path(State,Visited,Path):- action(State,NewState), not(member(NewState,Visited)), path(NewState,[NewState|Visited],Path).
member(X,[X|Y]).
member(X,[Y|Z]):- member(X,Z).