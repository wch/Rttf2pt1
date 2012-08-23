CC = `"$(R_HOME)/bin/R" CMD config CC`
CFLAGS = `"$(R_HOME)/bin/R" CMD config CFLAGS`


# CFLAGS for freetype. Need -c to not run linker (otherwise it doesn't compile)
FT2_CFLAGS = $(CFLAGS) -c

# CFLAGS for ttf2pt1
# Also add the definitions for CFLAGS_FT and LIBS_FT from ttf2pt1's Makefile
TTF2PT1_CFLAGS = $(CFLAGS) -DUSE_FREETYPE -I../freetype2/include -L../freetype2/objs -lfreetype

# Run make in subdirs
all:
	echo "make in freetype2/ ..."
	(cd freetype2; $(MAKE) CC="$(CC)" CFLAGS="$(FT2_CFLAGS)"; $(MAKE) CC="$(CC)" CFLAGS="$(FT2_CFLAGS)")
	echo "make ttf2pt1 in ttf2pt1/ ..."
	(cd ttf2pt1; $(MAKE) CC="$(CC)" CFLAGS="$(TTF2PT1_CFLAGS)" ttf2pt1)

clean:
	echo "make distclean in freetype2/ ..."
	(cd freetype2; $(MAKE) distclean)
	echo "make veryclean in ttf2pt1/ ..."
	(cd ttf2pt1; $(MAKE) veryclean)
