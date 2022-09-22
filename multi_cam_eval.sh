#!/bin/bash

TEST_DATA_DIR="/USER-DEFINED-PATH/MTA_ext_short/test/"
TRACKING_RESULTS_DIR="/USER-DEFINED-PATH/MCDPT/logs/"
WORKING_DIR="/USER-DEFINED-PATH/wda_tracker/"
EVAL_RESULTS_DIR="/USER-DEFINED-PATH/wda_tracker/logs/"

PYTHONPATH=$PYTHONPATH:`pwd`
PYTHONPATH=$PYTHONPATH:evaluation/py_motmetrics/
export PYTHONPATH
python multi_cam_evaluation.py \
    --test_data_dir ${TEST_DATA_DIR} \
    --tracking_results_dir ${TRACKING_RESULTS_DIR} \
    --working_dir ${WORKING_DIR} \
    --cam_ids 0 1 4 \
    --eval_results_dir ${EVAL_RESULTS_DIR}
