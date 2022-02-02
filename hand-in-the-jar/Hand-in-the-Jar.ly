\version "2.20.0"

\header {
  title = "Hand in the Jar"
}

% chords

gta = { <a cis' e'>8 }
gtg = { <g b d'>8 }
gtf = { <c' f' a'>8 }
gtem = { <b e' g'>8 }
gtd = { <a d' f'>8 }
gtef = { <ais dis' f'>8 }
gtc = { <g c' e'>8 }

% verse

verse_chords = \chordmode {
    \time 4/4
    a2 g2 | f2 e2:m | a2 f2 | e2:m a2 |
}
verse_bass = {
    a,4 des8 e8 g,4 d4 |
    f,4 c4 e,8 f,8 g,8 a,8~ |
    a,4 des8 e8 f,4 c4 |
    e,8 f,8 g,8 aes,8 a,8 e,8 f,8 g,8 |
}

verse_guitar = {
    r8 \gta r8 \gta r8 \gtg r8 \gtg |
    r8 \gtf r8 \gtf r8 \gtem r8 \gtem |
    r8 \gta r8 \gta r8 \gtf r8 \gtf |
    r8 \gtem r8 \gtem r8 \gta r8 \gta |
}

\score {
    \header { piece="Verse" }
  
    <<
        \new ChordNames { \verse_chords }
        \new Staff \with { instrumentName = #"Guitar" } { \clef treble \verse_guitar }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \verse_bass }
    >>
}

% cookies

cookie_chords = \chordmode {
    \time 4/4
    d4 d4 d4 ees4 | c4 c4 c4 c4 |
    d4 d4 d4 ees4 | c4 c4 c4 c4 |
}

cookie_bass = {
    d8 r8 a,8 r8 d8 a,8 d8 ees8 | r8 c8 r8 c8 g,4 c4 |
    d8 a,8 d8 r8 d8 a,8 d8 ees8 | r1 |
}

cookie_guitar = {
    r8 \gtd r8 \gtd r8 \gtd r8 \gtef |
    r8 \gtc r8 \gtc r8 \gtc r8 \gtc |
    r8 \gtd r8 \gtd r8 \gtd r8 \gtef |
    r8 \gtc r8 \gtc r8 \gtc r8 \gtc |
}

\score {
    \header { piece="Cookie Time" }
  
    <<
        \new ChordNames { \cookie_chords }
        \new Staff \with { instrumentName = #"Guitar" } { \clef treble \cookie_guitar }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \cookie_bass }
    >>
}
