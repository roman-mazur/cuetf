package data

#github_ssh_keys: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_ssh_keys")
	id?: string
	keys?: [...string]
}
