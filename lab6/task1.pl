#!usr/local/bin/perl
open(fh, "micro.txt");
$count = 0;
while(<fh>) 
{
    if($_ =~ /[vV]/){
        print "$_";
        $count++;
    }
} 
print "The count is $count\n";
close($fh);