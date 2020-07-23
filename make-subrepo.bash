#!/usr/bin/env bash
if [ "$1" == "" ] || [ "$2" != "" ]
then
	echo "usage: $0 NAME"
	exit -1
fi
datalad create -d . -D "$2" "$1"
datalad create-sibling-github -d "$1" --github-organization Community-Maintenance --github-login passwordisusernamebackwards --github-passwd sdrawkcabemanresusidrowssap blockchains-"$1"
