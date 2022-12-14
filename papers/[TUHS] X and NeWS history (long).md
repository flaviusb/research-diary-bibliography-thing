\[TUHS\] X and NeWS history (long)
==================================

**Jon Steinhart** [jon at fourwinds.com](http://web.archive.org/web/20170920104011/mailto:tuhs%40minnie.tuhs.org?Subject=Re%3A%20%5BTUHS%5D%20X%20and%20NeWS%20history%20%28long%29&In-Reply-To=%3C201709122211.v8CMB3pf029787%40darkstar.fourwinds.com%3E "[TUHS] X and NeWS history (long)")  
_Wed Sep 13 08:11:03 AEST 2017_

* Previous message (by thread): [\[TUHS\] Happy birthday, Dennis Ritchie! \[ really sun vs dec/apollo --> X and NeWS \]](010463.html)
* Next message (by thread): [\[TUHS\] X and NeWS history (long)](010472.html)
* **Messages sorted by:** [\[ date \]](date.html#10471) [\[ thread \]](thread.html#10471) [\[ subject \]](subject.html#10471) [\[ author \]](author.html#10471)

* * *

> _Jon Steinhart wrote:_ > _As the guy who single-handedly prevented X from becoming an ANSI standard,_ > _I'd be happy to start another thread on this topic if people are interested._ 
Arthur Krewat writes:
> _Oh, do, please go on ;)_ 
Larry McVoy writes:
> _I'd like to hear that too.  I like X11, use it all the time, take advantage_ > _of the remote display all the time, have done some sunview programming and_ > _a little of just the base libraries.  I can imagine that standardizing all_ > _that stuff would be more than a mouthful.  But what else ya got?_ 
OK, you asked for it.  I think that I need to ask the Thing King to zark in a
few crates of old memories...

I spent mt teenage years as a graphics person as a result of my summer job at
Murray Hill working on the Glance-G terminal project.  Side-tracked into test
and measurement after getting my EE degree and doing cool black magic
electronics at Tektronix.  Got back into graphics and software when Tek tried
to get into the UNIX workstation business.  Started working on window systems
at that time, and continued after I quit Tek and moved to the bay area to
play at the startup game.  Started consulting after the third startup failed
which I'm still doing today.

While at Tek one of my jobs was to come up with a C language binding for GKS,
the Graphical Kernel System standard.  That itself is a funny story which ties
into the earlier troff thread.  I designed a language binding and wrote it up.
My friend Ed, author of "Real Programmers Don't Use Pascal", worked down the
road at GSS (Graphics Software Systems).  He told me that "yours looks better
than ours, you should bring it to the standards committee".  Amazingly enough
my management bought off on it, I brought my draft to the Huntsville meeting,
and it was adopted as the draft standard.  Why?  Because we had troff and an
Imprint-10!  Those were the days when people equated typeset with professional.
I recall discussing the issues with the C binding at an ANSI C committee
meeting in San Franscisco; probably met some you there.

ANSI X3X3 formed a window management subcommittee X3H3.6 somewhere along the
line.  I moved over there as I was pretty much done with the GKS stuff and the
window management end of things was more interesting.  Life changed in that
committee when the X push happened.  But first, a bit on a parallel track.

I knew Keith Lantz at Stanford who, if I remember correctly, had a graduate
seminar and wanted to talk about window management systems.  I came in as a
guest lecturer.  Partly because of this I became aware of the origins of X as
those weren't the days when one could easily just get technical papers on line.

For those of you unfamiliar with this, Stanford had developed the V operating
system which featured very fast synchronous IPC.  I believe that this ran on
the original Stanford University Network (SUN) boards.  They also developed
the W window system which ran on top of V.

I'm a bit fuzzy on the continental shift, but I believe that W made the cross
country trip to MIT via some sort of DEC connection.  Maybe they had funded
some of the Stanford research.

Gosling and Rosenthal had been working on the Andrew window system at CMU.  I
don't remember whether or not this was UNIX-based, but one of their early
design decisions was to minimize round-trips because they didn't have fast
synchronous IPC.

Despite this prior art, Scheifler took the W code, ported it to UNIX, and
called it X.  As one would expect, the performance was terrible.  X got
stuck at this state, version 10, for a long time.  Sun announced NeWS during
this stagnant period.  Freaked out Apollo, DEC, HP, etc. who got together at
DEC's Hamilton Avenue building to plot the "anything but Sun" strategy.  They
were successful in holding off the adoption of NeWS until they could rewrite
X to eliminate many of the synchronous round trips from the protocol resulting
in X version 11 which was pretty much completely incompatible with version 10.

In many respects Sun botched NeWS politically.  Large numbers of businesses
relied on applications that ran on Sun's SunView window system which was
heavily hooked into the OS and not even remotely portable.  They couldn't
use NeWS instead of SunView because they were running real businesses.  There
was no way to run SunView and NeWS at the same time so businesses couldn't
run new NeWS-based applications and old SunView applications at the same time.

I'm a bit fuzzy here, but the decision to merge X and NeWS was a bad technical
solution to a political problem.  Sun wanted to be able to say "We have X too."
Unfortunately, folks at Sun agreed to do this project without knowing what they
were talking about; it got rough when they realized that the NeWS and X
graphics models were completely incompatible.

Oh, despite all of the hype, there was actually nothing useful that one could
do using X at the time.  Not being very well socially adjusted, I annoyed a
lot of people by going to show floors and looking at X running things like maze
and loudly proclaiming "Oh, that's exactly what I do for a living."

Somewhere along the line Sun also decided to produce a mostly automated system
to convert SunView programs to use X.  I think that this was called XView.  I
remember billing for many a late night to actually get the thing working.

One of my other clients at the time was AED (advanced electronic displays).
If you were lucky enough to have a color frame buffer in those days it was
likely one of theirs.  They had a project to build X accelerator boards that
plugged into Sun workstations.  I think that I got called in because it
wouldn't work on the 3/260 which I eventually tracked down to the behavior of
the cache that only the 260 had.

AED was trying to figure out what to do as the world had changed and frame
buffers couldn't compete with workstations.  I came up with the idea to make
an X server that would run in a SunView window so that companies that relied
on SunView applications could run X applications concurrently.  We called this
XTool in keeping with the SunView application naming scheme.  I think that I
still have a few "XTool - Safe X for Suns" tee shirts around somewhere.  This
project unfortunately failed because AED was bought by someone with a "ship it
now, that'll force folks to fix the bugs" attitude.  XTool was very small and
fast compared to the X sample server because I wrote the server from scratch.
I think that I'm the only person to write an X server outside of the X
Consortium.  One of the things that I learned by doing it was that the X
Consortium folks were wrong when they said that the documentation was the
standard, not the sample server.  There were significant differences between
the two.

We showed XTool off at some shows.  People would come by the booth and ask
"how did you get it to run so fast?"  Being me, I loudly answered "We cheated.
We designed ours first."  Turns out that one of these times Keith Packard and
Jim Gettys were walking by which resulted in some long-standing animosity.

Back to the standards track.  Any of you that have done ANSI work know that
CBEMA has a one organization, one vote policy.  When Scheifler showed up at
X3H3.6 all other work stopped and X became a draft standard.  Whenever there
was a vote everybody would look to see how Bob was voting and voted with him.
For political reasons, all of the voting members from X Consortium member
companies had been told that they couldn't vote against X for technical reasons.

You may also know that one has to pay to be on an ANSI committee.  I wrote the
ANSI Secretariet and told them that I felt that by having both the X Consortium
and their member companies voting violated the spirit of the one organization
one vote rule, and that I couldn't justify continuing to pay to be on the
committee with this behavior.  They took it under advisement.

Eventually, public review time came around.   I submitted a document containing
something on the order of 800 comments.  These were pretty repetitious because
I had to hit the document one request at a time, but the major themes were:

*   The only really worthwhile thing about X was the distributed extension
    registration mechanism.  All of the input, graphics and other crap
    should be moved to extension #1.  That way, it won't be mandatory in
    conforming implementations once that stuff was obsolete.  As you probably
    know, that's where we are today; nobody uses that stuff but it's like the
    corner of an Intel chip that implements the original instruction set.  As
    an aside, I upset many when working on OpenDoc for Apple and saying the
    same thing there.
*   The atom/property mechanism allows clients to allocate memory in the server
    that can never be freed.  Some way to free memory needs to be added.
*   The bit encodings should be part of a separate language binding, not part
    of the functional description.

I received a reply from the committee that said "Thank you for you comments."
I wrote the ANSI Secretariet and asked "Don't the rules for milestone 9 say
that the technical committee must make all reasonable efforts to accomodate
public review comments?"  The Secretariet wrote the committee.  Everybody on
the committee from companies such as Sun who had bee prohibited from voting
no for technical reasons all jumped up and cried "procedural violation" and
voted against forwarding the standard.  Scheifler stormed out.

I heard later than Scheifler wrote an angry letter to the Secretariet saying
"how dare you listen to that one lone consultant when I have the backing of
all of these major companies?"  The response was "Didn't you read our rules
before joining?"

Of course, by the time all of this settled out X was entrenched setting back
the state of UNIX UI for a long time.  A couple of decades ago I bough a Sun
Ultra-60 and asked whether it was worth paying for the dual processor version.
The answer that I got was "Yes.  You need one processor to run X and another
for everything else."

Wrapping this up, I have a section in the book that I'm writing where I talk
about how to design a good API.  I pose the question of why none of the original
Apple Mac API published in 1985 taking about 1,200 pages is in use today
whereas almost all of the UNIX V6 API published in 1975 taking 321 pages is
still in use and has been copied by many other systems.  I'm sure that everyone
on this list knows the answer.

X suffers from the same problems as the original Mac API.  Scheifler et. al.
didn't really do any system level design and modelling.  I know this because
I discussed it with Scheifler at an ANSI meeting in Tulsa, the only place that
I have travelled to on business that had no redeeming qualities.  He said "I
don't believe in models because they predispose the implementation."

Had he done some real design work and looked at what others were doing he might
have realized that at its core, X was a distributed database system in which
operations on some of the databases have visual side-effects.  I forget the
exact number, but X includes around 20 different databases: atoms, properties,
contexts, selections, keymaps, etc. each with their own set of API calls.  As
a result, the X API is wide and shallow like the Mac, and full of interesting
race conditions to boot.  The whole thing could have been done with less than
a dozen API calls.

Wrapping this up on a happy note, some years ago I was hanging out yakking at
the Hacker's Conference when this guy I didn't recognize due to hair loss came
up to me and said "I'm not going to say that you weren't an asshole because
you were, but you were right."  It was Keith Packard who was trying to get X
running on the OLPC and had run into the issue of clients allocating server
memory that couldn't be freed.  Been good friends since.  Same with Gettys.

Well, that's the whole sordid take from my point of view.  Hope that you
enjoyed it.

Jon
