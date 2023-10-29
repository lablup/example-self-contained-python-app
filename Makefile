script-env:
	pex -o dist/script-env.pex -r scripts/requirements.txt


simple-curl-app:
	cd apps/simple-curl && pex -o deps.pex -r requirements.txt
	cd apps/simple-curl && ~/bin/science lift build --dest-dir=../../dist lift.toml
