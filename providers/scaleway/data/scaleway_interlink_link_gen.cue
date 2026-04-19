package data

#scaleway_interlink_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_interlink_link")
	close({
		// Desired bandwidth for the link. Must be compatible with
		// available link bandwidths and remaining bandwidth capacity of
		// the connection
		bandwidth_mbps?: number

		// Status of the link's BGP IPv4 session
		bgp_v4_status?: string

		// Status of the link's BGP IPv6 session
		bgp_v6_status?: string

		// If set, creates a self-hosted link using this dedicated
		// physical connection
		connection_id?: string

		// Creation date of the link
		created_at?: string

		// Defines whether route propagation is enabled or not
		enable_route_propagation?: bool
		id?:                       string

		// The ID of the link
		link_id?: string

		// Name of the link
		name?: string

		// The Organization ID the link is associated with
		organization_id?: string

		// Used to identify a link from a user or partner's point of view
		pairing_key?: string

		// If set, creates a hosted link on a partner's connection.
		// Specify the ID of the chosen partner, who already has a shared
		// connection with available bandwidth
		partner_id?: string

		// For self-hosted links, the peer AS Number to establish BGP
		// session. If not given, a default one will be assigned
		peer_asn?: number

		// BGP configuration on peer's side (on-premises or other hosting
		// provider)
		peer_bgp_config?: [...close({
			asn?:  number
			ipv4?: string
			ipv6?: string
		})]

		// PoP (location) where the link will be created
		pop_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// If set, attaches this routing policy containing IPv4 prefixes
		// to the link. A BGP IPv4 session will be created
		routing_policy_v4_id?: string

		// If set, attaches this routing policy containing IPv6 prefixes
		// to the link. A BGP IPv6 session will be created
		routing_policy_v6_id?: string

		// BGP configuration on Scaleway's side
		scw_bgp_config?: [...close({
			asn?:  number
			ipv4?: string
			ipv6?: string
		})]

		// Status of the link
		status?: string

		// List of tags associated with the link
		tags?: [...string]

		// Last modification date of the link
		updated_at?: string

		// For self-hosted links only, the VLAN ID. If the VLAN is not
		// available (already taken or out of range), an error is
		// returned
		vlan?: number

		// ID of the Scaleway VPC attached to the link
		vpc_id?: string
	})
}
