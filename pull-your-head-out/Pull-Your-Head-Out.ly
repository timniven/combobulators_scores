\version "2.18.2"

\header {
  title = "Pull Your Head Out"
}

%{ this one transposes alright I think %}
trumpet = {
    \transpose aes bes {
        \key aes \minor
        r2 r8 ees''8 d''8 des''8 ces''8 aes'8 r8 aes'8 ges'8 aes'8 ges'8 aes'8 ces''8 aes'8
        r4 r8 ees''8 d''8 des''8 ces''8 aes'8 r8 aes'8 ces''8 aes'8 ces''8 fes''8 ees''1
        ges''8 f''8 fes''8 ees''8 r2
        ges'8 f'8 fes'8 ees'8 r4 r8
        ees''8 r8 ees'8 ees'8 ees'8 ces''8 bes'8 r8 aes'8~ aes'2 r2
    }
}

barry = {
    \transpose aes f {
        \key aes \minor
        r2 r8 ces''8 bes'8 a'8 aes'8 ees'8 r8 ees'8 des'8 ees'8 des'8 ees'8 aes'8 ees'8
        r4 r8 ces''8 bes'8 a'8 aes'8 ees'8 r8 ees'8 aes'8 ees'8 aes'8 b'8 bes'1
        ces''8 bes'8 a'8 aes'8 r2
        ces'8 bes8 a aes8 r4 r8
        ces''8 r8 ces'8 ces'8 ces'8 ges'8 g'8 r8 aes'8~ aes'2 r2
    }
}

trombone = {
    \key aes \minor
    \clef bass
    r2 r8 aes8 g8 ges8 ees8 aes,8 r8 aes,8 ges,8 aes,8 ges,8 aes,8 ces8 aes,8
    r4 r8 aes8 g8 ges8 ees8 aes,8 r8 aes,8 ces8 aes,8 ces8 aes8 g1
    ges8 f8 fes8 ees8 r2
    ges,8 f,8 fes,8 ees,8 r4 r8
    ees8 r8 ees,8 ees,8 ees,8 ces8 bes,8 r8 aes,8~ aes,2 r2
}

% pirates ahoy

pirates_chords = \chordmode {
    e1 | b1 | e1 | b1 | e1 | b1 | e1 | dis1:7 | fis1:7 |
}

pirates_bass = {
    e16 r16 e16 g16 gis16 g16 e16 r16 r2 |
    b,16 r16 b,16 cis16 dis16 cis16 b,16 r16 r2 |
    e16 r16 e16 g16 gis16 g16 e16 r16 r2 |
    b,16 r16 b,16 cis16 dis16 g16 gis16 r16 r2 |
    e16 r16 e16 g16 gis16 g16 e16 r16 r2 |
    b,16 r16 b,16 cis16 dis16 cis16 b,16 r16 r2 |
    e16 r16 e16 g16 gis16 g16 e16 r16 r2 |
    dis2~ dis4~ dis8 fis8~ |
    fis1 |
}

\score {
    \header { piece="Pirate Part" }
  
    <<
        \new ChordNames { \pirates_chords }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \pirates_bass }
    >>
}

% main part

chord_part = \chordmode {
    gis1 | gis1 | gis1 | dis1:7 | dis1:7 | dis1:7 | dis1:7 | gis1
}

bass_part = {
    gis,8 r8 ais,8 r8 b,8 r8 g,8 r8 |
    gis,8 r8 ais,8 r8 b,8 r8 cis8 r8 |
    gis,8 r8 ais,8 r8 b,8 r16 b,16 cis8 d8 |
    dis8 r8 e8 r8 g8 r8 cis8 r8 |
    dis8 r8 e8 r8 g8 r8 gis8 r8 |
    dis8 r8 e8 r8 g8 r8 cis8 r8 |
    dis8 r8 e8 r8 dis8 cis8 b,8 ais,8 |
    gis,8 r8 ais,8 r8 b,8 f,8 fis,8 f,8 |
}

\score {
    \header { piece="Main Part" }
  
    <<
        %\new Staff \with { instrumentName = #"Bb Trumpet" } { \trumpet }
        %\new Staff \with { instrumentName = #"Eb Barry" } { \barry }
        %\new Staff \with { instrumentName = #"C Trombone" } { \trombone }
        \new ChordNames { \chord_part }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \bass_part }
    >>
    % \layout {}
    % \midi{ \tempo 4 = 110 }
}