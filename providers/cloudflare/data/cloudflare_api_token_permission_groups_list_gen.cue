package data

cloudflare_api_token_permission_groups_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_api_token_permission_groups_list")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// Filter by the name of the permission group.
		// The value must be URL-encoded.
		name?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Product category that this permission group belongs to.
			// Available values: "developer_platform", "ai_and_machine_learning",
			// "dns_and_zones", "app_security", "rules_and_configuration",
			// "cloudflare_one_and_zero_trust", "analytics_and_logs", "network_services",
			// "media", "email_and_messaging", "cache_and_performance",
			// "account_and_billing", "other".
			category?: string

			// Public ID.
			id?: string

			// Whether the caller can select this permission group when creating a token.
			is_selectable?: bool

			// Permission Group Name
			name?: string

			// Resources to which the Permission Group is scoped
			scopes?: [...string]
		}), [...close({
			// Product category that this permission group belongs to.
			// Available values: "developer_platform", "ai_and_machine_learning",
			// "dns_and_zones", "app_security", "rules_and_configuration",
			// "cloudflare_one_and_zero_trust", "analytics_and_logs", "network_services",
			// "media", "email_and_messaging", "cache_and_performance",
			// "account_and_billing", "other".
			category?: string

			// Public ID.
			id?: string

			// Whether the caller can select this permission group when creating a token.
			is_selectable?: bool

			// Permission Group Name
			name?: string

			// Resources to which the Permission Group is scoped
			scopes?: [...string]
		})]])

		// Filter by the scope of the permission group.
		// The value must be URL-encoded.
		scope?: string
	})
}
