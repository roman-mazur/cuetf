package res

#github_repository_dependabot_security_updates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_repository_dependabot_security_updates")
	enabled:    bool
	id?:        string
	repository: string
}
