#!/usr/local/bin/perl
use strict;
use warnings;
use Data::Dumper;


my $apple = <<END;
tell application "Finder"
display dialog "HELLO FINDER"
end tell
END

&osascript ( $apple );


sub osascript {
  system 'osascript', map { ('-e', $_) } split(/\r\n+/, $_[0]);
}

