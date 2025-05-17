Week 2 notes:

1.  We will use [ThinLinc](https://www.rcac.purdue.edu/knowledge/gilbreth/accounts/login/thinlinc) to access the gilbreth cluster and use the HPC (high-performance-computing) environment

    -   [Step-by-step instructions](Thinlinc_Client_Connection_rstudio.pdf) to start RStudio on the "frontend"

    -   In this RStudio instance, create an R-project using the "Version Control" option. Name the project `DL_GPU_F2023` to clone this Github repository to your Home directory (`~`). You will need your career account and password (not Boilerkey) to complete this step.

2.  We will need to use some simple Unix commands:

    -   Install [Quarto](https://quarto.org)

        -   `mkdir ~/local`

        -   `cd ~/local`

        -   `wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.2.313/quarto-1.2.313-linux-rhel7-amd64.tar.gz`

        -   `tar -xzvf quarto-1.2.313-linux-rhel7-amd64.tar.gz`

    -   Setup bash shell start-up environment

        -   `cd`

        -   `cp DL_GPU_F2023/Week02/HPC/bashrc.example .bashrc`

        -   `cp DL_GPU_F2023/Week02/HPC/bash_profile.example .bash_profile`

        -   `source .bash_profile`

    -   Setup `.Rprofile` following the RCAC [instructions](https://www.rcac.purdue.edu/knowledge/gilbreth/run/examples/apps/r/rprofile). There are many versions of R available in the HPC environment and R packages (libraries) have version- and computing environment- dependency. This `.Rprofile`, at the minimum, ensures that the R packages you will install will be clearly identified by their dependent R version.

        -   `curl -#LO https://www.rcac.purdue.edu/files/knowledge/run/examples/apps/r/Rprofile_example`

        -   `mv -ib Rprofile_example ~/.Rprofile`

3.  We will set up R and Python computing environments respectively, then R & Python environment using RStudio, a multilingual IDE.

    -   R packages for running Torch with GPU

        -   `cd DL_GPU_F2023/Week02/HPC`

        -   `chmod +x install-r-packages-cuda11.sh`

        -   `./install-r-packages-cuda11.sh`

    -   Python

    -   Following the instructions in `Setting_Up_Gilbreth_Py.md`

    -   R & Python in RStudio

        -   Edit `.Rprofile` in the home directory with the following Python env by adding the line at the end. `Sys.setenv(RETICULATE_PYTHON="/apps/spack/gilbreth/apps/anaconda/2020.11-py38-gcc-4.8.5-djkvkvk/bin/python")`

4.  We will run a couple of small examples of weather data ingestion in the RStudio.

    -   Start an interactive session in the "backend"

        -   `slist`

        -   `sfeatures`

        -   `sinteractive -A standby -N 1 -n 8 --gres=gpu:1 -t 4:00:00`

    -   Launch Rstudio with pre-loaded modules, type in the terminal

        -   `cd DL_GPU_F2023/Week02/HPC`

        -   `chmod +x launch_rstudio_for_torch_cuda11.sh`

        -   `./launch_rstudio_for_torch_cuda11.sh`

    -   Ingest ASOS weather station data (note that this task doesn't need GPU, so can run on other RCAC clusters such as Scholar, Bell, Brown, and Negishi.

        -   In a terminal, type `mkdir /scratch/gilbreth/YourUserName/ASOS`. This is your working directory, all data generated will be placed here.

        -   In RStudio, open `step0_ASOS_data_prep.R` in the `Examples` folder, modify Line 7 in the script, install any missing package, then run the script.

    -   Ingest GPM satellite-based precipitation data(note that this task doesn't need GPU, either, so can run on other RCAC clusters such as Scholar, Bell, Brown, and Negishi.

        -   In a terminal, type `mkdir /scratch/gilbreth/YourUserName/GPM`. This is your working directory, all data generated will be placed here.

        -   In RStudio, open `Example_HDF5.Rmd` in the `Examples` folder, modify Line 80 in the Markdown file with your own working directory, install any missing package, then run the script.

5.  Notes on transferring files between RCAC HPC and your local computer:

    -   Mapping Network Drives will allow you to access and transfer the contents in your HPC storage space.

        -   Try to "map" your "Home" `\\home.gilbreth.rcac.purdue.edu\gilbreth-home` (Windows) or `home.gilbreth.rcac.purdue.edu/gilbreth-home` (Mac & Linux) and "Scratch Storage" `\\scratch.gilbreth.rcac.purdue.edu\gilbreth-scratch` (Windows) or `scratch.gilbreth.rcac.purdue.edu/gilbreth-scratch` (Mac & Linux) to your personal/laptop computer's Network Drive following [this instruction](https://www.rcac.purdue.edu/knowledge/gilbreth/storage/transfer/cifs). If you are off-campus, you need to connect to Purdue [VPN](https://www.itap.purdue.edu/connections/vpn/).

        -   Similarly, try to "map" the "Depot Storage" `\\datadepot.rcac.purdue.edu\depot\gdsp` (Windows) or `datadepot.rcac.purdue.edu/depot/gdsp` (Mac or Linux) to your personal/laptop computer's Network Drive following [this instruction](https://www.rcac.purdue.edu/knowledge/depot/storage/transfer/cifs). If you are off-campus, you need to connect to Purdue [VPN](https://www.itap.purdue.edu/connections/vpn/).

    -   Globus can be used to transfer files between RCAC HPC and your personal computer, but it has a much broader application.

        -   RCAC Globus [training information](https://www.rcac.purdue.edu/training/globus)

        -   Login Using Globus Web App: <https://transfer.rcac.purdue.edu>
