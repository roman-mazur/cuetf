package data

#scaleway_interlink_pop: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_interlink_pop")
	close({
		// Physical address of the PoP
		address?: string

		// Available bandwidth options in Mbps for hosted links
		available_link_bandwidths_mbps?: [...number]

		// City where the PoP is located
		city?: string

		// Human-readable display name of the PoP
		display_name?: string

		// Name of the PoP's hosting provider
		hosting_provider_name?: string
		id?:                    string

		// URL of the PoP's logo
		logo_url?: string

		// The name of the PoP to filter for
		name?: string

		// The ID of the PoP
		pop_id?: string

		// The region you want to attach the resource to
		region?: string
	})
}
