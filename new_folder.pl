#!/usr/bin/env perl -w

#$newdir = "C:/Users/andrea/perl5/test";
$newdir = "./test";
if (-d $newdir) {
    foreach(<C:/Users/andrea/perl5/test/*>) {
		print ;
		unlink ;
		print " --> deleted\n";
	}
	rmdir($newdir);
}

print "I'm making a new folder called $newdir\n";
mkdir $newdir, 0755;

#($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
#$datestring = strftime "%a %b %e %H:%M:%S %Y", localtime;
$datestring = localtime;

$n = 10;
print "and filling it up with $n files\n";
for( $i = 0; $i < $n; $i = $i + 1 ) {
	$newfile="$newdir/myfile$i.txt\n";
	print $newfile;
	open(CIN,">> $newfile") or die "Couldn't open $newfile";
	print CIN "$datestring\n$i\nmiao\n";
	close(CIN);
}

print "and $n more\n";
for( $i = 0; $i < $n; $i = $i + 1 ) {
	$newfile="$newdir/out$i.txt\n";
	print $newfile;
	open(CIN,">> $newfile") or die "Couldn't open $newfile";
	print CIN "$datestring\n$i\nbau\n";
	close(CIN);
}
