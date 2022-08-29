.PHONY: index
index:
	cd docs && helm repo index --url https://presslabs.github.io/charts ./

.PHONY: publish
publish:
	git branch
	git add docs/*
	git commit -m "Republish charts [CI SKIP]"
	git push
