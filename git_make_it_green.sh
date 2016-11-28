rm -rf test_file.txt
a=$(($(date +"%u") *3))
echo $a
for ((i=1; i<=$a; ++i))
do
	echo "Hello" >> test_file.txt
	git add .
	git commit -m "say hello"
	git push origin master
done

