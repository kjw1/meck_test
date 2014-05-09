-module(chat_adapter_locator).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.
 
-ifdef(TEST).
locator_test_() ->
  {setup,
    % Setup
    fun() -> ok end,
    % Cleanup
    fun(_) -> ok end,
    % Tests
    fun(_Data) ->
      [ 
        fun() -> ok end
      ]
    end
  }.
-endif.

