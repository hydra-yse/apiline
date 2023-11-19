BINARY=apiline
BUILDDIR=build
REPO=github.com/namzug16/apiline

export ARGS
VERSION=`git describe --tags`
BUILD=`date +%FT%T%z`
LDFLAGS=-ldflags "-w -s -X ${REPO}/config.Version=${VERSION} \
				-X ${REPO}/config.Build=${BUILD}"

run:
	go run ${LDFLAGS} . ${ARGS}

build:
	mkdir -p ${BUILDDIR}
	go build ${LDFLAGS} -o ${BUILDDIR}/${BINARY}

install:
	go install ${LDFLAGS}

clean:
	if [ -f ${BUILDDIR}/${BINARY}] ; then rm ${BUILDDIR}/${BINARY}; fi

.PHONY: run install clean 
