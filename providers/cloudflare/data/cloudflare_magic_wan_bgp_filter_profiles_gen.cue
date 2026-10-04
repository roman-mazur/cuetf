package data

cloudflare_magic_wan_bgp_filter_profiles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_magic_wan_bgp_filter_profiles")
	close({
		// Identifier
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			created_on?: string

			// Description of the filter profile
			description?: string

			// Identifier
			id?: string

			// Action to take when a route matches one of the targets in this profile
			// Available values: "allow", "deny".
			match_action?: string

			// Friendly name for the filter profile
			name?:        string
			modified_on?: string

			// List of CIDR prefixes. Each entry may carry an optional suffix that specifies
			// which prefix lengths to match relative to the prefix length N: '{X,Y}'
			// matches prefix lengths in the inclusive range [X, Y] where N <= X <= Y <=
			// max (max is 32 for IPv4, 128 for IPv6), '{X}' matches exactly length X
			// (equivalent to {X,X}), '+' is shorthand for {N, max} (the prefix and all
			// more-specific subnets, including at length N itself; valid even when N is
			// the maximum length). Omit the suffix to match the prefix exactly at length
			// N.
			targets?: [...string]
		}), [...close({
			created_on?: string

			// Description of the filter profile
			description?: string

			// Identifier
			id?: string

			// Action to take when a route matches one of the targets in this profile
			// Available values: "allow", "deny".
			match_action?: string

			// Friendly name for the filter profile
			name?:        string
			modified_on?: string

			// List of CIDR prefixes. Each entry may carry an optional suffix that specifies
			// which prefix lengths to match relative to the prefix length N: '{X,Y}'
			// matches prefix lengths in the inclusive range [X, Y] where N <= X <= Y <=
			// max (max is 32 for IPv4, 128 for IPv6), '{X}' matches exactly length X
			// (equivalent to {X,X}), '+' is shorthand for {N, max} (the prefix and all
			// more-specific subnets, including at length N itself; valid even when N is
			// the maximum length). Omit the suffix to match the prefix exactly at length
			// N.
			targets?: [...string]
		})]])
	})
}
