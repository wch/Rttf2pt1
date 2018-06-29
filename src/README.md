This directory contains sources for utility programs used by the fonts
package.

## ttf2pt1

The sources for ttf2pt1 have the following changes from the original version 3.4.4:

* The file `ft.c` was modified so that, when compiled with the `-pedantic` flag, the compiler doesn't complain about an empty file.

* The file `bitmap.c` was modified to suppress a warning from the `-Wparentheses` flag. The diff is below:

```diff
diff --git a/src/ttf2pt1/bitmap.c b/src/ttf2pt1/bitmap.c
index 43c020f..2c3ebc4 100644
--- a/src/ttf2pt1/bitmap.c
+++ b/src/ttf2pt1/bitmap.c
@@ -1591,7 +1591,7 @@ bmp_outline(
                        ge = ge->frwd;
                        if(ge == cge->next && !stepmore)
                            delaystop = 1; /* consider the first gentry again */
-                   } while(stepmore || ge != cge->next ^ delaystop);
+                   } while(stepmore || (ge != cge->next) ^ delaystop);
                    /* see if there is an unfinished line left */
                    if(count != 1) {
 #if 0
```
