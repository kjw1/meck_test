-module(meck_test_mocker).

-include_lib("eunit/include/eunit.hrl").

do_something_test() ->
  meck:new(meck_test_mocked),
  meck:expect(meck_test_mocked, some_fun, fun(cheese) -> cheese end),
  {talked_about, cheese} = do_something(cheese),
  meck:unload(meck_test_mocked).

do_something(SomeInput) ->
  io:format("I got some input!~n"),
  io:format("Let me tell you about it!~n"),
  io:format("~p~n", [meck_test_mocked:some_fun(SomeInput)]),
  {talked_about, SomeInput}.
