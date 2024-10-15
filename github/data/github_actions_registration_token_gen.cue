package data

#github_actions_registration_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_registration_token")
	expires_at?: number
	id?:         string
	repository!: string
	token?:      string
}
