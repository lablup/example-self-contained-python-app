script-env:
	pex -o dist/script-env.pex -r scripts/requirements.txt


simple-curl-app:
	$(MAKE) -C apps/simple-curl
