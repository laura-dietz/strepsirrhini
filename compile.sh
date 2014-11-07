dirs="strepsitools strepsimur strepsirank strepsent strepsipand"
for dir in $dirs; do
	cd $dir
 	mvn clean compile source:jar install -DskipTests
	cd ..
done

mvn clean compile source:jar install -DskipTests

