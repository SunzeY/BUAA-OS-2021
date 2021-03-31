INCLUDES := -I../include/

%.o: %.c
	$(CC) $(DEFS) $(CFLAGS) $(INCLUDES) -c $<
	cat $(DEFS)
	cat $(CC)
%.o: %.S
	$(CC) $(CFLAGS) $(INCLUDES) -c $< 

.PHONY: clean

see: 
	echo $(DEFS)
	echo $(CC)

all: my_driver.o my_cal.o

clean:
	rm -rf *~ *.o


include ../include.mk
