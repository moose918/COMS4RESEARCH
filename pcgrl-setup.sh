conda env create pcgrl python=3.7
conda activate pcgrl
conda install pytorch torchvision torchaudio -c pytorch

git submodule update --init submodules/qdpy/
git submodule update --init submodules/pytorch-neat/
python -m pip install neat-python

python -m pip install -r requirements.txt
python -m pip install -e .
# python -m pip install -e gym_pcgrl

# NOTE: only need this for evolving diverse generators, not RL.
python -m pip install -e submodules/qdpy
python -m pip install -e submodules/pytorch-neat

# Installing hydra:
python -m pip install --upgrade hydra-core
# store hyperparam sweeps in separate files (in "experiments") will only work with hydra 1.2.0, but not 100% sure.
python -m pip install --upgrade hydra-submitit-launcher



