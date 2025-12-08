package data

#google_compute_router_nat: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_router_nat")
	close({
		// The network tier to use when automatically reserving NAT IP
		// addresses.
		// Must be one of: PREMIUM, STANDARD. If not specified, then the
		// current
		// project-level default tier is used. Possible values:
		// ["PREMIUM", "STANDARD"]
		auto_network_tier?: string

		// A list of URLs of the IP resources to be drained. These IPs
		// must be
		// valid static external IPs that have been assigned to the NAT.
		drain_nat_ips?: [...string]

		// Enable Dynamic Port Allocation.
		// If minPortsPerVm is set, minPortsPerVm must be set to a power
		// of two greater than or equal to 32.
		// If minPortsPerVm is not set, a minimum of 32 ports will be
		// allocated to a VM from this NAT config.
		// If maxPortsPerVm is set, maxPortsPerVm must be set to a power
		// of two greater than minPortsPerVm.
		// If maxPortsPerVm is not set, a maximum of 65536 ports will be
		// allocated to a VM from this NAT config.
		//
		// Mutually exclusive with enableEndpointIndependentMapping.
		enable_dynamic_port_allocation?: bool

		// Enable endpoint independent mapping.
		// For more information see the [official
		// documentation](https://cloud.google.com/nat/docs/overview#specs-rfcs).
		enable_endpoint_independent_mapping?: bool

		// Specifies the endpoint Types supported by the NAT Gateway.
		// Supported values include:
		// 'ENDPOINT_TYPE_VM', 'ENDPOINT_TYPE_SWG',
		// 'ENDPOINT_TYPE_MANAGED_PROXY_LB'.
		endpoint_types?: [...string]

		// Timeout (in seconds) for ICMP connections. Defaults to 30s if
		// not set.
		icmp_idle_timeout_sec?: number

		// Self-links of NAT IPs to be used as initial value for creation
		// alongside a RouterNatAddress resource.
		// Conflicts with natIps and drainNatIps. Only valid if
		// natIpAllocateOption is set to MANUAL_ONLY.
		initial_nat_ips?: [...string]

		// Configuration for logging on NAT
		log_config?: [...close({
			enable?: bool
			filter?: string
		})]

		// Maximum number of ports allocated to a VM from this NAT.
		// This field can only be set when enableDynamicPortAllocation is
		// enabled.
		max_ports_per_vm?: number
		id?:               string

		// Minimum number of ports allocated to a VM from this NAT.
		// Defaults to 64 for static port allocation and 32 dynamic port
		// allocation if not set.
		min_ports_per_vm?: number

		// Name of the NAT service. The name must be 1-63 characters long
		// and
		// comply with RFC1035.
		name!: string

		// One or more subnetwork NAT configurations whose traffic should
		// be translated by NAT64 Gateway.
		// Only used if 'source_subnetwork_ip_ranges_to_nat64' is set to
		// 'LIST_OF_IPV6_SUBNETWORKS'
		nat64_subnetwork?: [...close({
			name?: string
		})]

		// How external IPs should be allocated for this NAT. Valid values
		// are
		// 'AUTO_ONLY' for only allowing NAT IPs allocated by Google Cloud
		// Platform, or 'MANUAL_ONLY' for only user-allocated NAT IP
		// addresses. Possible values: ["MANUAL_ONLY", "AUTO_ONLY"]
		nat_ip_allocate_option?: string

		// Self-links of NAT IPs. Only valid if natIpAllocateOption
		// is set to MANUAL_ONLY.
		// If this field is used alongside with a count created list of
		// address resources 'google_compute_address.foobar.*.self_link',
		// the access level resource for the address resource must have a
		// 'lifecycle' block with 'create_before_destroy = true' so
		// the number of resources can be increased/decreased without
		// triggering the 'resourceInUseByAnotherResource' error.
		nat_ips?: [...string]
		project?: string

		// Region where the router and NAT reside.
		region?: string

		// The name of the Cloud Router in which this NAT will be
		// configured.
		router!: string

		// A list of rules associated with this NAT.
		rules?: [...close({
			action?: [...close({
				source_nat_active_ips?: [...string]
				source_nat_active_ranges?: [...string]
				source_nat_drain_ips?: [...string]
				source_nat_drain_ranges?: [...string]
			})]
			description?: string
			match?:       string
			rule_number?: number
		})]

		// How NAT should be configured per Subnetwork.
		// If 'ALL_SUBNETWORKS_ALL_IP_RANGES', all of the
		// IP ranges in every Subnetwork are allowed to Nat.
		// If 'ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES', all of the primary
		// IP
		// ranges in every Subnetwork are allowed to Nat.
		// 'LIST_OF_SUBNETWORKS': A list of Subnetworks are allowed to Nat
		// (specified in the field subnetwork below). Note that if this
		// field
		// contains ALL_SUBNETWORKS_ALL_IP_RANGES or
		// ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be
		// any
		// other RouterNat section in any Router for this network in this
		// region. Possible values: ["ALL_SUBNETWORKS_ALL_IP_RANGES",
		// "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES",
		// "LIST_OF_SUBNETWORKS"]
		source_subnetwork_ip_ranges_to_nat?: string

		// Specify the Nat option for NAT64, which can take one of the
		// following values:
		// ALL_IPV6_SUBNETWORKS: All of the IP ranges in every Subnetwork
		// are allowed to Nat.
		// LIST_OF_IPV6_SUBNETWORKS: A list of Subnetworks are allowed to
		// Nat (specified in the field nat64Subnetwork below).
		// Note that if this field contains NAT64_ALL_V6_SUBNETWORKS no
		// other Router.Nat section in this region can also enable NAT64
		// for any Subnetworks in this network.
		// Other Router.Nat sections can still be present to enable NAT44
		// only. Possible values: ["ALL_IPV6_SUBNETWORKS",
		// "LIST_OF_IPV6_SUBNETWORKS"]
		source_subnetwork_ip_ranges_to_nat64?: string

		// One or more subnetwork NAT configurations. Only used if
		// 'source_subnetwork_ip_ranges_to_nat' is set to
		// 'LIST_OF_SUBNETWORKS'
		subnetwork?: [...close({
			name?: string
			secondary_ip_range_names?: [...string]
			source_ip_ranges_to_nat?: [...string]
		})]

		// Timeout (in seconds) for TCP established connections.
		// Defaults to 1200s if not set.
		tcp_established_idle_timeout_sec?: number

		// Timeout (in seconds) for TCP connections that are in TIME_WAIT
		// state.
		// Defaults to 120s if not set.
		tcp_time_wait_timeout_sec?: number

		// Timeout (in seconds) for TCP transitory connections.
		// Defaults to 30s if not set.
		tcp_transitory_idle_timeout_sec?: number

		// Indicates whether this NAT is used for public or private IP
		// translation.
		// If unspecified, it defaults to PUBLIC.
		// If 'PUBLIC' NAT used for public IP translation.
		// If 'PRIVATE' NAT used for private IP translation. Default
		// value: "PUBLIC" Possible values: ["PUBLIC", "PRIVATE"]
		type?: string

		// Timeout (in seconds) for UDP connections. Defaults to 30s if
		// not set.
		udp_idle_timeout_sec?: number
	})
}
