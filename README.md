# Archived (2026)

This is Chris Nystrom's 1996 ParseLog web log search, kept as history
and no longer maintained.

**Do not run this on a live server.** `weblog.pl` builds a shell
command from the web form's month and keyword (line 36) and runs it
(line 42), so a visitor can run any command on the server.

# ParseLog

Allows users to see what site has accessed what files on a web server.

That sentence is the wording from Chris Nystrom's old programs page.
The package is a small HTML front end, a Perl CGI script, and a nightly
shell script that slices a month of Apache-style access log.

## Origin

From Chris Nystrom's old programs page (originally on cactus.org).
The download on that page was the shell archive `parselog.01`.

https://nystrom.family/chris/old/programs.html
https://nystrom.family/chris/old/parselog.01
All of Chris's code: https://nystrom.family/chris/code/

The shar was produced on 24 Oct 1996 with GNU
sharutils 4.2. `archive.sh` is dated Oct 1996.

## License

No license stated in the original.

This work is dedicated to the public domain under the Unlicense; see LICENSE.

## Notes

`mkweblog.sh` and `weblog.pl` contain local paths and site-specific filters
from the original deployment. They are unchanged.
