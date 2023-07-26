#CUDA_VISIBLE_DEVICES=... python3 -m torch.distributed.launch \
python3 -m torch.distributed.launch \
        --nproc_per_node 8 train.py \
        --model_path="bigcode/starcoderbase" \
        --no_custom_tokenizer \
        --model_revision="main" \
        --dataset_name="nuprl/stack_dedup_lua_codegen" \
        --subset="data" \
        --data_column "content" \
        --split="train" \
        --output_dir="./model_starcoder_lora_lua50k" \
        --seq_length 8192 \
        --max_steps 500 \
        --batch_size 4 \
        --gradient_accumulation_steps 1 \
        --learning_rate 0.0002 \
        --num_warmup_steps 10 \
        --eval_freq 25 \
        --save_freq 25 \
        --log_freq 1 \
        --num_workers=$(expr $(nproc --all) - 4) \
        --no_fp16 \
        --bf16 \
        --lora \
        --lora_r 32 \
        --lora_alpha 32 \
        --lora_dropout 0.1 \
        --perc_valid_set 0.05
