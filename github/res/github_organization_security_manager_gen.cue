package res

#github_organization_security_manager: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_security_manager")
	close({
		id?:        string
		team_slug!: string
	})
}
