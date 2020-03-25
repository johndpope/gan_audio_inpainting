# Audio inpainting with generative adversarial network

This is the repository for the DAS project `Audio inpainting with Generative Adversarial Networks`. In this project the basic Wasserstein Generative Adversarial Network (WGAN) is compared with a new proposed WGAN architecture using a short-range and a long range neighboring borders to improve the inpainting part. The focus are on gaps in the range of 500ms using three different dataset: PIANO, SOLO and MAESTRO. Detailed information about the project and the dataset can be found in `tex/report/report.pdf`

Please keep this repository as clean as possible and do not commit data nor notebook with excecuted cells.

## How to use the code in this projects

1. Go the folder code 

	```
	cd code
	```

2. Initialize submodules

	```
	git submodule update --init --recursive
	```

3. Install package (make a virtual environnement first)

	```
	pip install -r requirements.txt
	```

	You may want to use the nogpu version of the packages (`requirements_nogpu.txt`) for you local computer.

4. Download datasets (just made it work for one)
	
	```
	python download_data.py
	python make_piano_dataset.py
	```

5. Launch jupyter
	
	```
	jupyter lab
	```

6. Check the folder notebooks. Do the work.

7. Clean your notebook using the makefile from the `notebooks` folder. This will erease all your outputs of all your notebook. If you do not want this, clean your notebook manually.
	```
	cd notebooks
	make clean
	```
## Run basic and extended model on the PIANO and SOLO dataset
1. Go to folder
	```
	cd code/experiments
	```
	
2. Training of the basic WGAN model using PIANO dataset
	```
	python myexperiments-basic-piano.py
	```

3. Training of the extend WGAN model using PIANO dataset
	```
	python myexperiments-extend-piano.py
	```

4. Training of the basic WGAN model using SOLO dataset
	```
	python myexperiments-basic-solo.py
	```

5. Training of the extend WGAN model using PIANO dataset
	```
	python myexperiments-extend-solo.py
	```
6. Testing the trained models
	```
	python myexperiments-test-model.py
	```

## Download and train 'maestro' dataset
1. Download 'maestro' dataset (<https://magenta.tensorflow.org/datasets/maestro>)

	```
	python download_data_maestro.py
	```

2. The generator to load the 'maestro' dataset is defined here:
   
   	```
	audioinpainting/load_generator.py
	```


## Project general informations

* Students: Ebner Pirmin, Amr Eltelt
* Supervisor: Nathanaël Perraudin


## Previous work

#### Previous work on audio inptainting

* Deep learning based methods
  - A context encoder for audio inpainting: <https://arxiv.org/pdf/1810.12138.pdf>

* Non deeplearning methods
  - Audio declipping with social sparsity: <https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=6853863>
  - LPC : <http://ant-s4.hsu-hh.de/dafx/papers/DAFX02_Kauppinen_Roth_signal_extrapolation.pdf>

* Engineering methods
  - Inpainting of long audio segments with similaritygraphs: <https://arxiv.org/pdf/1607.06667.pdf>
  - You can also check the demo: <https://lts2.epfl.ch/web-audio-inpainting/>

* More related work: Check the *related work* setion of 
  - <https://arxiv.org/pdf/1810.12138.pdf>
  - <https://arxiv.org/pdf/1607.06667.pdf>

#### Previous work on audio generation using GAN

Mostly you need to be aware of 

* WaveGAN <https://arxiv.org/pdf/1802.04208.pdf>, code at <https://github.com/chrisdonahue/wavegan>.
* TiFGAN <https://arxiv.org/pdf/1902.04072.pdf>, code <https://github.com/tifgan/stftGAN>, website <https://tifgan.github.io/>
* GANSythn (Maybe) <https://magenta.tensorflow.org/gansynth>

#### Important architectures for audio generation

* Wavenet: <https://deepmind.com/blog/article/wavenet-generative-model-raw-audio>
* Many papers...


## Data sources
- [Bach piano performances](http://deepyeti.ucsd.edu/cdonahue/wavegan/data/mancini_piano.tar.gz)
- [The Free Music Archive](https://github.com/mdeff/fma)
- ... 

These datasets are probably not going to work because the audio snipets are too short... To check
- [Speech Commands Zero through Nine (SC09)](http://deepyeti.ucsd.edu/cdonahue/wavegan/data/sc09.tar.gz)
- [Drum sound effects](http://deepyeti.ucsd.edu/cdonahue/wavegan/data/drums.tar.gz)
- [Nsynth dataset](https://magenta.tensorflow.org/datasets/nsynth)


## Code sources

* The main inspiration for the code is: <https://github.com/nperraud/CodeGAN>
* Notebook to start working: <https://github.com/nperraud/CodeGAN/blob/audio-inpainting/audio_experiment/GAN-audio-inpainting.ipynb>
* Main git used as a submodule for gan <https://github.com/nperraud/gantools/>


## Executing code at CSCS

Some help to execute code on CSCS

* [Global setup and access to CSCS](https://gist.github.com/nperraud/a52351fd23e6dbe275325b1bf413787c)
* [Python code execution](https://gist.github.com/nperraud/24f4a9d8275db63bf9d623b156cb0363)
* Checking for the list of jobs: `squeue -u $USER -l`
* Storage on CSCS
	- 10 Gb (max 10'000 files) in home
	- `$SCRATCH` Unlimited space and files but autodelete after 30 days of not being used



