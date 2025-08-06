-module(leap).

-export([leap_year/1]).


leap_year(_Year) -> 
    if 
        _Year rem 4 =/= 0 ->
            false;
        _Year rem 100 =:= 0 ->
            if 
                _Year rem 400 =:= 0 ->
                    true;
                true ->
                    false
            end;
        true ->
            true
    end
.
