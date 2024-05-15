\version "2.24.3"

\header {
  title = "Book 1 Variation 8"
  composer = "J. Brahms"
  tagline = ##f
}

vOne = {
\absolute
\partial 8  <e'' e'''>8|
 <f'' f'''> <a' c''> <b' d''> <c'' e''> <gis'' gis'''> <a'' a'''> |
 <c'' c'''> <e' gis'> <fis' a'> <gis' b'> <dis'' dis'''> <e'' e'''>|
 <f'' f'''> <a' c''> <b' d''> <c'' e''> <gis'' gis'''> <a'' a'''>|
 <c'' c'''> <e' gis'> <fis' a'> <gis' b'> r8 <e'' e'''>|
 <f'' f'''> <a' c''> <b' d''> <c'' e''> <gis'' gis'''> <a'' a'''> |
 <c'' c'''> <e' gis'> <fis' a'> <gis' b'> <dis'' dis'''> <e'' e'''>|
 <f'' f'''> <a' c''> <b' d''> <c'' e''> <gis'' gis'''> <a'' a'''>|
 <c'' c'''> <e' gis'> <fis' a'> <gis' b'> r8 <e'' e'''> 
 \bar "||"
}

vTwo = {
\absolute
\partial 8 r8
 <a,, a,> <a c'> <b d'> <c' e'> <b d'> <a c'>|
 <e,, e,> <e gis> <fis a> <gis b> <fis a> <e gis>|
 <a,, a,> <a c'> <b d'> <c' e'> <b d'> <a c'>|
 <e,, e,> <e gis> <fis a> <gis b> <fis a> <e gis>|
 <a,, a,> <a c'> <b d'> <c' e'> <b d'> <a c'>|
 <e,, e,> <e gis> <fis a> <gis b> <fis a> <e gis>|
 <a,, a,> <a c'> <b d'> <c' e'> <b d'> <a c'>|
 <e,, e,> <e gis> <fis a> <gis b> <fis a> <e gis>|
}

myMusic = {
  \new PianoStaff <<
    \new Staff = "up" \with {
      \override StaffGrouper.staff-staff-spacing.padding = #10
    } {
      \clef "treble"
      \time 6/8
      \key a \minor
      \tempo 4. = 110
      \vOne
    }
    \new Staff = "down" \with {
      \override StaffGrouper.staff-staff-spacing.padding = #10
    } {
      \clef "bass"
      \time 6/8
      \key a \minor
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