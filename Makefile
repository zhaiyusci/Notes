all:
	julia --project=@. docs/make.jl
	ghp-import -m "$(shell date)" docs/build
	git push origin gh-pages
	git add .
	git commit -a -m "$(shell date)"
	git push origin main
