/*
 * Copyright (C) 2001 MontaVista Software Inc.
 * Author: Jun Sun, jsun@mvista.com or jsun@junsun.net
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */

#include <printf.h>
#include <pmap.h>

int main()
{
	printf("main.c:\tmain is start ...\n");

	mips_init();
	panic("main is over is error!");
	get_page_status(0x00002000); 
	get_page_status(0x00003000); 
	get_page_status(0x00001000); 
	return 0;
}
