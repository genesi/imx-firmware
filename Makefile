# Makefile to generate firmware binaries

OBJS = vpu/vpu_fw_imx51.bin vpu/vpu_fw_imx53.bin

all: $(OBJS)

%.bin: %.bin.ihex
	@echo building firmware binary $@
	@${CROSS_COMPILE}objcopy -Iihex -Obinary $*.bin.ihex $*.bin
	
