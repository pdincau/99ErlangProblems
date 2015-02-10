-module(problem2).
-export([second_last/1]).

-include_lib("eunit/include/eunit.hrl").

second_last([]) ->
    throw(empty_list);

second_last([_]) ->
    throw(list_too_short);

second_last([SecondLast|[_]]) ->
    SecondLast;

second_last([_|Tail]) ->
    second_last(Tail).


second_last_element_of_an_empty_list_generates_exception_test() ->
    ?assertThrow(empty_list, problem2:second_last([])).

second_last_element_of_single_element_list_generates_exception_test() ->
    ?assertThrow(list_too_short, problem2:second_last([a])).

second_last_element_of_a_at_least_two_elements_list_test() ->
    ?assertEqual(a, problem2:second_last([a, b])).
