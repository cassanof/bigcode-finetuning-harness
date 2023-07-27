NUM_TOKENS = 6741062 * 20 # number of tokens in dataset
SEQ_LENGTH = 2048
ESTIMATED_TRAIN_ITEMS = NUM_TOKENS / SEQ_LENGTH
PER_GPU_BATCH = 4
NUM_GPUS = 8
GRADIENT_STEPS = 4
TOTAL_STEPS = ESTIMATED_TRAIN_ITEMS / (NUM_GPUS * (PER_GPU_BATCH * GRADIENT_STEPS))
print(TOTAL_STEPS)

