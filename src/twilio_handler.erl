-module(twilio_handler).
 
 
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

-ifdef(TEST).
handle_message_test() ->
  ?debugVal(meck:new(chat_adapter_locator)),
  meck:unload(chat_adapter_locator).
-endif.
