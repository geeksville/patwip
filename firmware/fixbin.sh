
# duplicate the exception vectors into page 0
arm-none-eabi-objcopy -O binary firmware.elf firmware.bin
head --bytes=4K firmware.bin > vectors.bin 
cat vectors.bin firmware.bin >fixed.bin

