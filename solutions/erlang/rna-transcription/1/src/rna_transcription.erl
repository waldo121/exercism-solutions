-module(rna_transcription).

-export([to_rna/1]).


to_rna(_Strand) -> 
    lists:map(
        fun(N) ->
            case N of
                $G -> $C;
                $C -> $G;
                $T -> $A;
                $A -> $U
            end
        end
    , _Strand)    
.

