#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python main.py \
    --output_dir ./result/ \
    --summary_dir ./result/log/ \
    --mode freeze \
    --is_training False \
    --task SRGAN \
    --perceptual_mode VGG54 \
    --pre_trained_model True \
    --checkpoint ./experiment_SRGAN_VGG54/model-90000 \
    --frozen_graph_name frozen-srgan \
    --output_node_name generator/generator_unit/output_stage/conv/Conv/BiasAdd
