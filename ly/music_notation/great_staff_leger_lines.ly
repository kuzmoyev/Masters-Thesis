\version "2.18.2"

\header {
    tagline = ##f
}

\score {
    \new GrandStaff <<
    \new Staff \with{
        \remove "Time_signature_engraver"
        \hide Stem
    }
    {
        \time 4/4
        g'
        c'
        a
    }

    \new Lyrics \lyricmode {
    ""
    "C"
    ""
    }

    \new Staff \with{
        \remove "Time_signature_engraver"
        \hide Stem
    }
    {
        \clef bass
        \time 4/4
        f
        c'
        e'
    }
    >>
}
