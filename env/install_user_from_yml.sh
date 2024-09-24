mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh

source ~/.bahrc
#conda create -n bioinfo
#conda activate bioinfo
#conda install pandas plotly IPython numpy scipy matplotlib scikit-learn 
#conda install -c conda-forge scikit-survival umap-learn
conda env create -f bioinfo_env.yml
conda activate bioinfo
ipython kernel install --user

