/*
 * operations on IDE disk.
 */

#include "fs.h"
#include "lib.h"
#include <mmu.h>

// Overview:
// 	read data from IDE disk. First issue a read request through
// 	disk register and then copy data from disk buffer
// 	(512 bytes, a sector) to destination array.
//
// Parameters:
//	diskno: disk number.
// 	secno: start sector number.
// 	dst: destination for data read from IDE disk.
// 	nsecs: the number of sectors to read.
//
// Post-Condition:
// 	If error occurred during read the IDE disk, panic. 
// 	
// Hint: use syscalls to access device registers and buffers
void
ide_read(u_int diskno, u_int secno, void *dst, u_int nsecs)
{
	// 0x200: the size of a sector: 512 bytes.
	int offset_begin = secno * 0x200;
	int offset_end = offset_begin + nsecs * 0x200;
	int offset = 0;
    u_int dev = 0x13000000;
    u_char status = 0;
    u_char read_mod = 0;

	while (offset_begin + offset < offset_end) {
        // Your code here
        // error occurred, then panic.

        u_int cur_offset = offset_begin + offset;
        if (syscall_write_dev((u_int)&diskno, dev+0x10, 4)<0) {
            user_panic("IDE_read_error when select by id!\n");
        }

        if (syscall_write_dev((u_int)&cur_offset, dev, 4)<0) {
            user_panic("IDE_read_error when setting offset!\n");
        }

        if (syscall_write_dev((u_int)&read_mod, dev+0x20, 1)<0) {
            user_panic("IDE_read_error when setting read_mod!\n");
        }
        if (syscall_read_dev((u_int)&status, dev+0x30, 1)<0) {
            user_panic("IDE_read_error when getting IDE status!\n");
        }

        if (status==0) {
            user_panic("IDE_read_error for IDE failed!\n");
        }
        if (syscall_read_dev((u_int)(dst+offset), dev+0x400, 0x200)<0) {
            user_panic("IDE_read_error when reading data!\n");
        }

        offset += 0x200;
	}
}


// Overview:
// 	write data to IDE disk.
//
// Parameters:
//	diskno: disk number.
//	secno: start sector number.
// 	src: the source data to write into IDE disk.
//	nsecs: the number of sectors to write.
//
// Post-Condition:
//	If error occurred during read the IDE disk, panic.
//	
// Hint: use syscalls to access device registers and buffers
void
ide_write(u_int diskno, u_int secno, void *src, u_int nsecs)
{
        // Your code here
	int offset_begin = secno*0x200;
	int offset_end = offset_begin + nsecs*0x200;
	int offset = 0;
    u_int dev = 0x13000000;
    u_char status = 0;
    u_char write_mod = 1;

	// DO NOT DELETE WRITEF !!!
	writef("diskno: %d\n", diskno);

	while (offset_begin + offset < offset_end) {
	    // copy data from source array to disk buffer.
        //if error occur, then panic.

        u_int cur_offset = offset_begin + offset;
        if (syscall_write_dev((u_int)&diskno, dev+0x10, 4)<0) {
            user_panic("IDE_write_error when select by id!\n");
        }
        if (syscall_write_dev((u_int)&cur_offset, dev, 4)<0) {
            user_panic("IDE_write_error when setting offset!\n");
        }
        if (syscall_write_dev((u_int)&write_mod, dev+0x20, 1)<0) {
            user_panic("IDE_write_error when setting write_mod!\n");
        }
        if (syscall_read_dev((u_int)&status, dev+0x30, 1)<0) {
            user_panic("IDE_write_error when getting IDE status!\n");
        }

        if (status==0) {
            user_panic("IDE_write_error for IDE failed!\n");
        }
        if (syscall_write_dev((u_int)(src+offset), dev+0x400, 0x200)<0) {
            user_panic("IDE_write_error when writing data!\n");
        }

        offset += 0x200;
    }
}

