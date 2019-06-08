#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=joonas.kriisk@gmail.com
#SBATCH -J test_run_elmo
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=15000
#SBATCH --partition=gpu
#SBATCH --gres=gpu:tesla:1
module load python-3.6.3

source activate nlp

# srun --pty --time=01:00:00 --mem=8000 bash

allennlp train bidaf_elmo.jsonnet -f -s results_elmo/
