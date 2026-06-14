package res

#cloudflare_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_share")
	close({
		// Account identifier.
		account_id!: string

		// The display name of an account.
		account_name?: string

		// The number of recipients in the 'associated' state. This field
		// is only included when requested via the
		// 'include_recipient_counts' parameter.
		associated_recipient_count?: number

		// The number of recipients in the 'associating' state. This field
		// is only included when requested via the
		// 'include_recipient_counts' parameter.
		associating_recipient_count?: number

		// When the share was created.
		created?: string

		// The number of recipients in the 'disassociated' state. This
		// field is only included when requested via the
		// 'include_recipient_counts' parameter.
		disassociated_recipient_count?: number

		// The number of recipients in the 'disassociating' state. This
		// field is only included when requested via the
		// 'include_recipient_counts' parameter.
		disassociating_recipient_count?: number

		// Share identifier tag.
		id?: string

		// Available values: "sent", "received".
		kind?: string

		// When the share was modified.
		modified?: string

		// The name of the share.
		name!: string

		// Organization identifier.
		organization_id?: string

		// Available values: "active", "deleting", "deleted".
		status?: string

		// Available values: "account", "organization".
		target_type?: string
		recipients!: matchN(1, [close({
			// Organization identifier.
			organization_id?: string

			// The account that will receive the share.
			recipient_account_id?: string
		}), [...close({
			// Organization identifier.
			organization_id?: string

			// The account that will receive the share.
			recipient_account_id?: string
		})]])
		resources!: matchN(1, [close({
			// Resource Metadata.
			meta!: string

			// Account identifier.
			resource_account_id!: string

			// Share Resource identifier.
			resource_id!: string

			// Resource Type.
			// Available values: "custom-ruleset", "gateway-policy",
			// "gateway-destination-ip", "gateway-block-page-settings",
			// "gateway-extended-email-matching", "idp-federation-grant".
			resource_type!: string
		}), [...close({
			// Resource Metadata.
			meta!: string

			// Account identifier.
			resource_account_id!: string

			// Share Resource identifier.
			resource_id!: string

			// Resource Type.
			// Available values: "custom-ruleset", "gateway-policy",
			// "gateway-destination-ip", "gateway-block-page-settings",
			// "gateway-extended-email-matching", "idp-federation-grant".
			resource_type!: string
		})]])
	})
}
