#!usr/local/bin/perl
$currString = <STDIN>;
if($currString =~ /\b((.*red(\s\S+){0,2}\s(pickup|pick up|pick-up)\struck)|(.*(pickup|pick up|pick-up)\struck(\s\S+){0,2}\sred)).+\$(\d[\d,]*(\.\d+)?)\b/){
    print "ACCEPT";
}
else{
    print "REJECT";
}

print "\n";