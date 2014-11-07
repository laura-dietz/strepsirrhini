dirs="strepsitools strepsimur strepsirank strepsent strepsipand"
for dir in $dirs; do
	cd $dir
 	mvn clean compile source:jar deploy -DskipTests
	cd ..
done

mvn clean compile source:jar deploy -DskipTests

