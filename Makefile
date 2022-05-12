deploy: docs/build
	rm -rf /tmp/gh-pages
	git worktree add -f /tmp/gh-pages gh-pages
	cp -rp docs/build/* /tmp/gh-pages/
	cd /tmp/gh-pages && \
		git add -A && \
		git commit -m "deployed on $(shell date) by ${USER}" && \
		git push origin gh-pages
	touch deploy

docs/build: docs/src/* docs/make.jl
	julia --project=@. docs/make.jl

