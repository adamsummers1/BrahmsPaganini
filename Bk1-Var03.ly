\version "2.24.3"

\header {
  title = "Book 1 Variation 3"
  composer = "J Brahms"
  tagline = ##f
}

vOne = {
\absolute

}

vTwo = {
\absolute
}

myMusic = {
  \new PianoStaff <<
    \new Staff = "up" \with {
      \override StaffGrouper.staff-staff-spacing.padding = #10
    } {
      \clef "treble"
      \time 2/4
      \key a \minor
      \tempo 4 = 110
      \vOne
    }
    \new Staff = "down" \with {
      \override StaffGrouper.staff-staff-spacing.padding = #10
    } {
      \clef "bass"
      \time 2/4
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