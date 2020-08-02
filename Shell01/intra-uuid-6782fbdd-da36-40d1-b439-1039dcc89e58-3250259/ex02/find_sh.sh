for i in $(find . -type f -name "*.sh" -exec basename '{}' ';' | sort -n );do
	echo ${i%.*}
done
