#for Jupyter-hub
#connect to admin2
#pwd gfellerlab

cd /home/jupyter-admin2
git clone https://github.com/GfellerLab/exercises_intro_bioinfo_clinique
cd exercises_intro_bioinfo_clinique


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

cd /home
week="Week1"
include_solution=true
echo "Copying file $filename for $week"

for i in $(ls | grep u[00-300])
do
    echo "$i, $week"
    # Making directory
    mkdir -p /home/$i/$week
    
    if $include_solution; then
        for filename in $(ls /home/jupyter-admin0/exercises_intro_bioinfo_clinique/$week/)
        do
            cp /home/jupyter-admin0/exercises_intro_bioinfo_clinique/$week/$filename /home/$i/$week/
        done
    else
        for filename in $(ls /home/jupyter-admin0/exercises_intro_bioinfo_clinique/$week/ | grep -v solution)
        do
            cp /home/jupyter-admin0/exercises_intro_bioinfo_clinique/$week/$filename /home/$i/$week/
        done
    fi

    sudo chmod 777 /home/$i/$week
done


####################################################################################################
#function to clean (remove ALL files)
cd /home
for i in `ls | grep u[00-300]`
do
	echo $i
	rm -rf /home/$i/*
done



