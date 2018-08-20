/*
3a
*/
% add appended element to the end of the list
append3([],ShiftedElement,ShiftedElement).
append3([Head|InputList],ShiftedElement,[Head|OutputList]):-
    append3(InputList,ShiftedElement,OutputList).
% lsh/2 left circular shift of a list, remove a element to the left, H, and append it to T
lsh([H|T],O):-
    append3(T,[H],O).

/*
left shift is performed by using lsh([X1,...,Xn],Output).
right shift is performed by using lsh(Output,[X1,...,Xn]).
examples:
Left shift
lsh([1,2,3,4,5],O).
Right shift
lsh(O,[1,2,3,4,5]).
*/

/*
3b
input for arg 1 is on the form:
[t1,..,tn|Z]-Z
[t2,..,tn,t1|V]-V
*/

lshdl([X|List1]-Hole,O):-
    append_dl(List1-Hole,[X|List2]-List2,O-[]).
append_dl(I-M,M-O,I-O).

/*
examples:
lshdl([1,2,3|X]-X,O).
*/
