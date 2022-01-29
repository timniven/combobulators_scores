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

\score {
    <<
        \new Staff \with { instrumentName = #"Bb Trumpet" } { \trumpet }
        \new Staff \with { instrumentName = #"Eb Barry" } { \barry }
        \new Staff \with { instrumentName = #"C Trombone" } { \trombone }
    >>
    \layout {}
    \midi{ \tempo 4 = 110 }
}