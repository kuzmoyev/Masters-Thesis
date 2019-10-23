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
        \time 8/4
        \clef alto
        c'
    }
}

\score {
    \new Staff \with{
        \remove "Time_signature_engraver"
        \hide Stem
    }
    {
        \time 8/4
        \clef tenor
        c'
    }
}
