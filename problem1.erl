-module(problem1).
-export([my_last/1]).

-include_lib("eunit/include/eunit.hrl").

my_last([]) ->
    throw(empty_list);

my_last([Element]) ->
    Element;

my_last([_|Tail]) ->
    my_last(Tail).


last_element_of_an_empty_list_generates_exception_test() ->
    ?assertThrow(empty_list, problem1:my_last([])).

last_element_of_single_element_list_is_element_test() ->
    ?assertEqual(a, problem1:my_last([a])).

last_element_of_a_non_empty_list_test_is_last_element_test() ->
    ?assertEqual(d, problem1:my_last([a, b, c, d])).
