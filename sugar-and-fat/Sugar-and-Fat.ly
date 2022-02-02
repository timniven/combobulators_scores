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

stabs_guitar = {
    g16 r16 \deadNote g16 \deadNote g16 g16 r16 \deadNote g16 g16 r16 \deadNote g16 g16 r16 g16 g16 bes8 |
    c'16 r16 \deadNote c'16 \deadNote c'16 c'16 r16 \deadNote c'16 c'16 r16 \deadNote c'16 c'16 r16 c'16 c'16 \deadNote c'16 \deadNote c'16 |
    bes16 r16 \deadNote bes16 \deadNote bes16 bes16 r16 \deadNote bes16 bes16 r16 \deadNote bes16 bes16 r16 bes16 bes16 f8 |
    g16 r16 \deadNote g16 \deadNote g16 g16 r16 \deadNote g16 g16 r16 \deadNote g16 g16 r16 g16 g16 \deadNote g16 \deadNote g16 |
}

\score {
    \header { piece="Stabs" }
  
    <<
        \new ChordNames { \stabs_chords }
        \new Staff \with { instrumentName = #"Guitar" } { \clef treble \stabs_guitar }
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
    \deadNote <e' bes'>8 \appoggiatura <e' bes'>32 <f' b'>8 \appoggiatura <e' bes'>32 <f' b'>8 
    \deadNote g'16 \deadNote g'16 g'16 f'16 d'8 \deadNote c'16 r16 \deadNote c'16 \deadNote c'16
}

penta_bar = {
    r16 \deadNote c'16 c'16 d'16 \deadNote f'16 f'16 r16 \deadNote f'16 
    f'16 f'16 \deadNote f'16 \deadNote f'16 f'16 r16 g'8
}

slide_bar_one = {
    r8 c'16 \glissando d'16 f'16 d'16 \glissando e'16 g'16 e'16 r16 bes'16 r16 g'4 
}

chord_one = { <ees' a' d''>16 }
chord_two = { <ees' a' c''>16 }
chord_three = { <f' a' d''>16 }

chord_bar = {
    r16 \deadNote \chord_one \chord_one \deadNote \chord_one \deadNote \chord_one \chord_one 
    \deadNote \chord_two \deadNote \chord_two \chord_two \chord_two \chord_two \chord_two 
    \deadNote \chord_three \deadNote \chord_three \chord_three \deadNote \chord_three
}

verse_guitar = {
    \appog_bar | \penta_bar | \appog_bar | \slide_bar_one | 
    \appog_bar | \chord_bar | 
    \deadNote <e' bes'>16 \deadNote <e' bes'>16 \appoggiatura <e' bes'>32 <f' b'>8 \appoggiatura <e' bes'>32 <f' b'>8 
    \deadNote g'16 \deadNote g'16 g'16 f'16 d'8 \deadNote d'8 f8~ | 
    f8 a8 bes8 c'8 e8 f8 ges8 g8 |
}

\score {
    \header { piece="Verse" }
  
    <<
        \new ChordNames { \verse_chords }
        \new Staff \with { instrumentName = #"Guitar" } { \clef treble \verse_guitar }
        %\new TabStaff { \verse_guitar }
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

gtc_sixteenth = { <c' e' bes'>16 }
gtc_eighth = { <c' e' bes'>8 }
gtbf_sixteenth = { <aes d' f'>16 }
gtbf_eighth = { <aes d' f'>8 }
gtbfs_sixteenth = { <aes d' g'>16 }
gtbfs_eighth = { <aes d' g'>8 }
gtaf_sixt = { <ges c' ees'>16 }
gtaf_eigt = { <ges c' ees'>8 }
gtafs_eigt = { <ges c' f'>8 }

up_guitar = {
    \deadNote \gtc_sixteenth \deadNote \gtc_sixteenth \gtc_eighth \gtc_eighth 
    \deadNote \gtc_sixteenth \deadNote \gtc_sixteenth \gtc_eighth g'8 \deadNote g'8 
    <aes d' f'>8~ |
    <aes d' f'>8 \gtbf_sixteenth r16 \gtbf_sixteenth r16 
    \deadNote \gtbf_sixteenth \deadNote \gtbf_sixteenth \deadNote \gtbf_sixteenth
    \gtbfs_sixteenth \deadNote \gtbfs_sixteenth \deadNote \gtbfs_sixteenth 
    \gtbfs_sixteenth \gtbfs_sixteenth \deadNote \gtbfs_eighth |
    \deadNote \gtaf_eigt \gtaf_eigt \gtaf_eigt
    \deadNote \gtaf_sixt \deadNote \gtaf_sixt \gtaf_eigt \gtafs_eigt \deadNote \gtafs_eigt 
    <g b d'>8~ |
    <g b d'>8~ <g b d'>8 <g b d'>16 r16 \deadNote <g b d'>16 \deadNote <g b d'>16
    \tuplet 3/2 { b16 c'16 b16 } g16 b16 \deadNote b16 \deadNote b16 g'16 g'16 |
}

\score {
    \header { piece="Going Up!" }
  
    <<
        \new ChordNames { \up_chords }
        \new Staff \with { instrumentName = #"Guitar" } { \clef treble \up_guitar }
        \new Staff \with { instrumentName = #"Bass" } { \clef bass \up_bass }
    >>
}
