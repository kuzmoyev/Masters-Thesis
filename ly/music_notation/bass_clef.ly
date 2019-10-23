\version "2.18.2"

\header {
    tagline = ##f
}

\score {
    \new Staff \with{
        \remove "Time_signature_engraver"
        \hide Stem
    }
    {
        \clef bass
        \time 8/4

        f
    }
}
