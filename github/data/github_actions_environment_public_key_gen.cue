package data

#github_actions_environment_public_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_actions_environment_public_key")
	close({
		environment!: string
		id?:          string
		key?:         string
		key_id?:      string
		repository!:  string
	})
}
