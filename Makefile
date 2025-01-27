helm:
	helm dependency build example/
	helm secrets upgrade --install example example/ -f example/values.yaml -f example/values.override.yaml -f example/secrets.override.yaml --dry-run --debug

test:
	build
	dry-run

encrypt:
	sh -c 'cd example && sops -e -i secrets.override.yaml'

decrypt:
	sh -c 'cd example && sops -d -i secrets.override.yaml'
