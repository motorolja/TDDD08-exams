% Find out whether a list is a palindrome.
palin(X):- drom(X,[],X).
drom([],X,X).
drom([X|T],Y,Z):- drom(T,[X|Y],Z).
