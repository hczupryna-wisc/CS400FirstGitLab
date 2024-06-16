JAVAC = javac
JAVA = java
MAIN_CLASS = Main
SRCS = Color.java Main.java
CLASSES = $(SRCS:.java=.class)

all: $(CLASSES)
	$(JAVA) $(MAIN_CLASS)

%.class: %.java
	$(JAVAC) "$<"

clean:
	rm -f $(CLASSES)

.PHONY: all clean
