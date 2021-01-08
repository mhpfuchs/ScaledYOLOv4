#!/bin/bash
# Download latest weights from google drive
# Usage:
#    $ bash download_weights.sh

python - <<EOF
import sys
sys.path.append('../')

from utils.google_utils import attempt_download

for x in ['p5', 'p6', 'p7']:
    attempt_download('yolov4-%s.pt' % x)

EOF
