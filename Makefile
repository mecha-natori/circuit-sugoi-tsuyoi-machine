bom: circuit-sugoi-tsuyoi-machine-bom-raw.csv
	sed '/,""$$/d' circuit-sugoi-tsuyoi-machine-bom-raw.csv >circuit-sugoi-tsuyoi-machine-bom.csv

cpl: circuit-sugoi-tsuyoi-machine-all-pos.csv
	sed '/^"[ ABE-QSTV-Z]/d' circuit-sugoi-tsuyoi-machine-all-pos.csv >circuit-sugoi-tsuyoi-machine-cpl.csv
	patch -p1 <cpl-rename-col.patch

# vim: noet
