main:
	echo 'Hi'

deploy:
	-git checkout gh-pages
	-cp _book/* ./
	-git add -A 
	-git commit -m 'Update'
	-git push origin gh-pages

.PHONY: main deploy