-ifndef(deprecate_stacktrace).
-define(STPATTERN(Pattern), Pattern).
-define(STACKTRACE, erlang:get_stacktrace()).
-else.
-define(STPATTERN(Pattern), Pattern:__STACKTRACE).
-define(STACKTRACE, __STACKTRACE).
-endif.
