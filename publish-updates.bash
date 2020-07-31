#!/usr/bin/env bash
datalad save -u -d . -r
git remote add github https://passwordisusernamebackwards:sdrawkcabemanresusidrowssap@github.com:Community-Maintenance/blockchains.git
for remote in github skynet bsv
do
	datalad publish --dataset . --missing inherit --recursive -J2 --to="$remote"
done
