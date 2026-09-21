/* Medallion (NY Taxi) Palette for dwm */
static const char black[]       = "#101214"; // asphalt background
static const char gray_border[] = "#23272e"; // unfocused window border
static const char gray_text[]   = "#6e7681"; // inactive tag text / status
static const char white[]       = "#e6e8eb"; // foreground
static const char yellow[]      = "#f5b700"; // medallion taxi yellow (focused border/tag)
static const char yellow_text[] = "#101214"; // black text on yellow tag

static const char *colors[][3] = {
	/*               fg           bg      border */
	[SchemeNorm] = { gray_text,   black,  gray_border },
	[SchemeSel]  = { yellow_text, yellow, yellow      },
};
