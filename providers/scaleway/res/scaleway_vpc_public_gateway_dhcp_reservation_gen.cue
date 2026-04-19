package res

#scaleway_vpc_public_gateway_dhcp_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_vpc_public_gateway_dhcp_reservation")
	close({
		// The configuration creation date.
		created_at?: string

		// The ID of the owning GatewayNetwork (UUID format).
		gateway_network_id!: string
		timeouts?:           #timeouts

		// The Hostname of the client machine.
		hostname?: string

		// The IP address to give to the machine (IPv4 address).
		ip_address!: string
		id?:         string

		// The MAC address to give a static entry to.
		mac_address!: string

		// The reservation type, either static (DHCP reservation) or
		// dynamic (DHCP lease). Possible values are reservation and
		// lease
		type?: string

		// The configuration last modification date.
		updated_at?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	})
}
