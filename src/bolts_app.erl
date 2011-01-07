-module(bolts_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    bolts_sup:start_link().

stop(_State) ->
    ok.


-ifdef(TEST).
simple_test() ->
    ok = application:start(bolts),
    ?assertNot(undefined == whereis(bolts_sup)),
    ok = application:stop(bolts),
    ?assert(undefined == whereis(bolts_sup)).
-endif.
