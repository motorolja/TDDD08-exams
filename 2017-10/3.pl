t(a).
t(b).
t(c).
t(f(X,Y)):- t(X), t(Y).
t(g(X,Y)):- t(X), t(Y).

% rep/2 rep(X,Y) if X is a term according to the specification, Y is the same term with function g replaced with h
rep(a,[a]).
rep(b,[b]).
rep(c,[c]).
rep(f(X,Y),f(Xr,Yr)):- rep(X,Xr), rep(Y,Yr).
rep(g(X,Y),h(Xr,Yr)):- rep(X,Xr), rep(Y,Yr).

% naive version of tr/2 with append/3, dont care about g/h
tr(a,[a]).
tr(b,[b]).
tr(c,[c]).
tr(f(X,Y),[f,'('|L]):-
    tr(X,Xr),
    tr(Y,Yr),
    append(Xr,[','],Ox),
    append(Ox,Yr,Oy),
    append(Oy,[')'],L).

% fast version tr2/2 with difference lists, dont care about g/h
tr2(X,L):- trd(X,L,[]).

trd(a,[a|L],L).
trd(b,[b|L],L).
trd(c,[c|L],L).

trd(f(X,Y),[f,'('|A],L):-
    trd(X,A,[','|B]),
    trd(Y,B,[')'|L]).
