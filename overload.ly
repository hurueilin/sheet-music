\language "english"
\header {
  title = "Untitled"
  composer = "Composer"
}

upper = \relative c'' {
  \clef treble
  \key d \major
  \time 4/4

  fs b, cs d b8 fs'4 b, cs d b8 e4 d cs b g' fs2 r2 r4 <fs, fs'>8 <fs fs'>4 \bar "" \break
  fs' b, cs d b8 a'4 fs e8 e8 fs4
}

lower = \relative c {
  \clef bass
  \key d \major
  \time 4/4

  <g d' g>1  r8  <a e' a>1 r8 <b fs' b>1 r4 d4 a' d cs a <fs, fs'>8 <fs fs'>4 \bar "" \break
  <g g'>4 d' g d 

}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}