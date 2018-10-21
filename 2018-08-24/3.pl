% nol/1 describing the lists of numbers.
% (So [77;3], [] are such lists, and [a;3] is not.)
nol([]).
nol([H|T]):- number(H), nol(T).

% nlg/1 describing the lists of numbers in which a number is immediately
% followed by a greater number.
% (So [3;7], [4;3;7;6] are such lists, and [ ], [3;3;2] are not.)
%nlg([X,Y]):- number(X), number(Y), <(X,Y).
nlg([X,Y|_T]):- number(X), number(Y), <(X,Y).
nlg([X,Y|T]):- number(X), nlg([Y|T]).

% nls/1 describing the lists of distinct numbers, sorted in ascending order.
%(So [3;7;8], [3], [] are such lists, and [3;3;4] is not.
nls([]). % Empty list, return true
nls([X]):- number(X). % Single number, return true
nls([X,Y|T]):- number(X), number(Y), <(X,Y), nls([Y|T]). % 2 or more numbers, check head and recursive call with the list without head.

% top/2 finding the greatest number in a nonempty list of numbers (which may be not distinct).
% top(L=List of elements, O=greatest number so far)
top([X],X):- number(X). % if only one element
top([X|T],X):- number(X), top(T,Y), <(Y,X). % if the Head variable X is greater than any number Y in the list.
top([X|T],Y):- number(X), top(T,Y), <(X,Y). % if a number Y is greater then X and any other number in the list.
