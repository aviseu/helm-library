build:
	 helm dependency build example/

dry-run:
	helm install example example/ -f example/values.yaml -f example/values.override.yaml --dry-run --debug

test:
	build
	dry-run
