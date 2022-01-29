\version "2.20.0"

\header {
  title = "Love Love Love"
}

% verse

verse_chords = \chordmode {
    \time 4/4
    a1:m | a1:m | a1:m | 
    d1:m | c1:m | 
    a1:m | a1:m |
    a1:m | a1:m | a1:m | a1:m | 
    d1:m | c1:m | 
    a1:m | a1:m |
    b1:7 | e1 |
    a1:m | a1:m |
}

verse_bass = {
    % 3 As
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 g16 e16 a,16~ |
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 g16 e16 a,16~ |
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 e16 ees16 d16~ |
    % d
    d4 d8~ d16 d8~ d16 d8~ d16 cis8~ cis16 | 
    % c
    c8 e,8~ e,16 f,8~ f,16 fis,8~ fis,16 g,8 e,16 gis,16 a,16~ |
    % 2 As
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 g16 e16 a,16~ |
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 g16 e16 a,16~ |
    % 4 As
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 g16 e16 a,16~ |
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 g16 e16 a,16~ |
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 g16 e16 a,16~ |
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 e16 ees16 d16~ |
    % d
    d4 d8~ d16 d8~ d16 d8~ d16 cis8~ cis16 | 
    % c
    c8 e,8~ e,16 f,8~ f,16 fis,8~ fis,16 g,8 e,16 gis,16 a,16~ |
    % 2 As
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 g16 e16 a,16~ |
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 a,16 r16 ais,16 r16 b,16~ |
    % b7
    b,8 b,8 b,8 r8 b,8 b,8 r8 e8~ | 
    % e
    e8 e,8~ e,16 f,8~ f,16 fis,8~ fis,16 g,8 e,16 gis,16 a,16~ |
    % 2 As
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 g16 e16 a,16~ |
    a,8 e8~ e16 g16 r8 fis16 fis16 r16 g16 r16 g16 e16 a,16~ |
}

\score {
    \header { piece="Verse" }
  
    <<
        \new ChordNames { \verse_chords }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \verse_bass }
    >>
}
