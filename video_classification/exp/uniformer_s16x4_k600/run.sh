work_path=$(dirname $0)
PYTHONPATH=$PYTHONPATH:./slowfast \
python tools/run_net.py \
  --cfg $work_path/config.yaml \
  DATA.PATH_TO_DATA_DIR ./data_list/k600 \
  DATA.PATH_PREFIX your_path_to_data \
  DATA.PATH_LABEL_SEPARATOR "," \
  MODEL.NUM_CLASSES 600 \
  DATA_LOADER.NUM_WORKERS 12 \
  TRAIN.EVAL_PERIOD 5 \
  TRAIN.CHECKPOINT_PERIOD 1 \
  TRAIN.BATCH_SIZE 96 \
  NUM_GPUS 8 \
  UNIFORMER.DROP_DEPTH_RATE 0.1 \
  SOLVER.MAX_EPOCH 110 \
  SOLVER.BASE_LR 3e-4 \
  SOLVER.WARMUP_EPOCHS 10.0 \
  DATA.TEST_CROP_SIZE 224 \
  TEST.NUM_ENSEMBLE_VIEWS 1 \
  TEST.NUM_SPATIAL_CROPS 1 \
  DATA.MC True \
  RNG_SEED 6666 \
  OUTPUT_DIR $work_path
