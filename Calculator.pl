#!/usr/bin/perl
#
#

use strict;
use warnings;

	print "number1: \n";
	$a = <STDIN>;
	print "number2: \n";
	$b = <STDIN>;
	print "operator: [+][-][*][/]\n";
	my $o = <STDIN>;

	if($o eq "+\n"){print $a+$b;}
	if($o eq "-\n"){print $a-$b;}
	if($o eq "*\n"){print $a*$b;}
	if($o eq "/\n"){print $a/$b;}
	print "\n"