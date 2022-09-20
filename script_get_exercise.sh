#for Jupyter-hub
#connect to admin2

cd /home/jupyter-admin2
git clone https://github.com/GfellerLab/exercises_intro_bioinfo_clinique
cd exercises_intro_bioinfo_clinique
rm Week1/exercise_week1_solution.ipynb
rm Week2/exercise_week2_solution.ipynb
rm Week2/04aa322d-117d-4b83-8b26-ad0b04299275.wxs.aliquot_ensemble_masked.maf
rm Week3/exercice_cours3_gene_expression_with_solutions.ipynb
rm Week4/exercice_cours4_biomarkers_with_solutions.ipynb
rm Week5/exercice_cours5_dimension_reduction_with_solutions.ipynb
rm script_get_exercise.sh

#copy files to each user
cd /home
for i in `ls | grep u[00-100]`
do
	echo $i
	cp -r /home/jupyter-admin2/exercises_intro_bioinfo_clinique/* $i
done

#clean (remove files)
cd /home
for i in `ls | grep u[00-100]`
do
	echo $i
	rm -r $i/Week*
done
