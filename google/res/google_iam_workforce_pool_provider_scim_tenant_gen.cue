package res

#google_iam_workforce_pool_provider_scim_tenant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iam_workforce_pool_provider_scim_tenant")
	close({
		// Represents the base URI as defined in [RFC 7644, Section
		// 1.3](https://datatracker.ietf.org/doc/html/rfc7644#section-1.3).
		// Clients
		// must use this as the root address for managing resources under
		// the tenant.
		// Format:
		// https://iamscim.googleapis.com/{version}/{tenant_id}/
		base_uri?: string

		// Maps BYOID claims to SCIM claims. This is a required field for
		// new SCIM Tenants being created.
		claim_mapping?: [string]: string

		// A user-specified description of the provider. Cannot exceed 256
		// characters.
		description?: string

		// A user-specified display name for the scim tenant. Cannot
		// exceed 32 characters.
		display_name?: string

		// The location for the resource.
		location!: string

		// Identifier. The resource name of the scim tenant.
		// Format:
		// 'locations/{location}/workforcePools/{workforce_pool}/providers/{workforce_pool_provider}/scimTenants/{scim_tenant_id}
		name?: string
		id?:   string

		// The ID of the provider.
		provider_id!: string

		// The timestamp that represents the time when the SCIM tenant is
		// purged.
		purge_time?: string

		// The ID to use for the SCIM tenant, which becomes the final
		// component of the resource name. This value must be 4-32
		// characters, and may contain the characters [a-z0-9-].
		scim_tenant_id!: string
		timeouts?:       #timeouts

		// Service Agent created by SCIM Tenant API. SCIM tokens created
		// under
		// this tenant will be attached to this service agent.
		service_agent?: string

		// The current state of the scim tenant.
		// * ACTIVE: The scim tenant is active and may be used to validate
		// authentication credentials.
		// * DELETED: The scim tenant is soft-deleted. Soft-deleted scim
		// tenants are permanently
		// deleted after approximately 30 days.
		state?: string

		// The ID of the workforce pool.
		workforce_pool_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
