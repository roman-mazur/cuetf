package res

#scaleway_flexible_ip_mac_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_flexible_ip_mac_address")
	close({
		timeouts?: #timeouts

		// Virtual MAC address
		address?: string

		// The date and time of the creation of the virtual MAC (Format
		// ISO 8601)
		created_at?: string

		// The ID of the flexible IP for which to generate a virtual MAC
		flexible_ip_id!: string

		// The IDs of the flexible IPs on which to duplicate the virtual
		// MAC
		//
		// **NOTE** : The flexible IPs need to be attached to the same
		// server for the operation to work.
		flexible_ip_ids_to_duplicate?: [...string]
		id?: string

		// Virtual MAC status
		status?: string

		// The type of the virtual MAC
		type!: string

		// The date and time of the last update of the virtual MAC (Format
		// ISO 8601)
		updated_at?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
