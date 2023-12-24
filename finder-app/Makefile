TARGET=writer

build:
	$(CROSS_COMPILE)gcc -g -Wall -c *.c -o $(TARGET).o
	$(CROSS_COMPILE)gcc -g -Wall $(TARGET).o -o $(TARGET)

clean:
	rm -rf *.o *.elf $(TARGET) *.map