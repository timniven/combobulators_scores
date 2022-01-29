\version "2.18.2"

\header {
  title = "Miao Miao"
}

%{ 0 is midi, 1 is score %}
#(ly:set-option 'midi-extension "mid")

%{ Main Part %}

trumpetA = {
    \key b \major
    
    \repeat volta 2 {
        b'2~b'8 r8 b'8 dis''8 fis''2~fis''8 r8 g''8 e''8 
        fis''8 r8 g''8 e''8 fis''8 r16 fis''16 e''8 c''8          
    }
    \alternative {
        { b'2~ b'4~b'8 r8 }
        { b'4~ b'16 c''16 b'16 a'16 b'4~ b'8 r8 }
    }
}

barryA = {
    \key b \major
    \repeat volta 2 {
        dis'2~dis'8 r8 dis'8 fis'8 b'2~b'8 r8 c''8 a'8 
        b'8 r8 c''8 a'8 b'8 r16 b'16 a'8 e'8          
    }
    \alternative {
        { dis'2~ dis'4~dis'8 r8 }
        { dis'4~ dis'16 e'16 dis'16 c'16 dis'4~ dis'8 r8 }
    }
}

tromboneA = {
    \key b \major
    \clef bass
    \repeat volta 2 {
        fis2~fis8 r8 fis8 b8 dis'2~dis'8 r8 e'8 cis'8 
        dis'8 r8 e'8 cis'8 dis'8 r16 dis'16 cis'8 g8          
    }
    \alternative {
        { fis2~ fis4~fis8 r8 }
        { fis4~ fis16 g16 fis16 e16 fis4~ fis8 r8 }
    }
}

%{ Backing During Guitar %}

trumpetB = {
    \key b \major
    \repeat volta 8 {
        r8 b'16 b'16 r8 b'16 b'16 r8 b'16 b'16 r8 c''16 c''16
    }
}

barryB = {
    \key b \major
    \repeat volta 8 {
        r8 dis'16 dis'16 r8 dis'16 dis'16 r8 dis'16 dis'16 r8 e'16 e'16
    }
}

tromboneB = {
    \key b \major
    \clef bass
    \repeat volta 8 {
        r8 fis'16 fis'16 r8 fis'16 fis'16 r8 fis'16 fis'16 r8 g'16 g'16
    }
}

%{ Break %}

trumpetC = {
    \key b \major
    \repeat volta 2 {
        c''8 c''8 c''8 c''8 b'4~b'8 r8 
        a'8 a'8 a'8 a'8 b'4~b'8 r8
        c''8 c''8 c''8 c''8 b'4 r8 a'8
    }
    \alternative {
        { b'4 fis'2 r4 }
        { b'2~ b'4 r4 }
    }
}

barryC = {
    \key b \major
    \repeat volta 2 {
        e''8 e''8 e''8 e''8 dis''4~dis''8 r8 
        cis''8 cis''8 cis''8 cis''8 dis''4~dis''8 r8
        e''8 e''8 e''8 e''8 dis''4 r8 cis''8
    }
    \alternative {
        { dis''4 b'2 r4 }
        { dis''2~ dis''4 r4 }
    }
}

tromboneC = {
    \key b \major
    \clef bass
    \repeat volta 2 {
        g'8 g'8 g'8 g'8 fis'4~fis'8 r8 
        e'8 e'8 e'8 e'8 fis'4~fis'8 r8
        g'8 g'8 g'8 g'8 fis'4 r8 e'8
    }
    \alternative {
        { fis'4 b2 r4 }
        { fis'2~ fis'4 r4 }
    }
}


%{ SCORE %}

\score {
    <<
        %{ for midi generation %}
        %{ \new Staff \with { instrumentName = #"Bb Trumpet" } { \trumpetA }
        \new Staff \with { instrumentName = #"Eb Barry" } { \barryA }
        \new Staff \with { instrumentName = #"C Trombone" } { \tromboneA } %}
        
        %{ for score generation %}
        \new Staff \with { instrumentName = #"Bb Trumpet" } { 
            \transpose b cis { \trumpetA }
        }
        \new Staff \with { instrumentName = #"Eb Barry" } { 
            \transpose b aes { \barryA }
        }
        \new Staff \with { instrumentName = #"C Trombone" } { \tromboneA }
    >>
    \header {
        piece = "Main Part"
    }
    \layout {}
    \midi{ \tempo 4 = 110 }
}
\score {
    <<
        %{ for midi generation %}
        %{ \new Staff \with { instrumentName = #"Bb Trumpet" } { \trumpetB }
        \new Staff \with { instrumentName = #"Eb Barry" } { \barryB }
        \new Staff \with { instrumentName = #"C Trombone" } { \tromboneB } %}
        
        %{ for score generation %}
        \new Staff \with { instrumentName = #"Bb Trumpet" } { 
            \transpose b cis { \trumpetB }
        }
        \new Staff \with { instrumentName = #"Eb Barry" } { 
            \transpose b aes { \barryB }
        }
        \new Staff \with { instrumentName = #"C Trombone" } { \tromboneB }
    >>
    \header {
        piece = "Backing During Guitar Lead (Repeat for 8 Bars)"
    }
    \layout {}
    \midi{ \tempo 4 = 110 }
}
\score {
    <<
        %{ for midi generation %}
        %{ \new Staff \with { instrumentName = #"Bb Trumpet" } { \trumpetC }
        \new Staff \with { instrumentName = #"Eb Barry" } { \barryC }
        \new Staff \with { instrumentName = #"C Trombone" } { \tromboneC } %}
        
        %{ for score generation %}
        \new Staff \with { instrumentName = #"Bb Trumpet" } { 
            \transpose b cis { \trumpetC }
        }
        \new Staff \with { instrumentName = #"Eb Barry" } { 
            \transpose b aes { \barryC }
        }
        \new Staff \with { instrumentName = #"C Trombone" } { \tromboneC }
    >>
    \header {
        piece = "Break"
    }
    \layout {}
    \midi{ \tempo 4 = 110 }
}