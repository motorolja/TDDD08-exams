% ep/1
% If L is a list, elements >= 2, and contains atleast two consecutive elements.
ep([A,A|_T]).
ep([_A,B|T]):-
    ep([B|T]).

% noep/1
% If L is a list, and contain no two consecutive elements
noep([]).
noep([_X]).
noep([A,B|T]):-
    dif(A,B),
    noep([B|T]).

% ep1/1 If L is a list, and contain only two consecutive elements
% If we have a pair, check so no other pair exists
ep1([A,A|T]):-
    noep([A|T]).
% if two elements does not match, check rest of list, if no pair is found return false
ep1([A,B|T]):-
    dif(A,B),
    ep1([B|T]).
