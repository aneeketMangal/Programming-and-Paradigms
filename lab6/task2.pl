#!usr/local/bin/perl
open(fh, "micro.txt");
$count = 0;
while(<fh>) 
{ 
    if($_ =~ /\b(java|Java)\b/){
        print "$_";
        $count++;
    }
} 
print "Count is $count lines\n";
close($fh);