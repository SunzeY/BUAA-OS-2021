#include "lib.h"
#include "color.h"
#include <args.h>

int debug_ = 0;

int first_run;
int history_size = 0;

//
// get the next token from string s
// set *p1 to the beginning of the token and
// *p2 just past the token.
// return:
//	0 for end-of-string
//	> for >
//	| for |
//	w for a word
//
// eventually (once we parse the space where the nul will go),
// words get nul-terminated.
#define WHITESPACE " \t\r\n"
#define SYMBOLS "<|>&;()${}"
#define ENVIR
#define RDONLY

struct envar {
    char name[1024];
    char value[1024];
    u_int type;
};

struct envar envars[100];

void
cleanbuf(char* buff) {
    int i = 0;
    for(i=0; buff[i++]=0;buff[i]!=0);
}

void
init_envar()
{
    int i = 0;
    int r = 0;
    /*for (i=0; i<99; i++) {
        envars[i].name = (char*) malloc((sizeof char)*1024);
        envars[i].value = (char*) malloc((sizeof char)*1024);
        envars[i].type = ENVIR;
    }*/
    char buff[1024];
    int fd = open("/profile", O_RDONLY);
    int k = 0;
    while (i<100) {
        if ((r = read(fd, buff, 11)) == 11) {
            cleanbuf(buff);
            k = 0;
            read(fd, buff, 1);
            while(buff[k++]!='=') {
                read(fd, (buff + k), 1);
            }
            buff[k-1] = 0;
            strcpy(envars[i].name, buff);
            read(fd, (buff+k), 1);
            cleanbuf(buff);
            k = 0;
            read(fd, buff, 1);
            while(buff[k++]!='\"') {
                read(fd, (buff+k), 1);
            }
            buff[k-1] = 0;
            strcpy(envars[i].value, buff);
            read(fd, buff, 1);
            cleanbuf(buff);
            //writef("name: %s , value: %s\n", envars[i].name, envars[i].value);
            i++;
        }
        else {
            break;
        }
    }
}

char*
get_envar_value(char* name)
{
    int i = 0;
    int size = 0;
    for (i=0; i<100; i++) {
        //writef("%s %s\n", envars[i].name, name);
        //writef("%s\n", envars[i].value);
        if (strcmp(envars[i].name, name) == 0) {
            /*size = strcpy(value, envars[i].value);
            *(value+size) = 0;
            writef("%s\n", envars[i].value);
            return;*/
            return envars[i].value;
        }
    }
    char* value = "\0";
    return value;
}

void
set_envar_value(char* name, char* value) {
    int i = 0;
    int size = 0;
    int k = 0;
    writef("name : %s\n", name);
    for(i=0; i<100; i++) {
        if (envars[i].name[0] == '\0') break;
        if (strcmp(envars[i].name, name) == 0) {
            cleanbuf(envars[i].value);
            strcpy(envars[i].value, value);
            int fd = open("/profile", O_WRONLY);
            for (k =0; k<100; k++) {
                if (envars[k].name[0] == 0) {
                    break;
                }
                fwritef(fd, "declare -x %s=\"%s\"\n", envars[k].name, envars[k].value);
            }
            fwritef(fd, "\0");
            close(fd);
            return;
        }
    }

    strcpy(envars[i].name, name);
    strcpy(envars[i].value, value);
    int fd = open("/profile", O_WRONLY | O_APPEND);
    fwritef(fd, "declare -x %s=\"%s\"\n", name, value);
    close(fd);
}

void
remove_envar(char* name) {
    int i = 0; 
    int tag = 0;
    for(i= 0; i<100; i++) {
        if (envars[i].name[0] == '\0') break;
        if (strcmp(name, envars[i].name) == 0 && tag == 0) {
            tag = 1;
            writef("find and unset...\n");
            envars[i] = envars[i+1];
        } else if (tag == 1) {
            envars[i] = envars[i+1];
        }
    }
    /*for(i=0; i<100; i++) {
        if (envars[i].name[0] == '\0') break;
        writef("%s | %s\n", envars[i].name, envars[i].value);
    }*/
    //envar[i+1].name[0] = '\0';
    if (tag==0) return;
    int k = 0;
    int fd = open("/profile", O_WRONLY);
    for (k =0; k<100; k++) {
        if (envars[k].name[0] == '\0') {
            break;
        }
        fwritef(fd, "declare -x %s=\"%s\"\n", envars[k].name, envars[k].value);
    }
    fwritef(fd, "\0");
    close(fd);
    //envars[i-1].name[0] = '\0';
    //set_envar_value(envars[0].name, envars[0].value);
}

char buffer[4096];

void
show_envars_value()
{
    int i = 0;
    // writef("in show_envars_value...\n");
    //cleanbuf(buffer);
    for(i=0; i<100; i++) {
        if (envars[i].name[0] == '\0') break;
        writef("declare -x %s=\"%s\"\n", envars[i].name, envars[i].value);
    }
    //int fd = open("/profile", O_RDONLY);
    // writef("open successfully!");
    //while (read(fd, buffer, sizeof buffer) > 0){
       // writef("%s", buffer);
    //}
}

int
_gettoken(char *s, char **p1, char **p2)
{
	int t;

	if (s == 0) {
		//if (debug_ > 1) writef("GETTOKEN NULL\n");
		return 0;
	}

	//if (debug_ > 1) writef("GETTOKEN: %s\n", s);

	*p1 = 0;
	*p2 = 0;

	while(strchr(WHITESPACE, *s))
		*s++ = 0;
	if(*s == 0) {
	//	if (debug_ > 1) writef("EOL\n");
		return 0;
	}
	if(strchr(SYMBOLS, *s)){
		t = *s;
		*p1 = s;
		*s++ = 0;
		*p2 = s;
//		if (debug_ > 1) writef("TOK %c\n", t);
		return t;
	}
	*p1 = s;
	while(*s && !strchr(WHITESPACE SYMBOLS, *s))
		s++;
	*p2 = s;
	if (debug_ > 1) {
		t = **p2;
		**p2 = 0;
//		writef("WORD: %s\n", *p1);
		**p2 = t;
	}
	return 'w';
}

int
gettoken(char *s, char **p1)
{
	static int c, nc;
	static char *np1, *np2;

	if (s) {
		nc = _gettoken(s, &np1, &np2);
		return 0;
	}
	c = nc;
	*p1 = np1;
	nc = _gettoken(np2, &np1, &np2);
	return c;
}

// do internal command
void do_incmd(char* argv0, char** argv) {
    int p = 0;
    if (strcmp(argv[0], "export") == 0) {
        writef("1");
        show_envars_value();
    } else if (strcmp(argv[0], "set") == 0) {
        while (argv[1][p++] != '=');
        argv[1][p-1] = '\0';
        //writef(">>>%s %s\n", argv[1], (argv[1] + p)); 
        set_envar_value(argv[1], (argv[1]+p));
    } else if (strcmp(argv[0], "unset") == 0) {
        remove_envar(argv[1]);
    }
}

#define MAXARGS 16
void
runcmd(char *s)
{
	char *argv[MAXARGS], *t;
	int argc, c, i, r, p[2], fd, rightpipe;
	int fdnum;
	rightpipe = 0;
	gettoken(s, 0);
again:
	argc = 0;
	for(;;){
		c = gettoken(0, &t);
		switch(c){
		case 0:
            if (strcmp(argv[0], "cd") == 0 ||
                strcmp(argv[0], "export") == 0 ||
                strcmp(argv[0], "set") == 0 ||
                strcmp(argv[0], "unset") == 0) {
                // internal command
                do_incmd(argv[0], argv); 
                return;
            } else {
			    goto runit;
            }
		case 'w':
			if(argc == MAXARGS){
				writef("too many arguments\n");
				exit();
			}
			argv[argc++] = t;
			break;
		case '<':
			if(gettoken(0, &t) != 'w'){
				writef("syntax error: < not followed by word\n");
				exit();
			}
			// Your code here -- open t for readinig,
            fd = open(t, O_RDONLY);
            if (r<0) {
                writef("case '<' : open t failed\n");
                exit();
            }

			// dup it onto fd 0, and then close the fd you got.
            dup(fd, 0);
            close(fd);
			// user_panic("< redirection not implemented");
			break;
		case '>':
			if(gettoken(0, &t) != 'w'){
				writef("syntax error: < not followed by word\n");
				exit();
			}
			// Your code here -- open t for writing,
            fd = open(t, O_WRONLY);
            if (r<0) {
                writef("case '>' : open t failed\n");
                exit();
            }

			// dup it onto fd 1, and then close the fd you got.
			dup(fd, 1);
            close(fd);
            //user_panic("> redirection not implemented");
			break;
		case '|':
			// Your code here.
			// 	First, allocate a pipe.
			//	Then fork.
			//	the child runs the right side of the pipe:
			//		dup the read end of the pipe onto 0
			//		close the read end of the pipe
			//		close the write end of the pipe
			//		goto again, to parse the rest of the command line
			//	the parent runs the left side of the pipe:
			//		dup the write end of the pipe onto 1
			//		close the write end of the pipe
			//		close the read end of the pipe
			//		set "rightpipe" to the child envid
			//		goto runit, to execute this piece of the pipeline
			//			and then wait for the right side to finish
		    r = pipe(p);
            if (r < 0) {
                user_panic("BUG: in runcmd: pipe: %e\n", r);
            }
            r = fork();
            if (r<0) {
                writef("| not implemented (fork)\n");
                exit();
            }
            if (r==0) { //this is child.
                dup(p[0], 0); // p[0] becomes stdin.
                close(p[0]);
                close(p[1]);
                goto again;
            }
            if (r > 0) { //this is parent.
                dup(p[1], 1);// p[1] becomes stdout.
                close(p[1]);
                close(p[0]);
                rightpipe = r;
                goto runit;
            }
            //user_panic("| not implemented");
			break;
		}
	}

runit:
	if(argc == 0) {
		if (debug_) writef("EMPTY COMMAND\n");
		return;
	}
	argv[argc] = 0;
	if (1) {
		//writef("[%08x] SPAWN:", env->env_id);
		for (i=0; argv[i]; i++)
			writef(" %s", argv[i]);
		writef("\n");
	}
	if ((r = spawn(argv[0], argv)) < 0)
		writef("spawn %s: %e\n", argv[0], r);
	close_all();
	if (r >= 0) {
		if (debug_) writef("[%08x] WAIT %s %08x\n", env->env_id, argv[0], r);
		wait(r);
	}
	if (rightpipe) {
		if (debug_) writef("[%08x] WAIT right-pipe %08x\n", env->env_id, rightpipe);
		wait(rightpipe);
	}

	exit();
}

char history_cmd[MAXLINE];

void 
flush(char* buf) {
    int size = (int) strlen(buf);
    int k = 0;
    for (k=0; k<size; k++) {
        buf[k] = 0;
        fwritef(1, "\b");
        fwritef(1, " ");
        fwritef(1, "\b");
    }
    size = (int) strlen(history_cmd);
    for (k=0; k<size; k++) {
        history_cmd[k] = 0;
    }
}

int historyget(int i, char* p)
{
    int fd = open("/.history", O_RDONLY);
    int k = 0;
    for (k=0; k<=i; k++) {
        read_line(fd, p, MAXLINE);
    }
    close(fd);
}

void
readline(char *buf, u_int n)
{
	int i, r;
    int index = history_size-1;
    char sp[1];
	r = 0;

	for(i=0; i<n; i++){
		if((r = read(0, buf+i, 1)) != 1){
			if(r < 0)
				writef(1, "read error: %e", r);
			exit();
		}
        if (buf[i] == 0x1b) {
            fwritef(1, "0");
            i++;
            if ((r = read(0, (buf+i), 1) != 1)) {
                 fwritef(1, "wrong when press up!\n");
            }
            i++;
            //fwritef(1, ">>>>>>%x\n", buf[i]);
            if ((r = read(0,(buf+i), 1) != 1)) {
                fwritef(1, "wrong when press up!\n");
            }
            //fwritef(1, ">>>>>>%x\n", buf[i]);
            if (buf[i] == 0x41) {
                //fwritef(1, ">>>>>>>>>>>>>>>>>>[>>>>\n");
                //fwritef(1, "1");
                flush(buf);
                //fwritef(1, "num = %d\n", index);
                historyget(index, history_cmd);
                //fwritef(1, "cmd = %s\n", history_cmd);
                strcpy(buf, history_cmd);
                fwritef(1, " %s", buf);
                i = strlen(buf)-1;
                // setting index to its next proper position
                index = ((index-1)<0? (index-1+history_size) : (index-1))%history_size;
            }
            else if (buf[i] == 0x42) {
                flush(buf);
                historyget(index-1, history_cmd);
                strcpy(buf, history_cmd);
                fwritef(1, " %s", buf);
                // setting index to its next proper position
                index = (index+1)%history_size;
                i = strlen(buf)-1;
            }
            //fwritef(1, ">>>>>>>%x\n", buf[i]);
        } else {
            index = history_size - 1;   
        } 
        //fwritef(1, "%x\n", buf[i]);
        /*if(buf[i] == 0x1b) {
            writef("got\n");
           if ((r = read(0, buf+i, 1) != 1)) {
               writef("wrong when press up!\n");
           }
           writef("%x\n", r);
           if ((r = read(0, buf+i, 1) != 1)) {
               writef("wrong when press up!\n");
           }
        }*/
		if(buf[i] == 0x7f){
            //user_panic("got \b !\n");
			if(i > 0) {
                //fwritef(1, "\x1b[1D\x1b[K");
				i -= 2;
			} else
				i = 0;
		}
		if(buf[i] == '\r' || buf[i] == '\n'){
			buf[i] = 0;
			return;
		}
	}
	writef("line too long\n");
	while((r = read(0, buf, 1)) == 1 && buf[0] != '\n')
		;
	buf[0] = 0;
}	

char buf[1024];

void
usage(void)
{
	writef("usage: sh [-dix] [command-file]\n");
	exit();
}

void record_history(char* buf, int n) {
    if (first_run == 0) {
        // create file ".history"
        user_create("/.history", 0);
        first_run = 1;
    }

    // record current cmd into .history
    int fd = open("/.history", O_WRONLY | O_APPEND);
    int k = write(fd, buf, n);
    if (k < n) {
        writef("something wrong when recording history!\n");
    }
    fd = open("/.history", O_WRONLY | O_APPEND);
    k = write(fd, "\n", 1);
    if (k < 1) {
        writef("something wrong when recording history!\n");
    }
    close(fd);
    history_size += 1;
}

void
umain(int argc, char **argv)
{
	int r, interactive, echocmds;
	interactive = '?';
	echocmds = 0;
    PRINT_INIT;
    //writef("\b \b\b \b\b \b\b \b\n");
    writef("\n");
	ARGBEGIN{
	case 'd':
		debug_++;
		break;
	case 'i':
		interactive = 1;
		break;
	case 'x':
		echocmds = 1;
		break;
	default:
		usage();
	}ARGEND

	if(argc > 1)
		usage();
	if(argc == 1){
		close(0);
		if ((r = open(argv[1], O_RDONLY)) < 0)
			user_panic("open %s: %e", r);
		user_assert(r==0);
	}
	if(interactive == '?')
		interactive = iscons(0);
    init_envar();
	for(;;){
		if (interactive){
            writef("\n");
            char* info = get_envar_value("USER");
            PRINT_USERNAME(info);
            PRINT_CURRENT_DIR("/");
            //writef(" ");
        }
		readline(buf, sizeof buf);
	    record_history(buf, sizeof buf);
        char argv0[100];
        int m = -1;
        strcpy(argv0, buf);
        while (argv0[++m] != ' ' && argv0[m] != '\0');
        argv0[m] = 0;
		if (buf[0] == '#')
			continue;
		if (echocmds)
			fwritef(1, "# %s\n", buf);
        if (strcmp(argv0, "cd") == 0 ||
            strcmp(argv0, "export") == 0 ||
            strcmp(argv0, "set") == 0 ||
            strcmp(argv0, "unset") == 0) {
            // internal command
            runcmd(buf);
       
        } else {
		    if ((r = fork()) < 0)
			    user_panic("fork: %e", r);
		    if (r == 0) {
			    runcmd(buf);
			    exit();
			    return;
		    } else
		    	wait(r);
        }
	}
}

