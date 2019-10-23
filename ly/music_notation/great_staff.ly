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
        \time 8/4
        g'
        c'
    }

    \new Lyrics \lyricmode {
    ""
    "middle C"
    }

    \new Staff \with{
        \remove "Time_signature_engraver"
        \hide Stem
    }
    {
        \clef bass
        \time 8/4
        f
        c'
    }
    >>
}
