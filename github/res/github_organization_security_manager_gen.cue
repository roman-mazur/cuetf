package res

#github_organization_security_manager: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_organization_security_manager")
	id?:        string
	team_slug!: string
}
