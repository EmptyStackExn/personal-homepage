all:
	jekyll build

delete-remote:
	ssh nguyen-van@zamok "rm -fr /home/nguyen-van/www"

update: all
	mv _site/index.html _site/index.php
	rsync -avz --exclude=keepall --delete _site/ nguyen-van@zamok:/home/nguyen-van/www

clean:
	rm -fr _site