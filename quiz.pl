#!/usr/bin/env perl

use strict;
use warnings;
no warnings 'void';

use Data::Dumper;

$\ = "\n";

my $a = 5, 7; # $a is 5

my $b = (5, 7); # $b is 7

my ($c) = 5, 7; # $c is 5

my ($d) = (5, 7); # $d is 5

my $e = {
        A => (sub {;})->(),
        B => (sub {;})->(),
}; # $e is { A => 'B'}

my $f = @{[5, 7]}; # $f is 2

my $g = (sub {;})->(); # $g is undef

my $h = @{[(sub {;})->()]}; # $h is 0

my $i = @{[(sub {undef;})->()]}; # i is 1

foreach my $x ('a' .. 'i') {
        print sprintf(
                '[%s] is %s',
                $x,
                Dumper(eval qq/\$$x/),
        );
}
