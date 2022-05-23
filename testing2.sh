for seed in $(seq 1001 1020)
do
    echo $seed
    python generation3.py --model_dir seqlen256_v1.ckpt/ --seed $seed --temperature 0.5 --print_once --generate_num 150 --prefix_text 'Health You may' --out_file health_$seed.txt
    python generation3.py --model_dir seqlen256_v1.ckpt/ --seed $seed --temperature 0.5 --print_once --generate_num 150 --prefix_text 'Love You may' --out_file love_$seed.txt
    python generation3.py --model_dir seqlen256_v1.ckpt/ --seed $seed --temperature 0.5 --print_once --generate_num 150 --prefix_text 'Work You will' --out_file work_$seed.txt
done
