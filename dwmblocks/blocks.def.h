//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	// {"Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	60,		0},
	{"",	"moues_battery.py",	600,	0},
	{"",	"sb-volume",	0,	10},
	// {"", "date '+%b %d (%a) %I:%M%p'",					5,		0},
	{"", "date '+%I:%M | %d/%m|'",					60,		0},
};
//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
