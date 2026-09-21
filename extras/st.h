/* Medallion (NY Taxi) Palette for st (Simple Terminal) */

/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
	/* 8 normal colors */
	[0] = "#101214", /* black (asphalt) */
	[1] = "#e06c75", /* red */
	[2] = "#98c379", /* green */
	[3] = "#f5b700", /* yellow (medallion) */
	[4] = "#61afef", /* blue */
	[5] = "#c678dd", /* magenta */
	[6] = "#56b6c2", /* cyan */
	[7] = "#e6e8eb", /* white */

	/* 8 bright colors */
	[8]  = "#444b53", /* bright black */
	[9]  = "#f2545b", /* bright red */
	[10] = "#a8d388", /* bright green */
	[11] = "#ffd13b", /* bright yellow (canary) */
	[12] = "#70baff", /* bright blue */
	[13] = "#d88aee", /* bright magenta */
	[14] = "#68c9d6", /* bright cyan */
	[15] = "#ffffff", /* bright white */

	/* special colors */
	[256] = "#101214", /* background */
	[257] = "#e6e8eb", /* foreground */
	[258] = "#ffd13b", /* cursor */
};

/* Default colors */
unsigned int defaultfg = 257;
unsigned int defaultbg = 256;
unsigned int defaultcs = 258;
static unsigned int defaultrcs = 258;
