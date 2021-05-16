
sub leapYearCheck{
    ($year) = @_;
    if ($year % 400 == 0){
        return 1;
    }
    elsif($year % 100 == 0){
        return 0;
    }
    elsif($year % 4 == 0){
        return 1;
    }
    else{
        return 0;
    }
}



print 'Enter a year:   ';
$year=<STDIN>;
$isLeap = leapYearCheck($year);
if($isLeap == 1){
    print "Leap Year!!\n"
}
else{
    print "Not a leap year!!\n"
}
# print "The required return value:- $isLeap\n"
