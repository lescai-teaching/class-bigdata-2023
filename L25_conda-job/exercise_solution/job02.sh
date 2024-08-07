#!/bin/sh
#SBATCH -c 1
#SBATCH --mem 10G
#SBATCH -t 1:00:00
#SBATCH --job-name RFreg
#SBATCH -p short

module load anaconda3-2023.03
conda activate parallel-modelling

echo "executing model fitting"
date

Rscript script02.R

echo "model fitting completed"
echo "results saved"
date