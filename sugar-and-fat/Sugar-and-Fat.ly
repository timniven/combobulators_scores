\version "2.20.0"

\header {
  title = "Sugar and Fat"
}

% stabs

stabs_chords = \chordmode {
    \time 4/4
    g1 | c1 | bes1 | g1
}

stabs_bass = {
    g,8 r2 r4 bes,8 | 
    c8 r8 r4 r2 | 
    bes,8 r2 r4 f,8 | 
    g,8 r8 r4 r2 | 
}

\score {
    \header { piece="Stabs" }
  
    <<
        \new ChordNames { \stabs_chords }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \stabs_bass }
    >>
}

% verse

verse_chords = \chordmode {
    \time 4/4
    g1 | f1 | g1 | f1 | g1 | f1 | g1 | f1
}

verse_bass = {
    g,8 b,8 d8 f8 g16 f16 d8 g,8 f,8~ |
    f,8 a,8 bes,8 c4 f,8 ges,8 g,8~ |
    g,8 b,8 d8 f8 g16 f16 d8 g,8 f,8~ |
    f,8 a,8 bes,8 c4 f8 d8 g,8~ |
    g,8 b,8 d8 f8 g16 f16 d8 g,8 f,8~ |
    f,8 a,8 bes,8 c4 f,8 ges,8 g,8~ |
    g,8 b,8 d8 f8 g16 f16 d8 g,8 f,8~ |
    f,8 a,8 bes,8 c8 e,8 f,8 ges,8 g,8~ |
}

\score {
    \header { piece="Verse" }
  
    <<
        \new ChordNames { \verse_chords }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \verse_bass }
    >>
}

% gone up

up_chords = \chordmode {
    \time 4/4
    c1:7 | bes1:7 | aes1:7 | g1:7
}

up_bass = {
    c8 e8 f8 g4 c8 b,8 bes,8~ |
    bes,8 d8 ees8 f4 bes,8 a,8 aes,8~ |
    aes,8 c8 des8 ees4 aes,8 ees8 g,8~ |
    g,8 b,8 c8 d4 g,8 d8 c8~ |
}

\score {
    \header { piece="Going Up!" }
  
    <<
        \new ChordNames { \up_chords }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \up_bass }
    >>
}
