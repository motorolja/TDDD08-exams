% All corner cases, empty list, 1 element, 2 element, 3 and more elements
l([],[],[]).
l([X],[],[X]).
l([X,Y],[],[X,Y]).
l([X,Y,Z|T],[Z|T2],[X,Y|T3]):-
    l(T,T2,T3).
