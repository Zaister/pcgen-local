#!/bin/sh
if [[ -z "$1" ]]
then
	BRANCH="work"
else
	BRANCH="${1}"
fi

pushd pcgen >/dev/null
OLDBRANCH=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
if [[ ${BRANCH} = ${OLDBRANCH} ]]
then
	git checkout ${1}
fi
if [[ $? != 0 ]]
then
	popd >/dev/null
	exit
fi

sh pcgen.sh

if [[ ${BRANCH} = ${OLDBRANCH} ]]
then
	git checkout ${OLDBRANCH}
fi
popd >/dev/null
