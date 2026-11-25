# ParseLog

Allows users to see what site has accessed what files on a web server.

That sentence is the wording from Chris Nystrom's old programs page.
The package is a small HTML front end, a Perl CGI script, and a nightly
shell script that slices a month of Apache-style access log.

## Origin

From Chris Nystrom's old programs page on cactus.org
(`http://www.cactus.org/~nystrom/programs.html`). The download on that page
was the shell archive `parselog.01`.

Programs page capture:

https://web.archive.org/web/20090106010843/http://outserv.cactus.org/~nystrom/programs.html

File capture used (8 Nov 1997; later recaptures were byte-identical):

https://web.archive.org/web/19971108102532id_/http://www.cactus.org/~nystrom/parselog.01

The shar was produced on 24 Oct 1996 by `ccn@snook.cfi.org` with GNU
sharutils 4.2. `archive.sh` is dated Oct 1996.

## License

No license stated in the original.

## Notes

`mkweblog.sh` and `weblog.pl` contain local paths and site-specific filters
from the original deployment. They are unchanged.
