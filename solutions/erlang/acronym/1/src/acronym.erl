-module(acronym).

-export([abbreviate/1]).


abbreviate(_Phrase) -> 
    lists:map(
        fun(S) -> 
            string:to_upper(lists:nth(1, S))
        end
    , string:tokens(_Phrase, " -_,"))
.
