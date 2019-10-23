\version "2.18.2"

\header {
    tagline = ##f
}

\score {
    \new DrumStaff \with{
        \remove "Time_signature_engraver"
        \hide Stem
     }
    \drummode {
        \time 16/4

        hhp
        bd
        toml
        tomml
        sn
        tommh
        hh
        hhho
        hho
        cymr
        cyms
    }
}
