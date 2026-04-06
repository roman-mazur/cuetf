package data

#scaleway_s2s_vpn_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_s2s_vpn_connection")
	close({
		// The list of IKE v2 ciphers proposed for the IPsec tunnel
		bgp_config_ipv4?: [...close({
			peer_private_ip?:   string
			private_ip?:        string
			routing_policy_id?: string
		})]

		// The list of IKE v2 ciphers proposed for the IPsec tunnel
		bgp_config_ipv6?: [...close({
			peer_private_ip?:   string
			private_ip?:        string
			routing_policy_id?: string
		})]

		// The BGP IPv4 session information (read-only)
		bgp_session_ipv4?: [...close({
			peer_private_ip?:   string
			private_ip?:        string
			routing_policy_id?: string
		})]

		// The BGP IPv6 session information (read-only)
		bgp_session_ipv6?: [...close({
			peer_private_ip?:   string
			private_ip?:        string
			routing_policy_id?: string
		})]

		// The status of the BGP IPv4 session
		bgp_status_ipv4?: string

		// The status of the BGP IPv6 session
		bgp_status_ipv6?: string

		// The ID of the connection
		connection_id?: string

		// The date and time of the creation of the TLS stage
		created_at?: string

		// The ID of the customer gateway to attach to the connection
		customer_gateway_id?: string

		// Defines whether route propagation is enabled or not
		enable_route_propagation?: bool

		// The list of ESP ciphers proposed for the IPsec tunnel
		esp_ciphers?: [...close({
			dh_group?:   string
			encryption?: string
			integrity?:  string
		})]
		id?: string

		// The list of IKE v2 ciphers proposed for the IPsec tunnel
		ikev2_ciphers?: [...close({
			dh_group?:   string
			encryption?: string
			integrity?:  string
		})]

		// Defines who initiates the IPsec tunnel
		initiation_policy?: string

		// Defines IP version of the IPSec Tunnel
		is_ipv6?: bool

		// The name of the connection
		name?: string

		// Organization ID of the Project
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// Defines whether route propagation is enabled or not
		route_propagation_enabled?: bool

		// The BGP peer IP on customer side
		secret_id?: string

		// The BGP peer IP on customer side
		secret_version?: number

		// The status of the VPN gateway
		status?: string

		// The list of tags to apply to the connection
		tags?: [...string]

		// The status of the VPN gateway
		tunnel_status?: string

		// The date and time of the last update of the TLS stage
		updated_at?: string

		// The ID of the VPN gateway to attach to the connection
		vpn_gateway_id?: string
	})
}
