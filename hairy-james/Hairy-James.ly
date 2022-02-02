\version "2.20.0"

\header {
  title = "Hairy James"
}

% hairy part

hairy_chords = \chordmode {
    \repeat volta 3 {
         ees1 | c1:m |
    }
    bes2 bes4 g4 | g1 |
}

hairy_bass = {
    \repeat volta 3 {
        r4 ees8 r8 ees8 d8 des8 c8~ | c8 c8 g,8 a,8 c8 a,8 g,8 c8 |
    }
    bes,4 bes,4 bes,8 bes,8 r8 g,8~ | g,8 g,8 g,8 b,8 d8 b,8 g,4 |
}

gtef = { <g'' ees'' bes'>8 }
gtcm = { <g' c'' ees''>8 }
gtbf = { <f' bes' d''>8 }
gtg = { <g' b' d''>8 }
gtf = { <c'' f'' a''>8 }
gtgm = { <d'' g'' bes''>8 }
gte = { <b' e'' gis''>8 }

hairy_guitar = {
    \repeat volta 3 {
        r8 \gtef r8 \gtef r8 \gtef r8 \gtef | r8 \gtcm r8 \gtcm r8 \gtcm r8 \gtcm
    }
    r8 \gtbf r8 \gtbf r8 \gtbf r8 \gtg | r8 \gtg r8 \gtg r8 \gtg r8 \gtg |
}

\score {
    \header { piece="Hairy Part" }
  
    <<
        \new ChordNames { \hairy_chords }
        \new Staff \with { instrumentName = #"Guitar" } { \clef treble \hairy_guitar }
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

fuck_off_guitar = {
    r8 \gtf r8 \gtf r8 \gtgm r8 \gtgm | r8 \gtf r8 \gtf r8 \gte r8 \gtef |
    r8 \gtef r8 \gtef r8 \gte r8 \gtf | r8 \gtf r8 \gtf r8 \gtf r8 \gtf |
}

\score {
    \header { piece="Fuck Off Part" }
  
    <<
        \new ChordNames { \fuck_off_chords }
        \new Staff \with { instrumentName = #"Guitar" } { \clef treble \fuck_off_guitar }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \fuck_off_bass }
    >>
}