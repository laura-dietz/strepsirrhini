dirs="strepsitools strepsimur strepsirank strepsent strepsipand"
for dir in $dirs; do
	cd $dir
 	git checkout release	
	cd ..
done

git checkout release
