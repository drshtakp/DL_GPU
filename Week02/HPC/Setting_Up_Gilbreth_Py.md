## Run Model on Gilbreth

Follow steps below in "Installing ML-Toolkit" to setup your gilbreth account for running Python ML tools.

**References**

1.  RCAC ML-Toolkit Intro <https://www.rcac.purdue.edu/knowledge/gilbreth/run/examples/apps/learning/mltoolkit>
2.  RCAC running ML-Toolkit in a batch job <https://www.rcac.purdue.edu/knowledge/gilbreth/run/examples/apps/learning/tensor_batch>

**Installing ML-Toolkit**

-   Start a terminal for shell commands on Gilbreth. We recommend using `ssh -Y yourUserID@gilbreth.rcac.purdue.edu` via your local terminal or using the terminal emulator on Gilbreth Remote Desktop <https://desktop.gilbreth.rcac.purdue.edu/> for setups and batch job submissions.

-   If the ML application you are trying to use is not in the list of supported applications or if you need a newer version of an installed application, you can install it in your home directory.

-   Preparation Steps

    Clean Python environment:

    ```{=html}
    mv ~/.conda ~/.conda.bak      
    mv ~/.local ~/.local.bak      
    mv ~/.cache ~/.cache.bak
    ```

-   Install Customized Packages

1.  Unload all modules and start with a clean environment

```{=html}
module purge
```
2.  Load the anaconda module with desired Python version.

```{=html}
module load anaconda/2020.11-py38
```
2A. If the ML application requires Cuda and CuDNN, load the appropriate modules. Note that there's currently no compatible Cuda and CuDNN with PyTorch 1.11.0, an issue to be resolved.

```{=html}
module load cuda/11.7.0
module load cudnn/cuda-11.7_8.6
```
3.  Create a custom anaconda environment. Make sure the python version matches the Python version in the anaconda module.

```{=html}
conda-env-mod create -n GDS --jupyter
```
4.  Activate the anaconda environment by loading the modules displayed at the end of step 3.

```{=html}
module load use.own
module load conda-env/GDS-py3.8.5
```
5.  Now install the desired ML application.

```{=html}
conda install pytorch torchvision torchaudio cudatoolkit=11.3.1 -c pytorch
conda install -c conda-forge matplotlib scipy python-gflags
```
Note: `python -c "import torch; print(torch.__version__)"` revealed that we are using `torch 1.13.1` as of 01/17/23.

6.  To reuse the custom environment

```{=html}
module purge
unset PYTHONPATH
module load anaconda/2020.11-py38
module load cuda/11.7.0
module load cudnn/cuda-11.7_8.6
module load use.own
module load conda-env/GDS-py3.8.5
```
