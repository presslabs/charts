.PHONY: index
index:
	cd docs && helm repo index --url https://presslabs.github.io/charts ./

.PHONY: publish
publish:
	git add docs/*
	git commit -m "Republish charts [CI SKIP]"
	git push origin master
