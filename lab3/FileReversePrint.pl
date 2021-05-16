#!/usr/local/bin/perl
$argv = @ARGV;
if($argv == 0){
    print "Error!!\n";
    exit();
}
open ($fh, "<", $ARGV[0]);
@arrayOfLines = ();
while ($line = <$fh>){
    push(@arrayOfLines, $line);
}
$numberOfLines = @arrayOfLines;
for ($i = $numberOfLines - 1; $i>=0; $i--){
    print "@arrayOfLines[$i]";
}

print "----------------------------\nTotal lines: $numberOfLines\n";