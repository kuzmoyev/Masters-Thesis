#!/usr/bin/env bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

OUT_DIR=out
TEX_FILE=$(echo *.tex)
AUX_FILE=${OUT_DIR}/${TEX_FILE/tex/aux}
PDF_FILE=${TEX_FILE/tex/pdf}
LOG_FILE=${OUT_DIR}/compilation.log

rm -rf ${OUT_DIR}
mkdir -p ${OUT_DIR}

#lilypond-book --output=${OUT_DIR} --pdf ${TEX_FILE} 2>/dev/null && \
#cp -R *.cls *.bib *.bst *.cwl cvut-logo-bw-en.pdf img ${OUT_DIR}/ && \
#cd ${OUT_DIR} && \
mkdir -p ${OUT_DIR} && \
pdflatex -halt-on-error -file-line-error -interaction=nonstopmode -output-directory=${OUT_DIR} \
         "${TEX_FILE}" > ${LOG_FILE} && \
bibtex -terse -min-crossrefs=1 ${AUX_FILE} || echo -e "${RED}WARNING: bibliography is not compiled${NC}" && \
pdflatex -halt-on-error -file-line-error -interaction=nonstopmode -output-directory=${OUT_DIR} \
         "${TEX_FILE}" > ${LOG_FILE} && \
pdflatex -halt-on-error -file-line-error -interaction=nonstopmode -output-directory=${OUT_DIR} \
         "${TEX_FILE}" > ${LOG_FILE}


if [[ $? -eq 0 ]]; then
#    mv ${OUT_DIR}/"${PDF_FILE}" ../"${PDF_FILE}"
#    cd ..
    mv ${OUT_DIR}/"${PDF_FILE}" "${PDF_FILE}"

    echo -e "${GREEN}"
    echo -n "Successfully Compiled ${PDF_FILE}"
    open "${PDF_FILE}"
else
    sed "s/^\..*\/\([^\/]*\.tex:[0-9]*\):/\.(\1)/" ${LOG_FILE}
    echo -e "${RED}"
    echo -n "Compilation Error ${TEX_FILE}"
fi
echo -e "${NC}"