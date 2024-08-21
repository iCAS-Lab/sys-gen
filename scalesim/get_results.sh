#!/bin/bash

SIZE="256x256"
CONFIGS=./configs
MODELS=./models
RESULTS=./results
SCALESIM=./scale-sim-v2-2.0.2/scalesim/scale.py

rm -rf $RESULTS/*

for config in $(ls $CONFIGS); do
    for model in $(ls $MODELS); do
        no_ext_config=$(basename -- "$config" .cfg)
        no_ext_model=$(basename -- "$model" .csv)
        python $SCALESIM \
        -c "$CONFIGS/$config" \
        -t "$MODELS/$model" \
        -p "$RESULTS/${no_ext_config}_${SIZE}_${no_ext_model}"
    done
done