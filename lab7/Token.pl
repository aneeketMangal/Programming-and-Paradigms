#!/usr/local/bin/perl
print "Input: ";
$in  = <STDIN>;
print "delimiters: ";
$delimiter = <STDIN>;
$length = length $in;

for ($i =0; $i< $length; $i=$i+1){
    $curr = substr($in ,$i, 1);
	if($delimiter=~ /.*$curr.*/){
		print("\n");
	}
	else{
		print($curr);
	}

}
