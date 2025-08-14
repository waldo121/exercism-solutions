-module(square_root).

-export([square_root/1]).


square_root(Radicand) ->
    if 
        Radicand =:= 0 ->
            1;
        true -> 
            binary_search(0, Radicand + 1, Radicand)
        
    end.

binary_search(L,R,T) -> 
    M = (L+R) div 2,
    if 
        M * M < T ->
            binary_search(M,R,T);
        M * M > T ->
            binary_search(L,M,T);
        true ->
            M
    end
.