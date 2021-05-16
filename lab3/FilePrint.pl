#!/usr/local/bin/perl
$argv = @ARGV;
if($argv == 0){
    print "Error!!\n";
    exit();
}
open ($fh, "<", $ARGV[0]);
while ($line = <$fh>){
    print $line;
}
close($fh);
