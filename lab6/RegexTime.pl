#!usr/local/bin/perl
$inputTime = <STDIN>;
if($inputTime =~ /\b((0?[1-9])|(1[0-2]))\.([0-5][0-9]) [ap]m\b/){
    print "TRUE";
}
else{
    print "FALSE";
}
print "\n";