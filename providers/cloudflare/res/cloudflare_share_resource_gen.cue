package res

cloudflare_share_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_share_resource")
	close({
		// Account identifier.
		account_id!: string

		// When the object was created.
		created?: string

		// Share Resource identifier.
		id?: string

		// Resource Metadata.
		meta!: string

		// When the object was last modified.
		modified?: string

		// The account that owns the resource. Must match the `account_id` in the path.
		resource_account_id!: string

		// Identifier assigned by the service that owns the shared resource.
		resource_id!: string

		// Resource Type.
		// Available values: "custom-ruleset", "gateway-policy",
		// "gateway-destination-ip", "gateway-block-page-settings",
		// "gateway-extended-email-matching", "idp-federation-grant", "trust-grant".
		resource_type!: string

		// Resource Version.
		resource_version?: number

		// Share identifier tag.
		share_id!: string

		// Resource Status.
		// Available values: "active", "deleting", "deleted".
		status?: string
	})
}
