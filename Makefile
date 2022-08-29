WORK_DIR := _work

.PHONY: index
index:
	cd docs && helm repo index --url https://presslabs.github.io/charts ./

.PHONY: publish
publish:
	ls -la
	git status
	git add docs/*
	git commit -m "Republish charts [CI SKIP]"
	git push origin master
