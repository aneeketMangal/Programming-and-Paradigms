#!/usr/local/bin/perl
print "______Lists_______________\n\n";
@firstList = ("aneeket", 1487, 23.04);
print "@firstList\n";
$trialVariable = (8, 9, 0)[1];
print "$trialVariable\n";
($first, $second) = ("anee", 71);
print "$first $second\n\n";


print "_______hashes____________\n\n";
%fruits = ('apple' =>'red','banana'=>'yellow','grape' =>'black');
%fruits2 = ('apple','red','banana','yellow','grape','black');
print "colour of apple is $fruits{apple}\n\n";


print "______conditionals______________\n\n";
$mark = 40;
if ($mark>75){
    print "passed with distinction\n";
}
elsif ($mark<35){
    print "failed\n";
}
else {
    print "passed\n";
}

$a = 65;
print "variable a is greater than 10\n\n" if ($a >10);

print "______loops______________\n\n";

for ($i=0; $i<10; $i++){
    print "i=$i\n";
}


foreach $i (a,b,c) {
    print uc $i;
}
print "\n";
foreach $f (keys %fruits ) {
    print "Color of $f is $fruits{$f}\n" ;
}

print "using while loop\n";
$i=0;
while ($i<10){
    print "i=$i\n";
    $i++;
}



print "______input______________\n\n";

print 'enter your name ';
$name=<STDIN>;
print "Welcome $name\n";

print "______default scalar variable______________\n\n";

print "when variable is not specified perl uses default scalar variable ";
print "\$";
print "\_";
print ". Eg.\n";
foreach (a, b, c){
    print uc;
}
print "\n";

foreach (1..10){
    print ;
}
print "\n";


print "______subroutine______________\n\n";
$v1 = 10;
$v2 = 20;
addd($v1, $v2);

sub addd{
    ($a, $b) = @_;
    print $a+$b;
    print "\n";
}




print "______use strict______________\n\n";


# use strict;
my $v1 = 10;
my $v2 = 20;
add($v1, $v2);

sub add{
    my ($a, $b) = @_;
    print $a+$b;
    print "\n";
}

print "______references______________\n\n";
$a = 10;
$ref_toa = \$a;
print "Value of a using reference = $$ref_toa\n";
print "Value of a using it directly = $a\n";
print "Reference of a = $ref_toa\n";

print "______file Handling______________\n\n";
open ($fh, "<", "data.txt");
open ($fh1, ">", "udata.txt");
$cnt = 1;
while ($line = <$fh>){
    print "line$cnt = $line\n";
    $cnt = $cnt+1;
    print $fh1 uc($line);
}

close($fh);
close($fh1);

print "______built-in functions______________\n\n";

print "1. chop\n";
$temp = "Raman";
$lastChar = chop($temp);
print "last character of Raman is $lastChar\n";

print "__________________________\n2. gret\n"; 
@temp = ("aneeket", "all", 23.04);
@a = grep(/^a/, @temp);
print "all words starting with 'a' in the array are: @a\n";

print "__________________________\n3. join\n";
$temp = join("", "Samsung", "galaxy", "mobile");
print "$temp\n"; 

print "__________________________\n4.splice\n";
@temp = ("a", "b", "c", "d", "e");
print "array before splice: @temp\n";
@temp2 = splice(@temp, 3, 4, "x", "y");

print "array after splice: @temp\n";

print "__________________________\n5.split\n";
$temp = 'home/lenovo/username';
print "sample string: $temp\n";

@splittedArray = split("/", $temp);
print "splitted array: @splittedArray\n";
