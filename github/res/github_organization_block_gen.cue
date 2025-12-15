package res

#github_organization_block: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_organization_block")
	close({
		etag?: string
		id?:   string

		// The name of the user to block.
		username!: string
	})
}
