FROM ubuntu:latest

ENV TZ='Europe/Prague'
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install -y texlive-full lilypond

COPY cvut-logo-bw-en.pdf /opt/cvut-logo-bw-en.pdf
COPY FITthesis.cls /opt/FITthesis.cls
COPY iso690.bst /opt/iso690.bst
COPY Masters-Thesis.iml /opt/Masters-Thesis.iml
COPY compile.sh /opt/compile.sh
COPY MP_Kuzmovych_Yevhen_2019.tex /opt/MP_Kuzmovych_Yevhen_2019.tex
COPY img /opt/img
COPY ly /opt/ly
COPY bibliography.bib /opt/bibliography.bib
COPY tex /opt/tex


WORKDIR /opt

RUN ./compile.sh
