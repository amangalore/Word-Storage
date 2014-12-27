#Shrey Valia & Aman Mangalore
#svalia & aamangal
#11/19/14
#cmps012b
#auxlib.java
#given Makefile
 
JAVASRC    = xref.java auxlib.java Tree.java Queue.java
SOURCES    = ${JAVASRC} Makefile
ALLSOURCES = ${SOURCES}
MAINCLASS  = xref
CLASSES    = ${patsubst %.java, %.class, ${JAVASRC}}
 
all: ${CLASSES}
 
%.class: %.java
        javac -Xlint $<
 
clean:
        rm -f *.class
 
test: all
        java xref test.txt
 
.PHONY: clean all test