package data

#scaleway_vpc_public_gateway_dhcp_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_vpc_public_gateway_dhcp_reservation")
	close({
		// The configuration creation date.
		created_at?: string

		// The ID of the owning GatewayNetwork (UUID format).
		gateway_network_id?: string

		// The Hostname of the client machine.
		hostname?: string
		id?:       string

		// The IP address to give to the machine (IPv4 address).
		ip_address?: string

		// The MAC address to give a static entry to.
		mac_address?: string

		// The ID of dhcp entry reservation
		reservation_id?: string

		// The reservation type, either static (DHCP reservation) or
		// dynamic (DHCP lease). Possible values are reservation and
		// lease
		type?: string

		// The configuration last modification date.
		updated_at?: string

		// Wait the MAC address in dhcp entries
		wait_for_dhcp?: bool

		// The zone you want to attach the resource to
		zone?: string
	})
}
