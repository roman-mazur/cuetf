package data

#scaleway_interlink_pops: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_interlink_pops")
	close({
		// Filter for PoPs with a dedicated connection available for
		// self-hosted links
		dedicated_available?: bool

		// Hosting provider name to filter for
		hosting_provider_name?: string
		id?:                    string

		// Filter for PoPs with a shared connection allowing this
		// bandwidth size
		link_bandwidth_mbps?: number

		// PoP name to filter for
		name?: string

		// Filter for PoPs hosting an available shared connection from
		// this partner
		partner_id?: string

		// List of PoPs
		pops?: [...close({
			address?: string
			available_link_bandwidths_mbps?: [...number]
			city?:                  string
			display_name?:          string
			hosting_provider_name?: string
			id?:                    string
			logo_url?:              string
			name?:                  string
			region?:                string
		})]

		// The region you want to attach the resource to
		region?: string
	})
}
