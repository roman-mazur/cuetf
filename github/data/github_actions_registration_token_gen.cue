package data

#github_actions_registration_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_actions_registration_token")
	expires_at?: number
	id?:         string
	repository:  string
	token?:      string
}
