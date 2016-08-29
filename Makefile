.PHONY: all build review update clean

all: install build

install:
	gitbook install

build:
	gitbook build

review:
	gitbook serve

update:
	git pull origin master --rebase

clean:
	rm -rf _book/ node_modules/
