#!/bin/sh
cd "/Users/simonmunzert/Munzert Dropbox/Simon Munzert/github/intro-to-data-science-23/lectures/11-automation-packages/examples/02-automation-shell-rscript"
set -eux
Rscript 01-download-data.R
Rscript 02-process-data.R
Rscript 03-plot.R