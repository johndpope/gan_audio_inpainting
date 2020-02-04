#!/bin/bash -l
#SBATCH --time=23:50:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --constraint=gpu
#SBATCH --output=rd-maestro-extend-o-%j.log
#SBATCH --error=rd-maestro-extend-e-%j-e.log
#SBATCH --account=sd01

module load daint-gpu
module load cray-python
module load TensorFlow/1.14.0-CrayGNU-19.10-cuda-10.1.168-python3

source $HOME/default01/bin/activate

cd $HOME/gan_audio_inpainting/code/experiments
srun python myexperiments-extend-maestro.py