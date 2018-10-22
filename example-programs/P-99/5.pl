% Reverse a list.
reve1(X,Y):- reverse3(X,Y,[]).
reverse3([],Y,Y).
reverse3([Xl|Xr],Y,Z):- reverse3(Xr,Y,[Xl|Z]).
