VER := 1

bom: circuit-sugoi-tsuyoi-machine-bom-raw.csv
	sed '/,""$$/d' circuit-sugoi-tsuyoi-machine-bom-raw.csv >circuit-sugoi-tsuyoi-machine-bom.csv

cpl: circuit-sugoi-tsuyoi-machine-all-pos.csv
	sed '/^"[ ABE-QSTV-Z]/d' circuit-sugoi-tsuyoi-machine-all-pos.csv >circuit-sugoi-tsuyoi-machine-cpl.csv
	patch -p1 <cpl-rename-col.patch

garber: out/circuit-sugoi-tsuyoi-machine-B_Cu.gbl out/circuit-sugoi-tsuyoi-machine-B_Mask.gbs out/circuit-sugoi-tsuyoi-machine-B_Paste.gbp out/circuit-sugoi-tsuyoi-machine-B_Silkscreen.gbo out/circuit-sugoi-tsuyoi-machine-Edge_Cuts.gm1 out/circuit-sugoi-tsuyoi-machine-F_Cu.gtl out/circuit-sugoi-tsuyoi-machine-F_Mask.gts out/circuit-sugoi-tsuyoi-machine-F_Paste.gtp out/circuit-sugoi-tsuyoi-machine-F_Silkscreen.gto out/circuit-sugoi-tsuyoi-machine-NPTH-drl_map.gbr out/circuit-sugoi-tsuyoi-machine-NPTH.drl out/circuit-sugoi-tsuyoi-machine-PTH-drl_map.gbr out/circuit-sugoi-tsuyoi-machine-PTH.drl
	zip -r circuit-sugoi-tsuyoi-machine-v$(VER).zip out/

# vim: noet
