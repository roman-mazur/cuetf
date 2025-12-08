package res

#google_compute_public_delegated_prefix: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_public_delegated_prefix")
	close({
		// The allocatable prefix length supported by this public
		// delegated prefix. This field is optional and cannot be set for
		// prefixes in DELEGATION mode. It cannot be set for IPv4
		// prefixes either, and it always defaults to 32.
		allocatable_prefix_length?: number

		// An optional description of this resource.
		description?: string
		id?:          string

		// The IP address range, in CIDR format, represented by this
		// public delegated prefix.
		ip_cidr_range!: string

		// The internet access type for IPv6 Public Delegated Prefixes.
		// Inherited
		// from parent prefix and can be one of following:
		// * EXTERNAL: The prefix will be announced to the internet. All
		// children
		// PDPs will have access type as EXTERNAL.
		// * INTERNAL: The prefix won’t be announced to the internet.
		// Prefix will
		// be used privately within Google Cloud. All children PDPs will
		// have
		// access type as INTERNAL.
		ipv6_access_type?: string

		// If true, the prefix will be live migrated.
		is_live_migration?: bool

		// Specifies the mode of this IPv6 PDP. MODE must be one of:
		// * DELEGATION
		// * EXTERNAL_IPV6_FORWARDING_RULE_CREATION
		// * EXTERNAL_IPV6_SUBNETWORK_CREATION
		// * INTERNAL_IPV6_SUBNETWORK_CREATION Possible values:
		// ["DELEGATION", "EXTERNAL_IPV6_FORWARDING_RULE_CREATION",
		// "EXTERNAL_IPV6_SUBNETWORK_CREATION",
		// "INTERNAL_IPV6_SUBNETWORK_CREATION"]
		mode?: string

		// Name of the resource. The name must be 1-63 characters long,
		// and
		// comply with RFC1035. Specifically, the name must be 1-63
		// characters
		// long and match the regular expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?'
		// which means the first character must be a lowercase letter, and
		// all
		// following characters must be a dash, lowercase letter, or
		// digit,
		// except the last character, which cannot be a dash.
		name!: string

		// The URL of parent prefix. Either PublicAdvertisedPrefix or
		// PublicDelegatedPrefix.
		parent_prefix!: string
		timeouts?:      #timeouts
		project?:       string

		// List of sub public delegated fixes for BYO IP functionality.
		// Each item in this array represents a sub prefix that can be
		// used to create addresses or further allocations.
		public_delegated_sub_prefixs?: [...close({
			allocatable_prefix_length?: number
			delegatee_project?:         string
			description?:               string
			ip_cidr_range?:             string
			ipv6_access_type?:          string
			is_address?:                bool
			mode?:                      string
			name?:                      string
			region?:                    string
			status?:                    string
		})]

		// A region where the prefix will reside.
		region!:    string
		self_link?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
