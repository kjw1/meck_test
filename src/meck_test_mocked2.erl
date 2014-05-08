-module(meck_test_mocked2).

-export([some_fun/1]).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

-ifdef(TEST).
some_fun_test_() ->
  {setup,
    fun() ->
      banana
    end,
    fun(_Arg) ->
      ok
    end,
    fun(Input) ->
      [ fun() ->
         banana = ?debugVal(some_fun(Input))
        end
      ]
    end
  }.
-endif.

some_fun(SomeInput) ->
  timer:sleep(1),
  SomeInput.

