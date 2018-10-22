%(*) Find the last but one element of a list.
%    (zweitletztes Element, l'avant-dernier élément)

rm_last(X,[X,_]).
rm_last(X,[Y,Z|Tail]):- rm_last(X,[Z|Tail]).
