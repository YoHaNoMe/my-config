//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "~/.config/dwm-conf/scripts/dwmaudio",	0,		10},

	{"", "~/.config/dwm-conf/scripts/dwmdate",	1,		0},

	{"", "~/.config/dwm-conf/scripts/dwmmemory",	1,		0},

	{"", "xkb-switch | tr [:lower:] [:upper:]",	0,		11},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
