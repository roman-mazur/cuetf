package data

scaleway_interlink_dedicated_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_interlink_dedicated_connection")
	close({
		// Sizes of the links supported on this dedicated connection
		available_link_bandwidths?: [...number]

		// Bandwidth size of the dedicated connection in Mbps
		bandwidth_mbps?: number

		// The ID of the dedicated connection
		connection_id?: string

		// Creation date of the dedicated connection
		created_at?: string

		// Demarcation details required by the data center to set up the Cross Connect
		demarcation_info?: string
		id?:               string

		// The name of the dedicated connection to filter for
		name?: string

		// Organization ID
		organization_id?: string

		// ID of the PoP where the dedicated connection is located
		pop_id?: string

		// The ID of the project the dedicated connection belongs to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// Status of the dedicated connection
		status?: string

		// List of tags associated with the dedicated connection
		tags?: [...string]

		// Last modification date of the dedicated connection
		updated_at?: string

		// VLAN range for self-hosted links on this dedicated connection
		vlan_range?: [...close({
			end?:   number
			start?: number
		})]
	})
}
