package data

#github_ssh_keys: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_ssh_keys")
	close({
		id?: string
		keys?: [...string]
	})
}
