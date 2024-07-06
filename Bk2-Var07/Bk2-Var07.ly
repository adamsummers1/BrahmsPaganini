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
\ottava 1 
 <a'' a'''>8 <c''' c''''> <b'' b'''> <a'' a'''>|
<gis'' gis'''> <e'' e'''> <fis'' fis'''> <gis'' gis'''>|
<a'' a'''> <c''' c''''> <b'' b'''> <a'' a'''>|
<gis'' gis'''> <e'' e'''> <fis'' fis'''> <gis'' gis'''>||
a'''16  a'' c'''' c''' b''' b'' a''' a''|
gis''' gis'' e''' e'' fis''' fis'' gis''' gis''
a''' a'' c'''' c''' b''' b'' a''' a''
gis''' gis'' e''' e'' fis''' fis'' gis''' gis''


}

vTwo = {
\absolute
\clef "treble"
\key a \minor
\time 2/4
\set Staff.timeSignatureFraction = #'(3 . 8)
\scaleDurations #'(4 . 3) {
c''8 d'' dis''|
e'' d'' b'|
c'' d'' dis''|
e'' d''  b' ||
\clef "bass"
c' d' dis'
e' d' c'
c' d' dis'
e' d' b
 }
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