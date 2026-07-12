package data

scaleway_iam_scim_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_iam_scim_token")
	close({
		// The date and time of SCIM token creation
		created_at?: string

		// The date and time when the SCIM token expires
		expires_at?: string

		// The ID of the SCIM token
		id?: string

		// The organization ID. If not provided, the default organization configured in
		// the provider is used.
		organization_id?: string

		// The SCIM configuration ID. If not provided, the SCIM configuration for the organization is used.
		scim_id?: string

		// The ID of the SCIM token to retrieve.
		token_id!: string
	})
}
