Ubuntu Homebrew
==============
See the original [homepage] for more information on Homebrew.

Why are you doin this?
=====================

Because I install a lot from source straight from github in Ubuntu. Erlang is one of those and is thus the first formula I got working.

Also, to see if the idea of mixing a source based package manager along side apt doesn't screw everything up.

And becuase I can!

WARNING
=======

Until this message is gone from the README I consider homebrew for Ubuntu to only work on my system. Much of what was done to get it working was simply using the Erlang formula to discover places where it depends on knowing OSX specific details or found information about the system that I simply replaced with hardcoded values.

Ubuntu
------
$ sudo apt-get install build-essential libncurses5-dev openssl libssl-dev curl

Modified one-liner from main Homebrew README
--------------------------------------------

curl -LsSf https://github.com/tsloughter/homebrew/tarball/master | sudo /usr/bin/tar -zxvf -C/usr/local --strip 1


But what packages are available?
--------------------------------

* [Erlang][erlang]
* [Rebar][rebar]
* [Agner][agner]
* PCRE
* Nginx

Who the hell are you?
=====================
I'm [Tristan Sloughter][tsloughter] and have too much time on my hands.

Who wrote Homebrew?
==================
That would be the great [Max Howell][mxcl] and he's a splendid chap.

[tsloughter]:http://blog.erlware.com
[homepage]:http://mxcl.github.com/homebrew
[mxcl]:http://twitter.com/mxcl
[browse-formulae]:http://github.com/tsloughter/homebrew/tree/master/Library/Formula/
[erlang]:http://www.erlang.org
[rebar]: https://github.com/basho/rebar/wiki
[agner]: http://erlagner.org/