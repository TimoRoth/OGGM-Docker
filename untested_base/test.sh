#!/bin/bash
set -e

python3.6 -c 'import oggm' 2>/dev/null || python3.6 -m pip install git+https://github.com/OGGM/oggm.git
pytest "$(python3.6 -c 'import oggm, os; print(os.path.dirname(oggm.__file__))' | tail -n1)" --mpl
