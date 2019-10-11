#!/usr/bin/perl -w 

# source code : http://urlregex.com/
# test file: https://mathiasbynens.be/demo/url-regex

my $filename = './SHOULD_MATCH';
if( $#ARGV >= 0 ) 
{
    $filename = $ARGV[0];
}
print("$filename\n");
 
open(FH, '<', $filename) or die $!;

my ($lines, $matches) = (0,0);
 
while(<FH>)
{
    $lines++;
    if( m{^(((ht|f)tp(s?))\://)?(www.|[a-zA-Z].)[a-zA-Z0-9\-\.]+\.(com|edu|gov|mil|net|org|biz|info|name|museum|us|ca|uk)(\:[0-9]+)*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&%\$#\=~_\-]+))*$} )
    {
        print("$_");
	$matches++
    }
}
 
close(FH);

print("N of lines: $lines  N of matches: $matches\n")
