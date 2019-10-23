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
        \time 3/4
        a'
        d''
        c''


        \time 6/4
        a'2
        d''2
        c''2
    }
}

