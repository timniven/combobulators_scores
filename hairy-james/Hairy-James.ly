\version "2.20.0"

\header {
  title = "Hairy James"
}

% hairy part

hairy_chords = \chordmode {
    \repeat volta 3 {
         ees4 ees4 ees4 c4:m | c4:m c4:m c4:m c4:m |
    }
    bes2 bes4 g4 | g1 |
}

hairy_bass = {
    \repeat volta 3 {
        r4 ees8 r8 ees8 d8 des8 c8~ | c8 c8 g,8 a,8 c8 a,8 g,8 c8 |
    }
    bes,4 bes,4 bes,8 bes,8 r8 g,8~ | g,8 g,8 g,8 b,8 d8 b,8 g,4 |
}

\score {
    \header { piece="Hairy Part" }
  
    <<
        \new ChordNames { \hairy_chords }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \hairy_bass }
    >>
}

% fuck off part

fuck_off_chords = \chordmode {
    \time 4/4
    f4 f4 g4:m g4:m | f4 f4 e4 ees4 | ees4 ees4 e4 f4 | f4 f4 f4 f4 |
}

fuck_off_bass = {
    f,4 f,8 aes,8 a,8 c8 a,8 f,8~ |
    f,8 f,8 f,8 aes,8 a,8 f8 e8 ees8~ |
    ees8 ees8 bes,8 b,8 c8 ees8 c8 f,8~ |
    f,8 f,8 f,8 aes,8 a,8 c8 a,8 f,8 |
}

\score {
    \header { piece="Fuck Off Part" }
  
    <<
        \new ChordNames { \fuck_off_chords }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \fuck_off_bass }
    >>
}