#!/bin/bash

TEST_DATA_DIR="/USER-DEFINED-PATH/MTA_ext_short/test/"
TRACKING_RESULTS_DIR="/USER-DEFINED-PATH/MCDPT/logs/"
WORKING_DIR="/USER-DEFINED-PATH/wda_tracker/"
EVAL_RESULTS_DIR="/USER-DEFINED-PATH/wda_tracker/logs/"

PYTHONPATH=$PYTHONPATH:`pwd`
PYTHONPATH=$PYTHONPATH:evaluation/py_motmetrics/
export PYTHONPATH
python single_cam_evaluation.py \
    --test_data_dir ${TEST_DATA_DIR} \
    --tracking_results_dir ${TRACKING_RESULTS_DIR} \
    --working_dir ${WORKING_DIR} \
    --cam_ids 0 1 2 3 4 5 \
    --eval_results_dir ${EVAL_RESULTS_DIR}
