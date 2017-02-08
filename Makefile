NAME = core packaging

.PHONY: all build publish bump_patch bump_minor bump_major

all: build

build:
	./gradlew cleanup npmInstall composerInstall vendor encodeZip

publish:
	./gradlew  publish

bump_patch:
	bumpversion patch

bump_minor:
	bumpversion minor

bump_major:
	bumpversion major

