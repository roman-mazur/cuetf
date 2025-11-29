package data

#google_compute_network_peering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_network_peering")
	close({
		// Whether to export the custom routes to the peer network.
		// Defaults to false.
		export_custom_routes?: bool

		// Whether to export the custom routes from the peer network.
		// Defaults to false.
		import_custom_routes?:                bool
		export_subnet_routes_with_public_ip?: bool

		// Name of the peering.
		name!: string
		id?:   string

		// The primary network of the peering.
		network!:                             string
		import_subnet_routes_with_public_ip?: bool

		// The peer network in the peering. The peer network may belong to
		// a different project.
		peer_network?: string

		// Which IP version(s) of traffic and routes are allowed to be
		// imported or exported between peer networks. The default value
		// is IPV4_ONLY. Possible values: ["IPV4_ONLY", "IPV4_IPV6"]
		stack_type?: string

		// State for the peering, either ACTIVE or INACTIVE. The peering
		// is ACTIVE when there's a matching configuration in the peer
		// network.
		state?:    string
		timeouts?: #timeouts

		// Details about the current state of the peering.
		state_details?: string

		// The update strategy determines the semantics for updates and
		// deletes to the peering connection configuration. The default
		// value is INDEPENDENT. Possible values: ["INDEPENDENT",
		// "CONSENSUS"]
		update_strategy?: string
	})

	#timeouts: close({
		read?: string
	})
}
