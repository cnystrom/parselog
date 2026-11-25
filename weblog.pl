#!/usr/local/bin/perl

$webmaster = "webmaster@cfi.org";
$LOGDIR = "/d3/httpd/logs";

if ($ENV{'REQUEST_METHOD'} eq 'POST') {

  read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});

  @pairs = split(/&/, $buffer);

  foreach $pair (@pairs) {
    ($name, $value) = split (/=/, $pair);
    $value =~ tr/+/ /;
    $value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
    $FORM{$name} = $value;
  }

  $MONTH = $FORM{Month};
  $KEYWORD = $FORM{Keyword};

  print "Content-type: text/html\n\n";
  print "<HTML>\n";
  print "<body bgcolor=#ffffff>\n";
  print "<HEAD>\n";
  print "<TITLE>Web Log Search Results</TITLE>\n";
  print "</HEAD>\n";
  print "<H1>\n";
  print "<IMG ALIGN=middle BORDER=0 SRC=\"/images/CFIsmall.gif\">\n";
  print "Web Log Search Results</H1>\n";
  print "<BODY>\n";

  print "Month = $MONTH<BR>\n";
  print "Keyword = $KEYWORD<BR>\n";

  $COMMAND = "/bin/grep $KEYWORD $LOGDIR/$MONTH |";

  print "Command = $COMMAND<BR>\n";

  print "<CODE>\n";
 
  open(INPUT, $COMMAND) || die "Couldn't run grep: $!<BR>\n";

  while (<INPUT>) {
    chop;
    print "$_<BR>\n";
  }

  close(INPUT);
 
  print "</CODE>\n";

  print "<P>\n";
  print "</BODY>\n";
  print "</HTML>\n";
}
