
all: build

dialyzer:
	rebar3 dialyzer

build:
	rebar3 escriptize

test:
	rebar3 eunit

cover:
	rebar3 eunit --cover
	rebar3 cover

clean:
	$(RM) -r _build

.PHONY: all dialyzer build test cover clean
