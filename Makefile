.PHONY: all clean codegen build
.PHONE: deps compile shell

SHELL := BASH_ENV=.rc /bin/bash --noprofile

all: codegen build

# codegen targets
codegen: swagger.yaml lib/idwallex

swagger.yaml: plataforma_idwall_v3.postman_collection.json
	p2o plataforma_idwall_v3.postman_collection.json > swagger.yaml

lib/idwallex: swagger.yaml
	openapi-generator-cli generate -i swagger.yaml -g elixir --skip-validate-spec --additional-properties=packageName=idwallex --additional-properties=invokerPackage=Idwallex -o out
	mv out/lib lib
	rm -rf out

# Elixir targets
build: deps compile

deps:
	mix deps.get

compile:
	mix compile

shell:
	iex -S mix

# Other targets
clean:
	mix clean --all
	mix deps.clean --all
	rm -f swagger.yaml
	rm -rf lib