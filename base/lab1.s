#---------------------------------------------------------------
# Assignment:           <number>
# Due Date:             <month> <day>, <year>
# Name:                 <name>
# Unix ID:              <id>
# Lecture Section:      <section>
# Instructor:           <prof>
# Lab Section:          <section>
# Teaching Assistant:   <ta>
#---------------------------------------------------------------

#---------------------------------------------------------------
#
# This program prompts the user to enter in an integer value.
# After getting the integer, the program flips its endianness:
# little-endian ints become big-endian & big-endian vice-versa.
#
# Register Usage:
#
#		v0: used to make syscalls
#       a0: holds the flipped value to be printed.
#		t0: move the rightmost byte to the leftmost position
#		t1: move the next byte to the next leftmost position
#		t2: move the next byte to the second from rightmost
#		t3: move the leftmost byte to the rightmost position
#
#---------------------------------------------------------------

.data

.text

main:
	li	$v0, 5				# syscall readint
	syscall					# $v0 <- 0xWWXXYYZZ

	li	$v0, 1				# syscall printint
	syscall

	jr	$ra					# Return
