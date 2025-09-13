package res

import "list"

#google_compute_router_nat: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_router_nat")
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
		id?:                    string

		// Self-links of NAT IPs to be used as initial value for creation
		// alongside a RouterNatAddress resource.
		// Conflicts with natIps and drainNatIps. Only valid if
		// natIpAllocateOption is set to MANUAL_ONLY.
		initial_nat_ips?: [...string]

		// Maximum number of ports allocated to a VM from this NAT.
		// This field can only be set when enableDynamicPortAllocation is
		// enabled.
		max_ports_per_vm?: number

		// Minimum number of ports allocated to a VM from this NAT.
		// Defaults to 64 for static port allocation and 32 dynamic port
		// allocation if not set.
		min_ports_per_vm?: number

		// Name of the NAT service. The name must be 1-63 characters long
		// and
		// comply with RFC1035.
		name!: string

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

		// Region where the router and NAT reside.
		region?: string
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
		project?: string
		nat64_subnetwork?: matchN(1, [#nat64_subnetwork, [...#nat64_subnetwork]])
		rules?: matchN(1, [#rules, [...#rules]])
		subnetwork?: matchN(1, [#subnetwork, [...#subnetwork]])

		// The name of the Cloud Router in which this NAT will be
		// configured.
		router!: string

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
		source_subnetwork_ip_ranges_to_nat!: string

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

		// Timeout (in seconds) for TCP established connections.
		// Defaults to 1200s if not set.
		tcp_established_idle_timeout_sec?: number
		timeouts?:                         #timeouts

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

	#log_config: close({
		// Indicates whether or not to export logs.
		enable!: bool

		// Specifies the desired filtering of logs on this NAT. Possible
		// values: ["ERRORS_ONLY", "TRANSLATIONS_ONLY", "ALL"]
		filter!: string
	})

	#nat64_subnetwork: close({
		// Self-link of the subnetwork resource that will use NAT64
		name!: string
	})

	#rules: close({
		// An optional description of this rule.
		description?: string
		action?: matchN(1, [_#defs."/$defs/rules/$defs/action", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action"]])

		// CEL expression that specifies the match condition that egress
		// traffic from a VM is evaluated against.
		// If it evaluates to true, the corresponding action is enforced.
		//
		// The following examples are valid match expressions for public
		// NAT:
		//
		// "inIpRange(destination.ip, '1.1.0.0/16') ||
		// inIpRange(destination.ip, '2.2.0.0/16')"
		//
		// "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'"
		//
		// The following example is a valid match expression for private
		// NAT:
		//
		// "nexthop.hub ==
		// 'https://networkconnectivity.googleapis.com/v1alpha1/projects/my-project/global/hub/hub-1'"
		match!: string

		// An integer uniquely identifying a rule in the list.
		// The rule number must be a positive value between 0 and 65000,
		// and must be unique among rules within a NAT.
		rule_number!: number
	})

	#subnetwork: close({
		// Self-link of subnetwork to NAT
		name!: string

		// List of the secondary ranges of the subnetwork that are allowed
		// to use NAT. This can be populated only if
		// 'LIST_OF_SECONDARY_IP_RANGES' is one of the values in
		// sourceIpRangesToNat
		secondary_ip_range_names?: [...string]

		// List of options for which source IPs in the subnetwork
		// should have NAT enabled. Supported values include:
		// 'ALL_IP_RANGES', 'LIST_OF_SECONDARY_IP_RANGES',
		// 'PRIMARY_IP_RANGE'.
		source_ip_ranges_to_nat!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rules/$defs/action": close({
		// A list of URLs of the IP resources used for this NAT rule.
		// These IP addresses must be valid static external IP addresses
		// assigned to the project.
		// This field is used for public NAT.
		source_nat_active_ips?: [...string]

		// A list of URLs of the subnetworks used as source ranges for
		// this NAT Rule.
		// These subnetworks must have purpose set to PRIVATE_NAT.
		// This field is used for private NAT.
		source_nat_active_ranges?: [...string]

		// A list of URLs of the IP resources to be drained.
		// These IPs must be valid static external IPs that have been
		// assigned to the NAT.
		// These IPs should be used for updating/patching a NAT rule only.
		// This field is used for public NAT.
		source_nat_drain_ips?: [...string]

		// A list of URLs of subnetworks representing source ranges to be
		// drained.
		// This is only supported on patch/update, and these subnetworks
		// must have previously been used as active ranges in this NAT
		// Rule.
		// This field is used for private NAT.
		source_nat_drain_ranges?: [...string]
	})
}
