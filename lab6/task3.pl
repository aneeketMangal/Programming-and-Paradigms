#!usr/local/bin/perl
open(fh, "micro.txt");
$count = 0;
while(<fh>) 
{ 
    @strings = split(' ', $_);
    foreach(@strings){
        if($_ =~ /\b([a-zA-Z]+[A-Z][a-zA-Z]+)\b/){
            @answer=$_=~m/\b([a-zA-Z]+[A-Z][a-zA-Z]+)\b/g;
            print $1;
            print "\n";
            $count++;
        }
    }
} 
print "There are $count words with a capital letter in the middle.\n";
close($fh);