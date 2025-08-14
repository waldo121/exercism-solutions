-module(bob).

-export([response/1]).


is_letter(_C) ->
    ($A =< _C andalso _C =< $Z) orelse
    ($a =< _C andalso _C =< $z )
    .

response(_String) -> 
    Trimmed = string:trim(_String),
    TrimmedLength = string:length(Trimmed),
    if 
        TrimmedLength =:= 0 ->
            "Fine. Be that way!";
        true ->
            Last = lists:nth(string:length(Trimmed), Trimmed),
            Uppercased = string:to_upper(Trimmed),
            HasLetter = lists:any(fun is_letter/1,Trimmed),
            if 
                HasLetter ->
                    if 
                        (Uppercased =/= Trimmed) and (Last =:= $?) ->
                            "Sure.";
                        (Uppercased =:= Trimmed) and (Last =/= $?) ->
                            "Whoa, chill out!";
                        (Uppercased =:= Trimmed) and (Last =:= $?) ->
                            "Calm down, I know what I'm doing!";
                        true -> 
                            "Whatever."
                    end;
                Last =:= $? ->
                    "Sure.";
                true -> 
                    "Whatever."
            end
    end
    .
