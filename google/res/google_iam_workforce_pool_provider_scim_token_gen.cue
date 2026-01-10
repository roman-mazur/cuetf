package res

#google_iam_workforce_pool_provider_scim_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iam_workforce_pool_provider_scim_token")
	close({
		// A user-specified display name for the scim token. Cannot exceed
		// 32 characters.
		display_name?: string

		// The location for the resource.
		location!: string
		id?:       string

		// Identifier. The resource name of the scim token.
		// Format:
		// 'locations/{location}/workforcePools/{workforce_pool}/providers/{workforce_pool_provider}/scimTenants/{scim_tenant_id}/tokens/{scim_token_id}'
		name?: string

		// The ID of the Provider.
		provider_id!: string

		// The ID of the SCIM Tenant.
		scim_tenant_id!: string

		// The ID to use for the SCIM Token, which becomes the final
		// component of the resource name. This value should be 4-32
		// characters and follow the pattern:
		// '([a-z]([a-z0-9\\-]{2,30}[a-z0-9]))'.
		scim_token_id!: string

		// The token string provided to the IdP for authentication and
		// will be set only during creation.
		security_token?: string
		timeouts?:       #timeouts

		// The current state of the scim token.
		// * ACTIVE: The token is active and may be used to provision
		// users and groups.
		// * DELETED: The token is soft-deleted. Soft-deleted tokens are
		// permanently deleted after approximately 30 days.
		state?: string

		// The ID of the Workforce Pool.
		workforce_pool_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
