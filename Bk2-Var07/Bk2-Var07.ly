\version "2.24.3"

\header {
  title = "Book 2 Variation 7"
  composer = "J. Brahms"
}

vOne = {
\absolute
\clef "treble"
\key a \minor
\time 2/4
\partial 16 r 16
\ottava 1 
<<
\new Voice { \voiceOne
 <a'' a'''>8-. <c''' c''''>-. <b'' b'''>-. <a'' a'''>-.|
<gis'' gis'''>-. <e'' e'''>-. <fis'' fis'''>-. <gis'' gis'''>-.|
<a'' a'''>-. <c''' c''''>-. <b'' b'''>-. <a'' a'''>-.|
<gis'' gis'''>-. <e'' e'''>-. <fis'' fis'''>-. <gis'' gis'''>-.||
a'''16[a'' c'''' c'''] b'''[b'' a''' a'']|
gis'''[gis'' e''' e''] fis'''[fis'' gis''' gis'']|
a'''[a'' c'''' c'''] b'''[b'' a''' a'']|
gis'''[gis'' e''' e''] fis'''[fis'' gis''' gis'']||
}
>>
\time 2/4
\set Staff.timeSignatureFraction = #'(3 . 8)
\scaleDurations #'(4 . 3) {
}
}

vTwo = {
\absolute
\clef "treble"
\key a \minor
\time 2/4
\set Staff.timeSignatureFraction = #'(3 . 8)
\partial 16 a 16
\scaleDurations #'(4 . 3) {
<<
  \new Voice
  {
    \voiceOne
  c''8-. d''-. dis''|
  e''-. d''-. b'|
  c''-. d''-. dis''|
  e''-. d''-. -. b'-. ||
  c'-. d'-. dis'-.
  e'-. d'-. c'-.
  c'-. d'-. dis'-.
  e'-. d'-. b-.
  }
\new Voice { \voiceTwo
 \tuplet 3/2 8 {
    c''16[e'] a[d'' f'] a[dis'' fis'] a[
    e'' e'] a[d'' e'] a[b' e'] a[
    c'' e'] a[d'' f'] a[dis'' fis'] a %[ 
    e''[e'] a[d'' e'] a[b' e'] \clef "bass" a,[
    c' e] a,[d' f] a,[dis' fis] a,[
    e' e] a,[d' e] a,[b e] a,%[ 
    c'[e] a,[d' f] a,[dis' fis] a,[
    e' e] a,[d' e] a,[b e] a,
 }
}
>>
  }
\time 2/4
}

myMusic = {
  \new PianoStaff <<
    \new Staff = "up"
    {
      \vOne
    }
    \new Staff = "down"
    {
      \vTwo
    }
  >>
}

\score {
\myMusic
\layout {
  indent = 0
  \context {
    \Score
  }
}
}

\score {
  \unfoldRepeats {
    \myMusic
  }
\midi {}
}