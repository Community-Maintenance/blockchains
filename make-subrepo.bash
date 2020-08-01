#!/usr/bin/env bash
if [ "$1" == "" ] || [ "$2" != "" ]
then
	echo "usage: $0 NAME"
	exit -1
fi
datalad create -d . -D "$2" "$1"
pushd "$1" && cp ../.gitattributes .gitattributes && git add .gitattributes && popd
pushd "$1" && git annex initremote skynet chunk=128MiB type=external encryption=none externaltype=siaskynet; popd
datalad create-sibling-github -d "$1" --github-organization Community-Maintenance --github-login passwordisusernamebackwards --github-passwd sdrawkcabemanresusidrowssap blockchains-"$1"
datalad siblings add -d "$1" -s bsv --inherit

