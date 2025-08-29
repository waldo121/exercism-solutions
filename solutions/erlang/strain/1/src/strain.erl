-module(strain).

-export([keep/2, discard/2]).

keep(_Fn, _List) ->
  lists:filter(_Fn, _List).

discard(_Fn, _List) ->
  lists:filter(fun(N) -> not _Fn(N) end, _List).

