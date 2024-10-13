package data

#github_dependabot_public_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_dependabot_public_key")
	id?:         string
	key?:        string
	key_id?:     string
	repository!: string
}
