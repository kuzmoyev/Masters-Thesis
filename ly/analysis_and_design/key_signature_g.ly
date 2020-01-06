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

        \key g \major

       	f'
       	fis
       	fis''

    }
}
