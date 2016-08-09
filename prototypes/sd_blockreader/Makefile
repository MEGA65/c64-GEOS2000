# Ralph Egas - MEGA65 SD card block read test

all:
	@echo "*******************"
	@echo "*   Assembling    *"
	@echo "*******************"
	acme -vv blockreader.tas
	@echo "*******************"
	@echo "* Writing to disk *"
	@echo "*******************"
	cp blockreader_template.d81 blockreader.d81
	c1541 <c1541.in >/dev/null

clean:
	rm blockreader.bin
	rm blockreader.d81
