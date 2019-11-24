\version "2.18.2"

\header {
    tagline = ##f
}

\score {
    \new Staff \with{
        \remove "Clef_engraver"
    }
    {
        \time 4/4

		r1 r2 r4 r8 r16
    }
}

