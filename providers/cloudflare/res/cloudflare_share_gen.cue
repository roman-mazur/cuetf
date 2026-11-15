package res

cloudflare_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_share")
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

		// When the object was created.
		created?: string

		// The number of recipients in the 'disassociated' state. This field is only
		// included when requested via the 'include_recipient_counts' parameter.
		disassociated_recipient_count?: number

		// The number of recipients in the 'disassociating' state. This field is only
		// included when requested via the 'include_recipient_counts' parameter.
		disassociating_recipient_count?: number

		// Accounts to exclude from an organization-targeted share. Only allowed when
		// `recipients` contains no account entries. The share owner cannot be
		// excluded. Duplicate entries are ignored.
		excluded_recipients?: matchN(1, [close({
			// The account to exclude from the organization-targeted share.
			account_id!: string
		}), [...close({
			// The account to exclude from the organization-targeted share.
			account_id!: string
		})]])

		// Share identifier tag.
		id?: string

		// Include recipient counts in the response.
		include_recipient_counts?: bool

		// Include resources in the response.
		include_resources?: bool

		// Include share tags in the response. `api` reads tags from the tag service;
		// `mirror` reads a local, eventually consistent replica. If the tag lookup
		// fails, the response omits `tags`.
		// Available values: "api", "mirror".
		include_tags_from?: string

		// Available values: "sent", "received".
		kind?: string

		// When the object was last modified.
		modified?: string

		// The name of the share.
		name!: string

		// Organization identifier.
		organization_id?: string
		recipients?: matchN(1, [close({
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
		resources?: matchN(1, [close({
			// Resource Metadata.
			meta!: string

			// The account that owns the resource. Must match the `account_id` in the path.
			resource_account_id!: string

			// Identifier assigned by the service that owns the shared resource.
			resource_id!: string

			// Resource Type.
			// Available values: "custom-ruleset", "gateway-policy",
			// "gateway-destination-ip", "gateway-block-page-settings",
			// "gateway-extended-email-matching", "idp-federation-grant", "trust-grant".
			resource_type!: string
		}), [...close({
			// Resource Metadata.
			meta!: string

			// The account that owns the resource. Must match the `account_id` in the path.
			resource_account_id!: string

			// Identifier assigned by the service that owns the shared resource.
			resource_id!: string

			// Resource Type.
			// Available values: "custom-ruleset", "gateway-policy",
			// "gateway-destination-ip", "gateway-block-page-settings",
			// "gateway-extended-email-matching", "idp-federation-grant", "trust-grant".
			resource_type!: string
		})]])

		// Available values: "active", "deleting", "deleted".
		status?: string

		// Tags associated with the share.
		tags?: [string]: string

		// Available values: "account", "organization".
		target_type?: string
	})
}
