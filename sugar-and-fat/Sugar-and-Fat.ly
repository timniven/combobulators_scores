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

appog_bar = {
    r8 \appoggiatura <e' bes'>32 <f' b'>8 \appoggiatura <e' bes'>32 <f' b'>4 g'16 f'16 d'8 r4
}

penta_bar = {
    r8 c'16 d'16 r16 f'16 r8 f'16 f'16 r8 f'16 r16 g'8
}

slide_bar_one = {
    r8 c'16 \glissando d'16 f'16 d'16 \glissando e'16 g'16 e'16 r16 bes'16 r16 g'4 
}

chord_one = { <ees' a' d''>16 }
chord_two = { <ees' a' c''>16 }
chord_three = { <f' a' d''>16 }

chord_bar = {
    r8 \chord_one r8 \chord_one r8 \chord_two \chord_two \chord_two \chord_two r8 \chord_three r16
}

verse_guitar = {
    \appog_bar | \penta_bar | \appog_bar | \slide_bar_one | 
    \appog_bar | \chord_bar | 
    r8 \appoggiatura <e' bes'>32 <f' b'>8 \appoggiatura <e' bes'>32 <f' b'>4 g'16 f'16 d'8 r8 f8~ | 
    f8 a8 bes8 c'8 e8 f8 ges8 g8 |
}

\score {
    \header { piece="Verse" }
  
    <<
        \new ChordNames { \verse_chords }
        \new Staff \with { instrumentName = #"Guitar" } { \clef treble \verse_guitar }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \verse_bass }
    >>
}

% gone up

up_chords = \chordmode {
    \time 4/4
    c1:7 | bes1:7 | aes1:7 | g1
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
