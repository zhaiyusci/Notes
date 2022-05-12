.PHONY: deploy
deploy: docs/build
	ghp-import -m "$(shell date)" docs/build
	git push origin gh-pages
	git add .
	git commit -a -m "$(shell date)"
	git push origin main

docs/build: docs/src docs/make.jl
	julia --project=@. docs/make.jl

