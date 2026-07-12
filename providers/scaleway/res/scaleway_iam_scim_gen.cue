package res

scaleway_iam_scim: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iam_scim")
	close({
		// The date and time of SCIM configuration creation
		created_at?: string

		// The ID of the SCIM configuration
		id?: string

		// The organization ID. If not provided, the default organization configured in
		// the provider is used.
		organization_id?: string
	})
}
