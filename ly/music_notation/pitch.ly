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
        \time 16/4

        <<
        \new Voice = "one" {
            c' d' e' f' g' a' b' c'' d'' e'' f'' g'' a''
        }

        \new Lyrics \lyricsto "one" \lyricmode {c d e f g a b c d e f g a}
        >>

    }
}
