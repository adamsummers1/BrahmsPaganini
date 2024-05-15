\version "2.24.3"

\header {
  title = "Book 2 Variaion 11"
  composer = "J Brahms"
  tagline = ##f
}

vOne = {
\absolute
\repeat volta 2 {
    <c''' c''''>16 b'' <a'' a'''> e'' <c'' c'''> b' <a' a''> fis' <gis' gis''> b' <e'' e'''> fis'' <gis'' gis'''> b'' <e'''' e'''> d'''
    <c''' c''''> b'' <a'' a'''> e'' <c'' c'''> b' <a' a''> fis' <gis' gis''> b' <e'' e'''> fis'' <gis'' gis'''> b'' <e'''' e'''>8
    }
\repeat volta 2 {
   <cis''' cis''''>16  b'' <a'' a'''> f'' <e'' e'''> d'' <cis'' cis'''> b' <a' a''> cis'' <fis'' fis'''> gis'' <a'' a'''> cis''' <d''' d''''> c'''
   <b'' b'''> a'' <g'' g'''> ees'' <d'' d'''> c'' <b' b''> a' <g' g''> b' <e'' e'''> fis'' <g'' g'''> b'' <c''' c''''> bes''
   <a'' a'''> g'' <f'' f'''> e'' <d'' d'''> c'' <bes' bes''> a' <g'' g'''> f'' <e'' e'''> d'' <c'' c'''> bes' <a' a''> g'
   <f'' f'''> e'' <d'' d'''> c'' <bes' bes''> a' <gis' gis''> e' <a' a''> b' <c'' c'''> e'' <a'' a'''> e''' <a'''' a'''>8
  }
}

vTwo = {
  \repeat volta 2 {
    <a,, a,>16 b, <c, c> e <a, a> b <c c'> dis' <e e'> b <gis, gis> fis <e, e> b, <e,, e,> gis,
    <a,, a,> b, <c, c>  e <a, a> b <c c'> dis' <e e'> b <gis, gis> fis <e, e> b, <e,, e,>8
    }
  \repeat volta 2 {
     <a,, a,>16 b, <cis, cis> d <e, e> gis <a, a> cis' <fis fis'> cis' <a, a> gis <fis, fis> cis <d,, d,> fis,
     <g,, g,> a, <b,, b,> c <d, d> fis <g, g> b <e e'> b <g, g> fis <e, e> b, <c,, c,> e,
     <f,, f,> g, <a,, a,> c <bes,, bes,> c <d, d> f <e,, e,> f, <g,, g,> bes, <a,, a,> bes, <c, c> e
     <d,, d,> e, <f,, f,> a, <bes,, bes,> d <e, e> gis <c c'> b <a, a> e <c, c> b, <a,, a,>8
  }
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