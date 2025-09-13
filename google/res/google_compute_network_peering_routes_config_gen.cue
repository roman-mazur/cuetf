package res

#google_compute_network_peering_routes_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_network_peering_routes_config")
	close({
		// Whether to export the custom routes to the peer network.
		export_custom_routes!: bool

		// Whether subnet routes with public IP range are exported.
		// IPv4 special-use ranges are always exported to peers and
		// are not controlled by this field.
		export_subnet_routes_with_public_ip?: bool
		id?:                                  string

		// Whether to import the custom routes to the peer network.
		import_custom_routes!: bool

		// Whether subnet routes with public IP range are imported.
		// IPv4 special-use ranges are always imported from peers and
		// are not controlled by this field.
		import_subnet_routes_with_public_ip?: bool

		// The name of the primary network for the peering.
		network!: string

		// Name of the peering.
		peering!:  string
		timeouts?: #timeouts
		project?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
