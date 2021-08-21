IDRIS2_BOOT=idris2erl
IDRIS2_OUTPUT_EXEC=${CURDIR}/_build/default/bin/idris2erl

PRIV_LIBS_DIR=priv/libs
PRIV_SUPPORT_DIR=priv/support


.PHONY: all setup pull-idris2 build build-exec build-libs build-test-exec prepare-release prepare-erl-source prepare-libs prepare-support test

all: build

setup:
	git remote add idris2 https://github.com/idris-lang/Idris2

pull-idris2:
	git pull --strategy=subtree idris2 master


build: build-exec build-libs

build-exec:
	rebar3 escriptize

build-libs:
	${MAKE} -C idris2 libs TARGET=${IDRIS2_OUTPUT_EXEC}

build-test-exec:
	@${MAKE} -C idris2/tests testbin IDRIS2=${IDRIS2_OUTPUT_EXEC}


prepare-release: prepare-erl-source prepare-libs prepare-support

prepare-erl-source:
	cd idris2 && ${IDRIS2_BOOT} --build idris2api.ipkg --directive "format erl" --directive "prefix Idris.Idris2" --directive "inline 24" --output-dir ../src

prepare-libs:
	mkdir -p ${PRIV_LIBS_DIR}/{prelude,base,contrib,network,erlang}
	cp -R idris2/libs/prelude/build/ttc/ ${PRIV_LIBS_DIR}/prelude
	cp -R idris2/libs/base/build/ttc/ ${PRIV_LIBS_DIR}/base
	cp -R idris2/libs/contrib/build/ttc/ ${PRIV_LIBS_DIR}/contrib
	cp -R idris2/libs/network/build/ttc/ ${PRIV_LIBS_DIR}/network
	cp -R idris2/libs/test/build/ttc/ ${PRIV_LIBS_DIR}/test
	cp -R idris2/libs/erlang/build/ttc/ ${PRIV_LIBS_DIR}/erlang
	find ${PRIV_LIBS_DIR} -type f ! -name "*.ttc" -exec ${RM} "{}" \;

prepare-support:
	mkdir -p ${PRIV_SUPPORT_DIR}
	cp -R idris2/support/ ${PRIV_SUPPORT_DIR}


test:
	@${MAKE} -C idris2/tests only=${only} IDRIS2=${IDRIS2_OUTPUT_EXEC}
