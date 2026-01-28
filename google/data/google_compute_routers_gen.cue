package data

#google_compute_routers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_routers")
	close({
		id?:      string
		project?: string
		region?:  string
		routers?: [...close({
			bgp?: [...close({
				advertise_mode?: string
				advertised_groups?: [...string]
				advertised_ip_ranges?: [...close({
					description?: string
					range?:       string
				})]
				asn?:                number
				keepalive_interval?: number
			})]
			bgp_peers?: [...close({
				advertise_mode?:            string
				advertised_route_priority?: number
				enable?:                    string
				enable_ipv6?:               bool
				interface_name?:            string
				ip_address?:                string
				management_type?:           string
				name?:                      string
				peer_asn?:                  number
				peer_ip_address?:           string
			})]
			creation_timestamp?:            string
			description?:                   string
			encrypted_interconnect_router?: bool
			interfaces?: [...close({
				ip_range?:                       string
				linked_interconnect_attachment?: string
				linked_vpn_tunnel?:              string
				name?:                           string
				private_ip_address?:             string
				redundant_interface?:            string
				subnetwork?:                     string
			})]
			md5_authentication_keys?: [...close({
				key?:  string
				name?: string
			})]
			name?: string
			nats?: [...close({
				enable_endpoint_independent_mapping?: bool
				icmp_idle_timeout_sec?:               number
				min_ports_per_vm?:                    number
				name?:                                string
				nat_ip_allocate_option?:              string
				nat_ips?: [...string]
				source_subnetwork_ip_ranges_to_nat?: string
				tcp_established_idle_timeout_sec?:   number
				tcp_transitory_idle_timeout_sec?:    number
				udp_idle_timeout_sec?:               number
			})]
			network?:   string
			self_link?: string
		})]
	})
}
