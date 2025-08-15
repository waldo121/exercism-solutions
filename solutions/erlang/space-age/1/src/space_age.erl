-module(space_age).

-export([age/2]).

-define(EARTH_SECONDS, 31557600).

age(_Planet, _Seconds) -> 
    case _Planet of
        mercury -> (_Seconds / (?EARTH_SECONDS * 0.2408467));
        venus -> (_Seconds / (?EARTH_SECONDS * 0.61519726));
        earth -> (_Seconds / ?EARTH_SECONDS);
        mars ->  (_Seconds / (?EARTH_SECONDS * 1.8808158));
        jupiter -> (_Seconds / (?EARTH_SECONDS * 11.862615));
        saturn -> (_Seconds / (?EARTH_SECONDS * 29.447498));
        uranus -> (_Seconds / (?EARTH_SECONDS * 84.016846));
        neptune -> (_Seconds / (?EARTH_SECONDS * 164.79132))
    end
    .
