#!/bin/sh

# Setup VIAME Paths (no need to run multiple times if you already ran it)

export VIAME_INSTALL=./../..

source ${VIAME_INSTALL}/setup_viame.sh

# Run pipeline

kwiver runner ${VIAME_INSTALL}/configs/pipelines/register_multimodal_unsync_itk.pipe
