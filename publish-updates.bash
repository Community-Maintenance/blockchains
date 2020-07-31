#!/usr/bin/env bash
datalad save -u -d . -r
datalad siblings configure -s bsv -d . --url bsv://1CQKe1veVPUaxpeYXeqAHnA4SJQpnbfZ2v/blockchains.git --pushurl bsv://L3zZQetoHkdMrsiEPtZEks1Ct98d56ZLxDBiatLpRBJA7Y1xELyB/blockchains.git --no-annex-info -r
datalad siblings configure -s github -d . --url  https://github.com/Community-Maintenance/blockchains.git --pushurl https://passwordisusernamebackwards:sdrawkcabemanresusidrowssap@github.com/Community-Maintenance/blockchains.git --no-annex-info -r
for remote in github skynet bsv
do
	datalad publish --dataset . --missing inherit --recursive -J2 --to="$remote"
done
