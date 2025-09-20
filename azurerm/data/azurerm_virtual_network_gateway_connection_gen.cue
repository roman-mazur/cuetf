package data

#azurerm_virtual_network_gateway_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_network_gateway_connection")
	close({
		authorization_key?:            string
		connection_protocol?:          string
		dpd_timeout_seconds?:          number
		egress_bytes_transferred?:     number
		timeouts?:                     #timeouts
		enable_bgp?:                   bool
		express_route_circuit_id?:     string
		express_route_gateway_bypass?: bool
		id?:                           string
		ingress_bytes_transferred?:    number
		ipsec_policy?: [...close({
			dh_group?:         string
			ike_encryption?:   string
			ike_integrity?:    string
			ipsec_encryption?: string
			ipsec_integrity?:  string
			pfs_group?:        string
			sa_datasize?:      number
			sa_lifetime?:      number
		})]
		local_azure_ip_address_enabled?:  bool
		local_network_gateway_id?:        string
		location?:                        string
		name!:                            string
		peer_virtual_network_gateway_id?: string
		private_link_fast_path_enabled?:  bool
		resource_group_name!:             string
		resource_guid?:                   string
		routing_weight?:                  number
		shared_key?:                      string
		tags?: [string]: string
		traffic_selector_policy?: [...close({
			local_address_cidrs?: [...string]
			remote_address_cidrs?: [...string]
		})]
		type?:                               string
		use_policy_based_traffic_selectors?: bool
		virtual_network_gateway_id?:         string
	})

	#timeouts: close({
		read?: string
	})
}
