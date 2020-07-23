#!/usr/bin/env bash
datalad save -u -d . -r
for remote in github skynet
do
	datalad --dataset . --missing inherit --recursive -J2 --to="$remote"
done
