# Maciej Witkowiak
#
# Ralph Egas - MEGA65 compatibility

all:
	@echo "*******************"
	@echo "*   Assembling    *"
	@echo "*******************"
	acme -vv geos.tas
	@echo "*******************"
	@echo "*    Crunching    *"
	@echo "*******************"
	pucrunch -f -c64 -x0x5000 geoskern.bin geoskern.puc
	@echo "*******************"
	@echo "* Writing to disk *"
	@echo "*******************"
	cp geosboot_vanilla_template.d81 geosboot.d81
	c1541 <c1541.in >/dev/null

clean:
	rm geosboot.*
	rm geoskern.*
