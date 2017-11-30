prepend(Element,L,[Element|L]).

addElement([],Element,[Element]).
addElement([H|T],Element,[H|ExtendedTail]):-addElement(T,Element,ExtendedTail).

hasLength(0,[]).
hasLength(Len+1, [H|T]) :- hasLength(Len,T).

remove([Element|T],Element,T).
remove([H|T],Element,[H|ReducedTail]) :- remove(T,Element,ReducedTail).