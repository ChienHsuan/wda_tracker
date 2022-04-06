#!/bin/bash

PYTHONPATH=$PYTHONPATH:`pwd`
PYTHONPATH=$PYTHONPATH:evaluation/py_motmetrics/
export PYTHONPATH

python evaluation/test.py
