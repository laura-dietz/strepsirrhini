dirs="strepsitools strepsimur strepsirank strepsent strepsipand"
for dir in $dirs; do
	cd $dir
 	git commit -a -m "Release $1"
	git push origin
	git push github
	cd ..
done

git commit -a -m "Release $1"
git push origin
git push github


