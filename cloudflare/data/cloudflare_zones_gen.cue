package data

#cloudflare_zones: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zones")
	close({
		// Direction to order zones.
		// Available values: "asc", "desc".
		direction?: string

		// Whether to match all search requirements or at least one (any).
		// Available values: "any", "all".
		match?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// A domain name. Optional filter operators can be provided to
		// extend refine the search:
		// * `equal` (default)
		// * `not_equal`
		// * `starts_with`
		// * `ends_with`
		// * `contains`
		// * `starts_with_case_sensitive`
		// * `ends_with_case_sensitive`
		// * `contains_case_sensitive`
		name?: string

		// Field to order zones by.
		// Available values: "name", "status", "account.id",
		// "account.name", "plan.id".
		order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// The last time proof of ownership was detected and the zone was
			// made
			// active.
			activated_on?: string

			// The account the zone belongs to.
			account?: close({
				// Identifier
				id?: string

				// The name of the account.
				name?: string
			})

			// Allows the customer to use a custom apex.
			// *Tenants Only Configuration*.
			cname_suffix?: string

			// When the zone was created.
			created_on?: string

			// The interval (in seconds) from when development mode expires
			// (positive integer) or last expired (negative integer) for the
			// domain. If development mode has never been enabled, this value
			// is 0.
			development_mode?: number

			// Identifier
			id?: string

			// Metadata about the zone.
			meta?: close({
				// The zone is only configured for CDN.
				cdn_only?: bool

				// Number of Custom Certificates the zone can have.
				custom_certificate_quota?: number

				// The zone is only configured for DNS.
				dns_only?: bool

				// The zone is setup with Foundation DNS.
				foundation_dns?: bool

				// Number of Page Rules a zone can have.
				page_rule_quota?: number

				// The zone has been flagged for phishing.
				phishing_detected?: bool
				step?:              number
			})

			// When the zone was last modified.
			modified_on?: string

			// The domain name.
			name?: string

			// The owner of the zone.
			owner?: close({
				// Identifier
				id?: string

				// Name of the owner.
				name?: string

				// The type of owner.
				type?: string
			})

			// The name servers Cloudflare assigns to a zone.
			name_servers?: [...string]

			// DNS host at the time of switching to Cloudflare.
			original_dnshost?: string

			// Original name servers before moving to Cloudflare.
			original_name_servers?: [...string]

			// The root organizational unit that this zone belongs to (such as
			// a tenant or organization).
			tenant?: close({
				// Identifier
				id?: string

				// The name of the Tenant account.
				name?: string
			})

			// Registrar for the domain at the time of switching to
			// Cloudflare.
			original_registrar?: string

			// Indicates whether the zone is only using Cloudflare DNS
			// services. A
			// true value means the zone will not receive security or
			// performance
			// benefits.
			paused?: bool

			// The zone status on Cloudflare.
			// Available values: "initializing", "pending", "active", "moved".
			status?: string

			// A full zone implies that DNS is hosted with Cloudflare. A
			// partial zone is
			// typically a partner-hosted zone or a CNAME setup.
			// Available values: "full", "partial", "secondary", "internal".
			type?: string

			// The immediate parent organizational unit that this zone belongs
			// to (such as under a tenant or sub-organization).
			tenant_unit?: close({
				// Identifier
				id?: string
			})

			// An array of domains used for custom name servers. This is only
			// available for Business and Enterprise plans.
			vanity_name_servers?: [...string]

			// Verification key for partial zone setup.
			verification_key?: string
		}), [...close({
			// The last time proof of ownership was detected and the zone was
			// made
			// active.
			activated_on?: string

			// The account the zone belongs to.
			account?: close({
				// Identifier
				id?: string

				// The name of the account.
				name?: string
			})

			// Allows the customer to use a custom apex.
			// *Tenants Only Configuration*.
			cname_suffix?: string

			// When the zone was created.
			created_on?: string

			// The interval (in seconds) from when development mode expires
			// (positive integer) or last expired (negative integer) for the
			// domain. If development mode has never been enabled, this value
			// is 0.
			development_mode?: number

			// Identifier
			id?: string

			// Metadata about the zone.
			meta?: close({
				// The zone is only configured for CDN.
				cdn_only?: bool

				// Number of Custom Certificates the zone can have.
				custom_certificate_quota?: number

				// The zone is only configured for DNS.
				dns_only?: bool

				// The zone is setup with Foundation DNS.
				foundation_dns?: bool

				// Number of Page Rules a zone can have.
				page_rule_quota?: number

				// The zone has been flagged for phishing.
				phishing_detected?: bool
				step?:              number
			})

			// When the zone was last modified.
			modified_on?: string

			// The domain name.
			name?: string

			// The owner of the zone.
			owner?: close({
				// Identifier
				id?: string

				// Name of the owner.
				name?: string

				// The type of owner.
				type?: string
			})

			// The name servers Cloudflare assigns to a zone.
			name_servers?: [...string]

			// DNS host at the time of switching to Cloudflare.
			original_dnshost?: string

			// Original name servers before moving to Cloudflare.
			original_name_servers?: [...string]

			// The root organizational unit that this zone belongs to (such as
			// a tenant or organization).
			tenant?: close({
				// Identifier
				id?: string

				// The name of the Tenant account.
				name?: string
			})

			// Registrar for the domain at the time of switching to
			// Cloudflare.
			original_registrar?: string

			// Indicates whether the zone is only using Cloudflare DNS
			// services. A
			// true value means the zone will not receive security or
			// performance
			// benefits.
			paused?: bool

			// The zone status on Cloudflare.
			// Available values: "initializing", "pending", "active", "moved".
			status?: string

			// A full zone implies that DNS is hosted with Cloudflare. A
			// partial zone is
			// typically a partner-hosted zone or a CNAME setup.
			// Available values: "full", "partial", "secondary", "internal".
			type?: string

			// The immediate parent organizational unit that this zone belongs
			// to (such as under a tenant or sub-organization).
			tenant_unit?: close({
				// Identifier
				id?: string
			})

			// An array of domains used for custom name servers. This is only
			// available for Business and Enterprise plans.
			vanity_name_servers?: [...string]

			// Verification key for partial zone setup.
			verification_key?: string
		})]])
		account?: close({
			// Filter by an account ID.
			id?: string

			// An account Name. Optional filter operators can be provided to
			// extend refine the search:
			// * `equal` (default)
			// * `not_equal`
			// * `starts_with`
			// * `ends_with`
			// * `contains`
			// * `starts_with_case_sensitive`
			// * `ends_with_case_sensitive`
			// * `contains_case_sensitive`
			name?: string
		})

		// Specify a zone status to filter by.
		// Available values: "initializing", "pending", "active", "moved".
		status?: string
	})
}
