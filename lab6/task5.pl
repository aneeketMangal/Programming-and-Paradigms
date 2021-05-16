#!usr/local/bin/perl
open(fh, "micro.txt");
$count = 0;
local $/ = ' ';
while(<fh>) 
{
    if($_ =~/\b((a)([a-z])\3\w*)\b/i){
        $count++;
        print $1;
        print "\n";
    }
} 
print "There are $count words that start with a and have the same 2nd and 3rd character.\n";
close($fh);