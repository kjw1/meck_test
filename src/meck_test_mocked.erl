-module(meck_test_mocked).

-include_lib("eunit/include/eunit.hrl").


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
         banana = some_fun(Input)
        end
      ]
    end
  }.

some_fun(SomeInput) ->
  timer:sleep(1),
  SomeInput.

