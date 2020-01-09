%% Copyright 2020 JobTeaser
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.

-module(proto_validator_rules).

-export_type([rules/0]).

-type proto_object() :: service
                      | rpc
                      | message
                      | field.

-type value() :: string() | proto_validator_catalog:type().
-type values() :: list(value()).

-type expr() :: {is, value()}
              | {is_not, value()}
              | {is_any_of, values()}
              | {is_none_of, values()}
              | {has_prefix, string()}
              | {has_suffix, string()}.

-type attribute() :: name
                   | parent_service_name
                   | parent_message_name
                   | type
                   | type_name
                   | input_type
                   | intput_type_name
                   | output_type
                   | output_type_name.

-type predicate() :: {attribute(), expr()}.
-type predicates() :: list(predicate()).

-type message() :: string().

-type rule() :: {message(),
                 proto_object(),
                 predicates(),
                 predicates()}.
-type rules() :: list(rule()).
