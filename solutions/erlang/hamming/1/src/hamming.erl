-module(hamming).

-export([distance/2]).
% Handle uneven length
distance(Strand1, Strand2) when length(Strand1) =/= length(Strand2) ->
    {error,badarg};

distance(_Strand1, _Strand2) -> 
    Zipped = lists:zip(_Strand1, _Strand2),
    lists:foldl(
        fun({A,B}, Acc) ->
             if A =/= B -> Acc + 1; 
                true -> Acc
             end
            end,
        0,
        Zipped
    )
    .
