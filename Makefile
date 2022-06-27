init:
	rm -rf .git
	rm -rf bar
	rm README.md
	echo "# submodules2 master" > README.md
	git init # reinitialise git and nuke everything
	git add .
	git commit -m "Initial commit"
	git remote add origin https://github.com/dave/submodules2.git
	git push --set-upstream --force origin master
	git submodule add https://github.com/dave/submodules3 bar
	git submodule set-branch --branch master bar # remember this is the path relative to the .git home dir (not to the current dir)
	git add .
	git commit -m "Added bar submodule"
	git push

change:
	git submodule set-branch --branch new bar # remember this is the path relative to the .git home dir (not to the current dir)
	git add .
	git commit -m "Changed bar submodule to new branch"
	git push --force
