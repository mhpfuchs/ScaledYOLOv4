#!/bin/bash
# Download latest weights from google drive
# Usage:
#    $ bash download_weights.sh

python - <<EOF
import sys
sys.path.append('../')

from utils.google_utils import attempt_download

for x in [ 'yolov4l-mish_.pt',
              'yolov4-p5.pt', 'yolov4-p5_.pt',
              'yolov4-p6.pt', 'yolov4-p6_.pt',
              'yolov4-p7.pt']:
    attempt_download('%s' % x)

EOF
