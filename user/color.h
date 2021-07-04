#ifndef _COLOR_H_
#define _COLOR_H_

/*Overview
  this head file contains the color and wordtype control
  for printf(). some marco functions are also defined to
  make it easy for the need of print info with different
  color and type.
 */
/* clean cmd */
#define PRINT_CLEAN  writef("\033[2J"); //clean_screen
#define BACK_TO_TOP writef("\033[1;1H"); //clean_screen

/*set_front_color*/
#define RED 1
#define YEL 2
#define BLU 3
#define GRE 4 
#define PRINT_FONT_BLA  writef("\033[30m"); //black
#define PRINT_FONT_RED  writef("\033[31m"); //red
#define PRINT_FONT_GRE  writef("\033[32m"); //green
#define PRINT_FONT_YEL  writef("\033[33m"); //yellow
#define PRINT_FONT_BLU  writef("\033[34m"); //blue
#define PRINT_FONT_PUR  writef("\033[35m"); //puple
#define PRINT_FONT_CYA  writef("\033[36m"); //crayon
#define PRINT_FONT_WHI  writef("\033[37m"); //write

/*set_background_color*/ 
#define PRINT_BACK_BLA  writef("\033[40m"); //black
#define PRINT_BACK_RED  writef("\033[41m"); //red
#define PRINT_BACK_GRE  writef("\033[42m"); //green
#define PRINT_BACK_YEL  writef("\033[43m"); //yellow
#define PRINT_BACK_BLU  writef("\033[44m"); //blue
#define PRINT_BACK_PUR  writef("\033[45m"); //puple
#define PRINT_BACK_CYA  writef("\033[46m"); //crayon
#define PRINT_BACK_WHI  writef("\033[47m"); //write

/*settings*/
#define PRINT_ATTR_REC  writef("\033[0m");  //back_to_default_value
#define PRINT_ATTR_BOL  writef("\033[1m");  //Broad 
#define PRINT_ATTR_LIG  writef("\033[2m");  //half_bright
#define PRINT_ATTR_LIN  writef("\033[4m");  //underline
#define PRINT_ATTR_GLI  writef("\033[5m");  //staring 
#define PRINT_ATTR_REV  writef("\033[7m");  //rev_direction 
#define PRINT_ATTR_THI  writef("\033[22m"); ///role
#define PRINT_ATTR_ULIN  writef("\033[24m");//stop_underlin 
#define PRINT_ATTR_UGLI  writef("\033[25m");//stop_staring 
#define PRINT_ATTR_UREV  writef("\033[27m");//stop_rev_direction 

/*print info of the status of myshell*/
#define PRINT_USERNAME(info)           do{    \
        PRINT_ATTR_BOL                  \
        PRINT_FONT_GRE                  \
        writef("%s@superShell", info);     \
        PRINT_ATTR_REC                  \
        writef(":");                    \
}while (0)

#define PRINT_CURRENT_DIR(info) do{\
        PRINT_ATTR_BOL                 \
        PRINT_FONT_CYA                 \
        writef("%s", info);            \
        PRINT_ATTR_REC                 \
        writef("$ ");                   \
}while (0)

#define PRINT_INIT do{            \
        PRINT_ATTR_BOL                \
        PRINT_FONT_CYA                \
	    writef("\n:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::\n"); \
	    writef("::                                                               ::\n"); \
	    writef("::                    Super Shell  V0.0.0_2                      ::\n"); \
	    writef("::                                                               ::\n"); \
	    writef(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"); \
        PRINT_ATTR_REC                \
}while (0)

#define PRINT_END do{             \
        PRINT_ATTR_BOL                \
        PRINT_FONT_CYA                \
	    writef("\n:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::\n"); \
	    writef("::                                                               ::\n"); \
	    writef("::                        Super Shell exit                       ::\n"); \
	    writef("::                                                               ::\n"); \
	    writef(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"); \
        PRINT_ATTR_REC                \
}while (0)                        

#define PRINT_COLOR(info, color, type) do{    \
        if((color)==1) PRINT_FONT_RED                \
        else if((color)==2) PRINT_FONT_YEL        \
        else if((color)==3) PRINT_FONT_BLU        \
        else if((color)==4) PRINT_FONT_GRE         \
        if ((type) == 0) writef("%s", (info));    \
        else if((type) == 1) writef("%s\n", (info)); \
        else writef("%s ", (info));               \
        PRINT_ATTR_REC                            \
}while (0)

#endif /*color.h*/
