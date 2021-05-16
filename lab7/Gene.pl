#!usr/local/bin/perl
$currString = <STDIN>;
chomp($currString);
if($currString =~ /\b(.)*(ATG)([ACGT]{3})+(TAA|TAG|TGA)(.)*\b/){
    print "ACCEPT";
}
else{
    print "REJECT";
}

print "\n";