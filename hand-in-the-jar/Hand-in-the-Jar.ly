\version "2.20.0"

\header {
  title = "Hand in the Jar"
}

% verse

verse_chords = \chordmode {
    \time 4/4
    a2 g2 | f2 e2:m | a2 f2 | e2:m a2 |
}
verse_bass = {
    a,4 des8 e8 g,4 d4 |
    f,4 c4 e,8 f,8 g,8 a,8~ |
    a,4 des8 e8 f,4 c4 |
    e,8 f,8 g,8 aes,8 a,8 e,8 f,8 g,8 |
}

\score {
    \header { piece="Verse" }
  
    <<
        \new ChordNames { \verse_chords }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \verse_bass }
    >>
}

% cookies

cookie_chords = \chordmode {
    \time 4/4
    d8 d8 d8 ees8 c8 c8 c8 c8 |
    d8 d8 d8 ees8 c8 c8 c8 c8 |
}

cookie_bass = {
    d16 r16 a,16 r16 d16 a,16 d16 ees16 r16 c16 r16 c16 g,8 c8 |
    d16 a,16 d16 r16 d16 a,16 d16 ees16 r2 |
}

\score {
    \header { piece="Cookie Time" }
  
    <<
        \new ChordNames { \cookie_chords }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \cookie_bass }
    >>
}
