package data

#scaleway_vpc_public_gateway_dhcp: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_vpc_public_gateway_dhcp")
	close({
		// The address of the DHCP server. This will be the gateway's
		// address in the private network. Defaults to the first address
		// of the subnet
		address?: string

		// The date and time of the creation of the public gateway.
		created_at?: string

		// The ID of the public gateway DHCP configuration
		dhcp_id!: string

		// TLD given to hostnames in the Private Network. Allowed
		// characters are `a-z0-9-.`. Defaults to the slugified Private
		// Network name if created along a GatewayNetwork, or else to
		// `priv`.
		dns_local_name?: string

		// Additional DNS search paths.
		dns_search?: [...string]

		// Override the DNS server list pushed to DHCP clients, instead of
		// the gateway itself.
		dns_servers_override?: [...string]

		// Whether to enable dynamic pooling of IPs. By turning the
		// dynamic pool off, only pre-existing DHCP reservations will be
		// handed out. Defaults to true.
		enable_dynamic?: bool
		id?:             string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// High IP (included) of the dynamic address pool. Defaults to the
		// last address of the subnet.
		pool_high?: string

		// Low IP (included) of the dynamic address pool. Defaults to the
		// second address of the subnet.
		pool_low?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// Whether the gateway should push a default route to DHCP clients
		// or only hand out IPs. Defaults to true.
		push_default_route?: bool

		// Whether the gateway should push custom DNS servers to clients.
		// This allows for instance hostname -> IP resolution. Defaults
		// to true.
		push_dns_server?: bool

		// After how long, in seconds, a DHCP client will query for a new
		// lease if previous renews fail. Must be 30s lower than
		// `valid_lifetime`. Defaults to 51m (3060s).
		rebind_timer?: number

		// After how long, in seconds, a renew will be attempted. Must be
		// 30s lower than `rebind_timer`. Defaults to 50m (3000s).
		renew_timer?: number

		// Subnet for the DHCP server
		subnet?: string

		// The date and time of the last update of the public gateway.
		updated_at?: string

		// For how long, in seconds, will DHCP entries will be valid.
		// Defaults to 1h (3600s).
		valid_lifetime?: number

		// The zone you want to attach the resource to
		zone?: string
	})
}
