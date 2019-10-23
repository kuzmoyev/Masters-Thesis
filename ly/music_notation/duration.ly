\version "2.18.2"

\header {
    tagline = ##f
}

\score {
    \new Staff \with{
        \remove "Clef_engraver"
    }
    {
        \tempo 4 = 120
        \time 16/4
        \autoBeamOff

        a'1 b'2 c''4 d''8 e''16
        r1 r2 r4 r8 r16
    }
}

