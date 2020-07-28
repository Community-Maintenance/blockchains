#!/usr/bin/env bash
datalad save -u -d . -r
for remote in github skynet bsv
do
	datalad publish --dataset . --missing inherit --recursive -J2 --to="$remote"
done
