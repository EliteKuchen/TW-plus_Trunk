/* session - holds all the settings for this bam session */
struct SESSION
{
	const char *exe;
	const char *name;
	int threads;
	int verbose;
	int simpleoutput;
	
	unsigned int cache_hash;

	int lua_backtrace;
	int lua_locals;
	
	int report_color;
	int report_bar;
	int report_steps;
	
	volatile int abort; /* raised to 1 when it's time to give up */
};

void install_abort_signal();

/* global session structure */
extern struct SESSION session;
