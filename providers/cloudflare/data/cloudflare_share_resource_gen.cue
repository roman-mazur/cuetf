package data

cloudflare_share_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_share_resource")
	close({
		// Account identifier.
		account_id!: string

		// When the share was created.
		created?: string
		filter?: close({
			// Filter share resources by resource_type.
			// Available values: "custom-ruleset", "gateway-policy",
			// "gateway-destination-ip", "gateway-block-page-settings",
			// "gateway-extended-email-matching", "idp-federation-grant".
			resource_type?: string

			// Filter share resources by status.
			// Available values: "active", "deleting", "deleted".
			status?: string
		})

		// Share Resource identifier.
		id?: string

		// Resource Metadata.
		meta?: string

		// When the share was modified.
		modified?: string

		// Account identifier.
		resource_account_id?: string

		// Share Resource identifier.
		resource_id?: string

		// Resource Type.
		// Available values: "custom-ruleset", "gateway-policy",
		// "gateway-destination-ip", "gateway-block-page-settings",
		// "gateway-extended-email-matching", "idp-federation-grant".
		resource_type?: string

		// Resource Version.
		resource_version?: number

		// Share identifier tag.
		share_id!: string

		// Share Resource identifier.
		share_resource_id?: string

		// Resource Status.
		// Available values: "active", "deleting", "deleted".
		status?: string
	})
}
