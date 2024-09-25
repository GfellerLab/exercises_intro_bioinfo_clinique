#for Jupyter-hub
#connect to admin2
#pwd gfellerlab

cd /home/jupyter-admin2
git clone https://github.com/GfellerLab/exercises_intro_bioinfo_clinique
cd exercises_intro_bioinfo_clinique


#### install package. For each user separately (manual installation)!!!
# open a jupyter notebook
# run:
#!pip install pandas numpy scipy plotly scikit-survival scikit-learn umap h5py scikit-image matplotlib
# restart kernel
# log out and log in again
# UPDATE: added this line to Week1 jupyter-notebook

####################################################################################################
#copy files to each user (rm solutions)
cd /home

week="Week1"
filename="exercise_week1.ipynb"
echo "Copying file $filename for $week"
for i in `ls | grep u[00-300]`
do
	echo $i, $week
	#making directory
	mkdir /home/$i/$week
	cp /home/jupyter-admin0/exercises_intro_bioinfo_clinique/$week/$filename $i/$week
	sudo chmod 777 $i/$week
done


#####################################################################################################
##### copy solution
#week="Week1"
#echo "Copying solution for $week "
#for i in `ls | grep u[00-300]`
#do
#	echo $i, $week
#	cp /home/jupyter-admin0/exercises_intro_bioinfo_clinique/$week/*solution* $i/$week
#done
#
####################################################################################################
#function to clean (remove ALL files)
cd /home
for i in `ls | grep u[00-300]`
do
	echo $i
	rm -r $i/Week*
done



