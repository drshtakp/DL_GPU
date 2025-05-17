Week 3 notes:

1.  We use [Gateway](https://gateway.gilbreth.rcac.purdue.edu) to access the Gilbreth cluster and use the HPC (high-performance-computing) environment. This is a two-factor authentication.

2.  Start a front-end terminal by selecting **Clusters** then **\>\_Gilbreth Shell Access**.

3.  Prepare to clone the class github.

a.  Generate a pair of *SSH Keys*

    -   Type the following behind the command prompt: `ssh-keygen -t ed25519 -C "your_email@purdue.edu"`. In this command, `ed25519` is the algorithm used to generate the SSH keys; `your_email@purdue.edu` is the email you signed up to the GitHub account with.

    -   Enter a file in which to save the key (`~/.ssh/id_ed25519: [Press enter]`); by leaving it blank and pressing enter you accept the default file name `id_ed25519`.

    -   Enter a passphrase and remember this passphrase. You won't be able to see this when you type. Be sure to remember the passphrase.

b.  Adding the public *SSH Key* to your GitHub account

    -   Step 1, in **\>\_Gilbreth Shell Access**, type the following behind the command prompt: `cat ~/.ssh/id_ed25519.pub`. Then, copy the entire line output on the screen, follow through the rest of the steps in the instruction.
    -   Step 2, log in to your Github page. In the upper-right corner of the page, click your profile photo, then click *Settings*.
    -   Step 3, in the "Access" section of the sidebar, click *SSH and GPG keys*.
    -   Step 4, click "New SSH key" or "Add SSH key".
    -   Step 5, in the "Title" field, fill in *Gilbreth*.
    -   Step 6, select the type of key as *authentication*.
    -   Step 7, paste your public key from Step 1 into the "Key" field.
    -   Step 8, click "Add SSH key".
    -   Step 9, in **\>\_Gilbreth Shell Access** type:`exit`. Then, close the browser tab of the **\>\_Gilbreth Shell Access** to protect your SSH Keys.


4.  Cloning the course Github repository to your Gilbreth home directory

    -   Select **Clusters** then **\>\_Gilbreth Shell Access**
    -   Type the following behind the command prompt:

```         
cd

git clone git@github.com:PurdueNWP/DL_GPU_F2023.git
```

You will be asked to provide the passphrase you created in Step 3.a.

5.  Create Jupyter kernel (one time)

    -   In the terminal of **\>\_Gilbreth Shell Access**, type

    ```         
    module use /depot/gdsp/etc/modules
    module load conda-env/MLPy-py3.8.5
    conda-env-mod kernel -p /depot/gdsp/apps/MLPy
    ```

    This will allow you to use GDSP's group conda environment pre-built for you in your Jupyter Notebook.

6.  Start an instance of Jupyter Notebook (or Jupyter Lab) to run the notebook example in Week03

    -   In the Gateway select **Interactive Apps** then **Jupyter**.
    -   At this point please use either **debug** or **standby** as the examples are very light-weight and do not require much computing resource.
