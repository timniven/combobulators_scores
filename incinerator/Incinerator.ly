\version "2.18.2"

\header {
  title = "Incinerator"
}

trumpetA = {
    \key f \mixolydian
    f'2~f'4 g'4 a'2~a'4 r4 
    a'2~a'4 bes'4 c''2~c''4 r4 
    c''2~c''4 d''4 ees''2~ees''4 r4
    f'8 r8 aes'8 a'8 r8 f'8 aes'8 a'8 r8 f'8 r8 g'8 r8 aes'8 r8 a'8
}

barryA = {
    \key f \mixolydian
    a'2~a'4 bes'4 c''2~c''4 r4 
    c''2~c''4 d''4 ees''2~ees''4 r4 
    ees''2~ees''4 f''4 g''2~g''4 r4
    a'8 r8 b'8 c''8 r8 a'8 b'8 c''8 r8 a'8 r8 bes'8 r8 b'8 r8 c''8
}

tromboneA = {
    \key f \mixolydian
    \clef bass
    c2~c4 ees4 f2~f4 r4 
    f2~f4 g4 a2~a4 r4 
    a2~a4 bes4 c'2~c'4 r4
    c8 r8 fes8 f8 r8 c8 fes8 f8 r8 c8 r8 d8 r8 fes8 r8 f8
}

#(ly:set-option 'midi-extension "mid")

\score {
    <<
        %{ for midi generation %}
        %{ \new Staff \with { instrumentName = #"Bb Trumpet" } { \trumpetA }
        \new Staff \with { instrumentName = #"Eb Barry" } { \barryA }
        \new Staff \with { instrumentName = #"C Trombone" } { \tromboneA } %}
        
        %{ for score generation %}
        \new Staff \with { instrumentName = #"Bb Trumpet" } { 
            \transpose f g { \trumpetA }
        }
        \new Staff \with { instrumentName = #"Eb Barry" } { 
            \transpose f d { \barryA }
        }
        \new Staff \with { instrumentName = #"C Trombone" } { \tromboneA }
    >>
    \header {
        piece = "Main Part"
    }
    \layout {}
    \midi{ \tempo 4 = 110 }
}

trumpetB = {
    \key c \major
    g'8 g'8 r8 a'8 r8 bes'8 r8 b'8 c''8 r8 r4 r2
   f''8 f''8 r8 e''8 r8 d''8 r8 des''8 c''8 r8 r4 r2
}

barryB = {
    \key c \major
    b'8 b'8 r8 c''8 r8 d''8 r8 ees''8 e''8 r8 r4 r2
    c''8 c''8 r8 c''8 r8 b'8 r8 aes'8 g'8 r8 r4 r2
}

tromboneB = {
    \key c \major
    \clef bass
    d8 d8 r8 e8 r8 f8 r8 ges8 g8 r8 r4 r2
    a8 a8 r8 g8 r8 g8 r8 f8 e8 r8 r4 r2
}

\score {
    <<
        %{ for midi generation %}
        %{ \new Staff \with { instrumentName = #"Bb Trumpet" } { \trumpetB }
        \new Staff \with { instrumentName = #"Eb Barry" } { \barryB }
        \new Staff \with { instrumentName = #"C Trombone" } { \tromboneB } %}
        
        %{ for score generation %}
        \new Staff \with { instrumentName = #"Bb Trumpet" } { 
            \transpose c d { \trumpetB }
        }
        \new Staff \with { instrumentName = #"Eb Barry" } { 
            \transpose c a { \barryB }
        }
        \new Staff \with { instrumentName = #"C Trombone" } { \tromboneB }
    >>
    \header {
        piece = "Chorus"
    }
    \layout {}
    \midi{ \tempo 4 = 110 }
}