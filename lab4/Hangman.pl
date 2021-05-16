#!/usr/local/bin/perl
@wordList = ("computer","radio","calculator","teacher","bureau","police","geometry","president","subject","country","enviroment","classroom","animals","province","month","politics","puzzle","instrument","kitchen","language","vampire","ghost","solution","service","software","virus","security","phonenumber","expert","website","agreement","support","compatibility","advanced","search","triathlon","immediately","encyclopedia","endurance","distance","nature","history","organization","international","championship","government","popularity","thousand","feature","wetsuit","fitness","legendary","variation","equal","approximately","segment","priority","physics","branche","science","mathematics","lightning","dispersion","accelerator","detector","terminology","design","operation","foundation","application","prediction","reference","measurement","concept","perspective","overview","position","airplane","symmetry","dimension","toxic","algebra","illustration","classic","verification","citation","unusual","resource","analysis","license","comedy","screenplay","production","release","emphasis","director","trademark","vehicle","aircraft","experiment");
@guessed = ();
$gameState = 0;
$continueGame = 1;
$noOfTries = 7;
@displayArray = ();

sub WelcomeScreen{
    print "Welcome to hangman\n";
}
sub randomWordGenerator{
    $randomIndex = rand($#wordList);
    $randomWord = $wordList[$randomIndex];
    return $randomWord;
}

sub main{
    $currentRandomWord = randomWordGenerator;
    $lengthOfCurrentRandomWord = length($currentRandomWord);
    for ($b = 0; $b < $lengthOfCurrentRandomWord; $b = $b + 1){
        $displayArray[$b] = '_';
    }
    while($gameState == 0){
        print "\nYou have $noOfTries chances reamining to guess the word!!!\n";
        displayGraphics();
        print "Choose a letter:      ";
        $guessedLetter = <STDIN>;
        $guessedLetter = substr($guessedLetter, 0, 1);
        if($guessedLetter eq "\n"){
            next;
        }
        checkIfPresent($currentRandomWord, $guessedLetter);
        $gameState = checkGameState($currentRandomWord);
    }
    
}

sub checkGameState{
    ($currentWord) = @_;
    if($noOfTries == 0){
        loseGame();

        print "the correct word was: $currentWord\n";
        return 2;
    }
    else{
        for (my $i=0; $i< length($currentWord); $i++) {
            $temp = substr($currentWord, $i, 1);
            if (grep $_ eq $temp, @guessed) {
                next;
            }
            else{
                return 0;
            }
        }
        winGame();
        print "you guessed the word!!!Hurrah\n";
        return 1;
    }
}


sub checkIfPresent{
    ($currentWord, $choseLetter) = @_;
    $indexOfLetter = index($currentWord, $choseLetter);
    $found = 0;
    foreach $i (@guessed){
        if($i eq $choseLetter){
            print "You already guessed $choseLetter!!!\n";
            $found  = 1;
            last;
        }
    }
    if($found == 0){
        if($indexOfLetter !=-1){
            push @guessed, $choseLetter;
            for ($i=0; $i < length($currentWord); $i++) {
                $temp = substr($currentWord, $i, 1);
                if ($choseLetter eq $temp) {
                    $displayArray[$i] = $choseLetter;
                }
            }
        }
        else{
            push @guessed, $choseLetter;
            print "Wrong guess!!!\n";
            $noOfTries--;
        }
    }
}

sub displayGraphics{
    print "  _______\n";
    print "  |     |\n";

    if($noOfTries == 7){ one();}
    elsif($noOfTries == 6){ two();}
    elsif($noOfTries == 5){ three();}
    elsif($noOfTries == 4){ four();}
    elsif($noOfTries == 3){ five();}
    elsif($noOfTries == 2){ six();}
    elsif($noOfTries == 1){ seven();}

    print "  |                          |Word       : @displayArray \n";
    print "  |                          |Guessed    : "; print "@guessed\n";
    print "  |                          |Length     : "; print 1+ $#displayArray;print "\n";
    print "-----------------\n";  
}


sub one
{
    print "  |\n";
    print "  |\n";
    print "  |\n";
}

sub two
{
    print "  |     O\n";
    print "  |\n";
    print "  |\n";
}

sub three
{
    print "  |     O\n";
    print "  |     |\n";
    print "  |\n";

}

sub four
{
    print "  |     O\n";
    print "  |    \\|\n";
    print "  |\n";
}

sub five
{
    print "  |     O\n";
    print "  |    \\|/\n";
    print "  |\n";
}

sub six
{
    print "  |     O\n";
    print "  |    \\|/\n";
    print "  |    /  \n";
}
sub seven
{
    print "  |     O\n";
    print "  |    \\|/\n";
    print "  |    / \\  \n";
}
sub loseGame {
print "  _______\n";
print "  |     |\n";
print "  |     X\n";
print "  |    \\|/\n";
print "  |    / \\  \n";
print "  |                            You lost the game! Try again.\n";
print "  |                         \n";
print "  |                         \n";
print "-----------------\n"; 
}
sub winGame {
print "  _______\n";
print "  |     |\n";
print "  |\n";
print "  |\n";
print "  |\n";
print "  |     O\n";
print "  |    \\|/                   Hurrah!!You won the game.\n";
print "  |    / \\  \n";
print "-----------------\n"; 
}

WelcomeScreen;
main;

while($continueGame == 1) {
    print "Do you wish to play new game(y/n)";
    $choice = <STDIN>;
    $choice = substr($choice, 0, 1);
    if($choice eq "y"){
        @displayArray = ();
        $noOfTries = 7;
        $gameState = 0;
        @guessed = ();
        main;
    }
    else{
        $continueGame = 0;
    }
}