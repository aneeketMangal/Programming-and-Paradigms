#!usr/local/bin/perl
open(fh, "micro.txt");
$count = 0;
while(<fh>) 
{ 
    if($_ =~ /"([^'\s-]+|[^'\s\-]+\s+[^'\s-]+)"/){
        print $1;
        print "\n";
        $count++;
    }
} 
print "The count is $count \n";
close($fh);