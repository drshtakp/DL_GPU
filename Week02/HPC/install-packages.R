glmnet_url = "https://cran.r-project.org/src/contrib/Archive/glmnet/glmnet_4.1-2.tar.gz"
nloptr_url = "https://cran.r-project.org/src/contrib/Archive/nloptr/nloptr_1.2.2.3.tar.gz"
# torch_url="https://cran.r-project.org/src/contrib/Archive/torch/torch_0.9.1.tar.gz"

myrepo = "https://cran.case.edu/"
install_dir = Sys.getenv("INSTALL_DIR")

if (install_dir == ""){
  print("You must define $INSTALL_DIR first. Aborting.")
  quit()
}else{
  print(paste("Will install packages in:", install_dir))
}

print("Installing spatial packages")
install.packages("sp", lib=install_dir, repos=myrepo)
install.packages("raster", lib=install_dir, repos=myrepo)
# install.packages("terra", lib=install_dir, repos=myrepo) # Installing raster should also install terra
# uncomment installation of sf if you are using r/4.1.2
# install.packages("sf", lib=install_dir, repos=myrepo)
install.packages("stars", lib=install_dir, repos=myrepo)
# install.packages("https://cran.r-project.org/src/contrib/Archive/stars/stars_0.5-6.tar.gz", lib=install_dir, repos=NULL, type="source")
install.packages("starsExtra", lib=install_dir, repos=myrepo)
install.packages("gstat", lib=install_dir, repos=myrepo)

print("Installing nloptr, glmnet, and torch")
install.packages(nloptr_url, lib=install_dir)
install.packages("foreach", lib=install_dir, repos=myrepo)
install.packages("shape", lib=install_dir, repos=myrepo)
install.packages("tokenizers", lib=install_dir, repos=myrepo)
install.packages(glmnet_url, lib=install_dir)
install.packages("coro", lib=install_dir, repos=myrepo)
# install.packages(torch_url, lib=install_dir)
install.packages("torch", lib=install_dir, repos=myrepo)

print("Now installing libtorch and liblantern")
torch::install_torch()

install.packages("ISLR2", lib=install_dir, repos=myrepo)
install.packages("luz", lib=install_dir, repos=myrepo)
install.packages("torchvision", lib=install_dir, repos=myrepo)
install.packages("torchdatasets", lib=install_dir, repos=myrepo)

print("Now trying to load libraries.")
library('torch')
library('glmnet')
library('nloptr')

sessionInfo()