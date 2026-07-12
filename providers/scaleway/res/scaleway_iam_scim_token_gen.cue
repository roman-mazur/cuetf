package res

scaleway_iam_scim_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iam_scim_token")
	close({
		// The Bearer Token to use to authenticate to SCIM endpoints.
		bearer_token?: string

		// The date and time of SCIM token creation
		created_at?: string

		// The date and time when the SCIM token expires
		expires_at?: string

		// The ID of the SCIM token
		id?: string

		// The organization ID. If not provided, the default organization configured in
		// the provider is used.
		organization_id?: string

		// The SCIM configuration ID for which to create the token.
		scim_id!: string
	})
}
