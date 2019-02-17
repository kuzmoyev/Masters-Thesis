# Multi-instrument music transcription

Research and choose appropriate method for extracting annotations in form of musical score from a multi-instrument recording of a musical composition in a selected genre.
The method should balance usage of signal analysis and machine learning. It should be implemented and tested on a testing dataset, and the results should be evaluated by a suitable metric (e.g. some sort of distance from the original score the musical ensemble used), and compared to similar tools available.
The annotation should include, but is not limited to:

* Set of instruments used,
* Notes played by each instrument, including their length dynamics, and including rest notes,
* Tempo and metre, eventually their changes, in the composition,
* What key is used, eventually detect its changes, and what function of the diatonic scale it has. 

An option is to simplify the detection by having some extra input, e.g. number of instrument, metre, etc.
