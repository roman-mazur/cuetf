package res

#github_organization_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_project")
	body?: string
	etag?: string
	id?:   string
	name!: string
	url?:  string
}
