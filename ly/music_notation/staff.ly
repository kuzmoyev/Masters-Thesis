\version "2.18.2"

\header {
    tagline = ##f
}

\score {
    \new Staff \with{
        \remove "Time_signature_engraver"
        \remove "Clef_engraver"
        \hide Stem
    }
    {
        \time 16/4

        e'
        g'
        b'
        d''
        f''

        f'
        a'
        c''
        e''

    }
}
