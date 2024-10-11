#for Jupyter-hub
#connect to admin2
#pwd gfellerlab


#### HOW TO install package.
## OPTION 1: For each user separately (manual installation)!!!
# open a jupyter notebook
# run:
#!sudo pip install pandas numpy scipy plotly scikit-survival scikit-learn umap h5py scikit-image matplotlib
# restart kernel
# log out and log in again
# added this line to Week1 jupyter-notebook
#
## OPTION 2:
# It seems related to this: https://github.com/pypa/pip/issues/11776
# WHAT I've done: mv EXTERNALLY_MANAGED EXTERNALLY_MANAGED_BKCP

####################################################################################################
#copy files to each user (include/exclude solutions)

cd /home/jupyter-admin0/exercises_intro_bioinfo_clinique
echo "Copying data"

for i in $(ls /home/ | grep u[00-300])s
do
    echo "Copying data for $i"
    # Making directory
    sudo rm -Rf /home/$i/exercice_intro_bioinfo_clinique/
    #sudo mkdir -p /home/$i/UCSC_data/
    sudo cp -r ./UCSC_data/ /home/$i/
    sudo chmod 777 /home/$i/UCSC_data/
done


####################################################################################################
#function to clean (remove ALL files)
#cd /home
#for i in `ls | grep u[00-300]`
#do
#	echo $i
#	rm -rf /home/$i/*
#done



