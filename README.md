# Multi-instrument music transcription

Research and choose appropriate method for making transcriptions in form of musical score from a multi-instrument recording of a musical composition in a selected genre.
The method should balance usage of signal analysis and supervised machine learning. It should be implemented and tested on a testing dataset, and the results should be evaluated by a suitable metric (e.g. some sort of distance from the original score the musical ensemble used), and compared to similar tools available.
The transcription should include, but is not limited to:
* Set of instruments used,
* Tuning of the song (e.g. as the frequency of the note A),
* Optionally type of scale detection (e.g. heptatonic, chromatic, pentatonic, etc.),
* Notes played by each instrument, including their length dynamics, and including rest notes,
* Tempo and metre, optionally their changes, in the composition,
* What key is used, optionally detect its changes, and what function of the diatonic scale it has.

An option is to simplify the detection by having some extra input, e.g. number of instrument, metre, etc.