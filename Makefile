.PHONY: all setup pull-idris2

all:
	@echo "The default task. Does nothing yet..."

setup:
	git remote add idris2 https://github.com/edwinb/Idris2

pull-idris2:
	git pull --strategy=subtree idris2 master
