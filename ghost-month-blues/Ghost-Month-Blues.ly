\version "2.20.0"

\header {
  title = "Ghost Month Blues"
}

% grange hill

grange_chords = \chordmode {
    c1:7 | c1:7 | f1 | g2 g4 f4 |
}

grange_bass = {
      f,16 r16 d16 r16 c8 r16 g,16 a,16 c16 r16 a,16 c8 r8 |
      r8 d16 r16 c8 r16 a,16 c16 a,16 g,16 f,16~ f,4  |
      r8 f,16 r16 f,16 r8 f,16 f,16 fis,16 g,16 gis,16~ gis,4 |
      r8 gis,16 r16 bes,8 gis,16 g,8 f,16~ f,4 r8 |
}

\score {
    \header { piece="Grange Hill / Circus" }
  
    <<
        \new ChordNames { \grange_chords }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \grange_bass }
    >>
}

% verse

verse_chords = \chordmode {
    f2 f2:9 | f2:13.11 f2:7 |
}

verse_guitar = {
    r4 <c' f' a'>16 r16 r8 r4 <c' ees' g'>16 r16 r8 |
    r4 <ees' a' d''>16 r16 r8 r4 <ees' a' c''>16 r16 r8 |
}

verse_bass = {
    f,8 r16 bes,16 c16 ees8 c16 f,8 r16 bes,16 c16 ees8 c16 |
    f,8 r16 bes,16 c16 ees8 c16 f,8 r16 aes,16 a,16 c8 a,16 |
}

\score {
    \header { piece="Verse" }
  
    <<
        \new ChordNames { \verse_chords }
        \new Staff \with { instrumentName = #"Guitar" } { \clef treble \verse_guitar }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \verse_bass }
    >>
}

% dangle

dangle_chords = \chordmode {
    ees1:m7 | ees2:m7 ees4:m7 ees8:m7 e8:m7 |
}

% chords reused in the guitar part
ef = { <ees' ges' des''>16 }

dangle_guitar = {
    \ef r8 \ef r8 \ef r8 \ef r8 \ef \ef \ef \ef | 
    r8 \ef r8 \ef r8 \ef \ef \ef \ef r8 <e' g' d''>16 r16 |
}

dangle_bass = {
    ees4 ges4 b4 d4 |
    ees4 ges4 bes4 ges4 |
}

\score {
    \header { piece="Le Dangle" }
  
    <<
        \new ChordNames { \dangle_chords }
        \new Staff \with { instrumentName = #"Guitar" } { \clef treble \dangle_guitar }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \dangle_bass }
    >>
}