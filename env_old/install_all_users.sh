for i in `ls | grep u[25-29]`
do
        echo $i
        #installing conda and bioinfo env for user
	sudo -su jupyter-u$i sh install_user_from_yml.sh
done
