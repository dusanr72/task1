#! /bin/bash

for i in {1..6} 
	do
		mkdir folder.$i
		cd folder.$i
		for j in {1..6}
			do
				r=`tr -dc '[A-Z][a-z][0-9][čćžđšČĆŠĐŽ][:space:]' < /dev/urandom | head -c $j`
			#	r=`tr -dc '[:alpha:][:space:]' < /dev/urandom | head -c $j`
				touch "project_resurs"$r"_dev.yaml"
			done
		cd ..
	done
