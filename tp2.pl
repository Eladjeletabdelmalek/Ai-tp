%Q1
belongs(X,[_,L]):-belongs(X,L).
%Q2
belongs(X,[X|L]):-write("yes it is").
%Q3
last_element(X,[L,X]):- write("yes it is").
%Q4
is_panultimte(X,[_|[X,L]]):- write("yes it is").
%Q5
remove_the_kth(1, [_ | Tail], Tail).
remove_the_kth(K, [H | T], [H | R]) :-
    K > 1,
    K1 is K - 1,
    remove_the_kth(K1, T, R).
%Q6
list_length([], 0).
list_length([_ | L], N) :-list_length(L, N1),N is N1 + 1.
%Q7
even([X|L]):-X mod 2=:=0,even(L).
%Q8
concat_list([], L2, L2).
concat_list([X | L1], L2, [X | L3]) :-
    concat_list(L1, L2, L3).
%Q9
palindrome([]):-write("empty list ").
palindrome(L):-reverse(L,L),write("equal").
