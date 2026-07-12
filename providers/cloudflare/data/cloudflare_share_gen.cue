package data

cloudflare_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_share")
	close({
		// Account identifier.
		account_id!: string

		// The display name of an account.
		account_name?: string

		// The number of recipients in the 'associated' state. This field is only
		// included when requested via the 'include_recipient_counts' parameter.
		associated_recipient_count?: number

		// The number of recipients in the 'associating' state. This field is only
		// included when requested via the 'include_recipient_counts' parameter.
		associating_recipient_count?: number

		// When the share was created.
		created?: string

		// The number of recipients in the 'disassociated' state. This field is only
		// included when requested via the 'include_recipient_counts' parameter.
		disassociated_recipient_count?: number

		// The number of recipients in the 'disassociating' state. This field is only
		// included when requested via the 'include_recipient_counts' parameter.
		disassociating_recipient_count?: number
		filter?: close({
			// Direction to sort objects.
			// Available values: "asc", "desc".
			direction?: string

			// Filter shares by kind.
			// Available values: "sent", "received".
			kind?: string

			// Order shares by values in the given field.
			// Available values: "name", "created".
			order?: string

			// Filter share resources by resource_types.
			resource_types?: [...string]

			// Filter shares by status.
			// Available values: "active", "deleting", "deleted".
			status?: string

			// Filter shares by tag. Each value is either `key=value` (matches shares whose
			// tags contain that key/value pair) or `key` alone (matches shares that have
			// any value for that key). May be repeated; multiple `tag` parameters are
			// ANDed together. Maximum 20 `tag` parameters per request.
			tag?: [...string]

			// Filter shares by target_type.
			// Available values: "account", "organization".
			target_type?: string
		})

		// Share identifier tag.
		id?: string

		// Include recipient counts in the response.
		include_recipient_counts?: bool

		// Include resources in the response.
		include_resources?: bool

		// Available values: "sent", "received".
		kind?: string

		// When the share was modified.
		modified?: string

		// The name of the share.
		name?: string

		// Organization identifier.
		organization_id?: string

		// A list of resources that are part of the share. This field is only included
		// when requested via the 'include_resources' parameter.
		resources?: matchN(1, [close({
			// When the share was created.
			created?: string

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

			// Resource Status.
			// Available values: "active", "deleting", "deleted".
			status?: string
		}), [...close({
			// When the share was created.
			created?: string

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

			// Resource Status.
			// Available values: "active", "deleting", "deleted".
			status?: string
		})]])

		// Share identifier tag.
		share_id?: string

		// Available values: "active", "deleting", "deleted".
		status?: string

		// Available values: "account", "organization".
		target_type?: string
	})
}
