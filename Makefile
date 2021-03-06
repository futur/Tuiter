ALL_TESTS = $(shell find test/ -name '*.test.js' ! -name '._*')

run-tests:
	@./node_modules/.bin/mocha \
		$(TESTFLAGS) \
		$(TESTS) -r should -t 10000

test:
	@$(MAKE) NODE_PATH=lib TESTS="$(ALL_TESTS)" run-tests


.PHONY: test
