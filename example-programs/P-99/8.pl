% (**) Eliminate consecutive duplicates of list elements.
%    If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
%
%    Example:
%    ?- compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%    X = [a,b,c,a,d,e]
compress([X,X|T],Y):- compress([X|T],Y).
compress([X|T],[X|Y]):- compress(T,Y).
compress([],[]).
compress([X],[X]).
