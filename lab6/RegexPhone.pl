#!usr/local/bin/perl
$currPhoneNumber = <STDIN>;
if($currPhoneNumber =~ /\b([0-9]{3})([ -]?)([0-9]{3})\2([0-9]{4})\b/){
    print "TRUE";
}
else{
    print "FALSE";
}

print "\n";