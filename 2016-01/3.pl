% add appended element to the end of the list
append3([],ShiftedElement,ShiftedElement).
append3([Head|InputList],ShiftedElement,[Head|OutputList]):-
    append3(InputList,ShiftedElement,OutputList).
% lsh/2 left circular shift of a list, remove a element to the left, H, and append it to T
lsh([H|T],O):-
    append3(T,[H],O).
