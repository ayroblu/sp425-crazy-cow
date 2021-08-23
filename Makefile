#############################################################################
# Makefile for building: bin/crazy-cow
# Partially generated by qmake (3.1) (Qt 5.11.3) and then simplified
# Project:  sp425-crazy-cow
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

#CC            = arm-oe-linux-gnueabi-gcc  -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi
#CXX           = arm-oe-linux-gnueabi-g++  -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi
DEFINES       = -DREMARKABLE
CFLAGS        = -pipe  -O3 -pipe -g0 -feliminate-unused-debug-types  --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi -O2 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -pipe  -O3 -pipe -g0 -feliminate-unused-debug-types  --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi -fvisibility=hidden -std=gnu++11 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I. -I.
#LINK          = arm-oe-linux-gnueabi-g++  -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi
LFLAGS        = -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi -Wl,-O1

####### Output directory

OBJECTS_DIR   = obj/

####### Files

SOURCES       = main.cpp hershey-fonts.cpp
OBJECTS       = obj/main.o obj/hershey-fonts.o

TARGET        = bin/crazy-cow

$(TARGET): $(OBJECTS)
	@test -d bin/ || mkdir -p bin/
	$(CXX) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

all: Makefile $(TARGET)

clean:
	-rm -rf $(DESTDIR) $(OBJECTS_DIR)
	-rm -f *~ core *.core

####### Compile

obj/main.o: main.cpp ccow.h
	@test -d obj/ || mkdir -p obj/
	$(CC) -c $(CFLAGS) $(INCPATH) -o obj/main.o main.cpp

obj/hershey-fonts.o: hershey-fonts.cpp ccow.h
	@test -d obj/ || mkdir -p obj/
	$(CC) -c $(CFLAGS) $(INCPATH) -o obj/hershey-fonts.o hershey-fonts.cpp
