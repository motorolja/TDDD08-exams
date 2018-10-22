%Find the number of elements of a list.
num_ele([],0).
num_ele([X],1).
num_ele([_|T],Z):- num_ele(T,Y), Z is Y + 1.
