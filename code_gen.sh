#!/bin/bash

PARENT_DIR="./experiements"
FIFO_DEPTH=8

rm -rf $PARENT_DIR

for SIZE in 16 32 64 128 256; do
  for BITS in 4 8 16 32; do
    for MODE in "spiking" "integer"; do
      python3 src/main.py \
      -o "${PARENT_DIR}/${MODE}_${SIZE}x${SIZE}_${BITS}b_${FIFO_DEPTH}f" \
      -r $SIZE -c $SIZE -d $BITS -f $FIFO_DEPTH -g $MODE
    done
  done
done

