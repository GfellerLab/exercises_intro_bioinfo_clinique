#for Jupyter-hub
#connect to admin2
#pwd gfellerlab

cd /home/jupyter-admin2
git clone https://github.com/GfellerLab/exercises_intro_bioinfo_clinique
cd exercises_intro_bioinfo_clinique

####################################################################################################
#copy files to each user (rm solutions)
cd /home

week="Week1"
filename="exercise_week1.ipynb"
echo "Copying file $filename for $week"
for i in `ls | grep u[00-300]`
do
	echo $i, $week
	#makeing directory
	mkdir /home/$i/$week
	cp /home/jupyter-admin2/exercises_intro_bioinfo_clinique/$week/$filename $i/$week
done


#####################################################################################################
##### copy solution
#week="Week1"
#echo "Copying solution for $week "
#for i in `ls | grep u[00-300]`
#do
#	echo $i, $week
#	cp /home/jupyter-admin2/exercises_intro_bioinfo_clinique/$week/*solution* $i/$week
#done

####################################################################################################
#function to clean (remove ALL files)
cd /home
for i in `ls | grep u[00-300]`
do
	echo $i
	rm -r $i/Week*
done
