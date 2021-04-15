CC = `"$(R_HOME)/bin/R" CMD config CC`
CFLAGS = `"$(R_HOME)/bin/R" CMD config CFLAGS`
LDFLAGS = `"$(R_HOME)/bin/R" CMD config LDFLAGS`
# Run make in subdirs
all:
	echo "make ttf2pt1 in ttf2pt1/ ..."
	(cd ttf2pt1; $(MAKE) CC="$(CC)" CFLAGS="$(CFLAGS)" LIBS="$(LDFLAGS)" ttf2pt1)

clean:
	echo "make veryclean in ttf2pt1/ ..."
	(cd ttf2pt1; $(MAKE) veryclean)
