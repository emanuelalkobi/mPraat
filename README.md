mPraat toolbox for Matlab
=========================

mPraat toolbox for Matlab constitutes an interface between the most
popular software for phonetic analyses, Praat, and Matlab.

Version 1.1.3.

For demonstration, see
[html/mDemo.html](http://htmlpreview.github.com/?https://github.com/bbTomas/mPraat/blob/master/html/mDemo.html)

See also: [rPraat package](https://github.com/bbTomas/rPraat) for R.

rPraat and mPraat homepage: <https://fu.ff.cuni.cz/praat/>

Installation
------------

[Download mPraat:
mPraat-master.zip](https://github.com/bbTomas/mPraat/archive/master.zip)

To install mPraat, just unzip all files to any directory of your choice
and Set Path (in Matlab) to this directory.

How to cite this toolbox?
-------------------------

We have invested a lot of time and effort in creating mPraat toolbox /
rPraat package, please cite it when using it for data analysis.

> Bořil, T., & Skarnitzl, R. (2016). Tools rPraat and mPraat. In P.
> Sojka, A. Horák, I. Kopeček, & K. Pala (Eds.), Text, Speech, and
> Dialogue (pp. 367–374). Springer International Publishing.

[Download Tools rPraat and mPraat manuscript
.pdf](https://fu.ff.cuni.cz/praat/boril_skarnitzl_2016_Tools_rPraat_and_mPraat_%5Bmanuscript%5D.pdf)

The final publication is available at Springer via [DOI
10.1007/978-3-319-45510-5\_42](https://dx.doi.org/10.1007/978-3-319-45510-5_42)

[Download BibTeX reference
mpraatrpraat2016.bib](https://fu.ff.cuni.cz/praat/mpraatrpraat2016.bib)

What is new
-----------

v1.1.3 (2018/10/20): formantRead(); colRead() can read formant objects

v1.1.2 (2018/08/04): tgCut(), tgCut0()

v1.1.1 (2018/08/02): IntensityTiers: itRead(), itWrite(), itPlot(),
itInterpolate(), itCut(), itCut0(), itLegendre(), itLegendreDemo(),
itLegendreSynth(), colRead() supports IntensityTiers

v1.1.0 (2018/08/01): tgWrite() and ptWrite() format support: 'text'
(full text format), 'short' (short text format), and in addition for pt:
'spreadsheet' and 'headerless'; tgRead(), ptRead() and pitchRead():
optional file encoding parameter (default: 'UTF-8')

v1.0.9 (2017/10/24): colRead() to read Collection in Text and Short-text
format (Collection may store many objects in one file -- TextGrids,
PitchTiers, Pitch objects). Big thanks to Pol van Rijn for initiating
this and making the major portion of the new code. Support for file
encodings in all read functions (thanks to Weirong Chen for his
DetectEncoding function).

v1.0.8 (2017/07/15): pitchRead() to read Pitch-object files with time
frames of pitch candidates

v1.0.7 (2017/04/19): tgfindLabels(), tgduplicateTierMergeSegments()

v1.0.6 (2017/04/11): ptCut(), ptCut0(), ptInterpolate(), ptHz2ST(),
ptLegendre(), ptLegendreSynth(), ptLegendreDemo()

License
-------

License: MIT

Copyright (c) 2016 Tomáš Bořil, <borilt@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
