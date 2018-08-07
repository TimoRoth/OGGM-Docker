#!/bin/bash
set -e

git clone https://github.com/OGGM/oggm.git /tmp/oggm_git
cd /tmp/oggm_git
pip install -I -e .
pytest --mpl oggm