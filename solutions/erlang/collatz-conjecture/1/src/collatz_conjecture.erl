-module(collatz_conjecture).

-export([steps/1]).

steps(N, Count) -> 
    if
        N =< 0 ->
            error(badarg);
        N =:= 1 ->
            Count;
        N rem 2 =:= 0 ->
            steps(N div 2, Count + 1);
        true ->
            steps((N*3)+1, Count + 1)
    end
.

steps(N) -> 
    steps(N,0)
.
