package res

import "list"

#google_compute_subnetwork: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_subnetwork")
	close({
		// Typically packets destined to IPs within the subnetwork range
		// that do not match
		// existing resources are dropped and prevented from leaving the
		// VPC.
		// Setting this field to true will allow these packets to match
		// dynamic routes injected
		// via BGP even if their destinations match existing subnet
		// ranges.
		allow_subnet_cidr_routes_overlap?: bool

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when
		// you create the resource. This field can be set only at resource
		// creation time.
		description?: string

		// The range of external IPv6 addresses that are owned by this
		// subnetwork.
		external_ipv6_prefix?: string

		// The gateway address for default routes to reach destination
		// addresses
		// outside this subnetwork.
		gateway_address?: string
		id?:              string

		// The internal IPv6 address range that is assigned to this
		// subnetwork.
		internal_ipv6_prefix?: string

		// The range of internal addresses that are owned by this
		// subnetwork.
		// Provide this property when you create the subnetwork. For
		// example,
		// 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
		// non-overlapping within a network. Only IPv4 is supported.
		// Field is optional when 'reserved_internal_range' is defined,
		// otherwise required.
		ip_cidr_range?: string

		// Resource reference of a PublicDelegatedPrefix. The PDP must be
		// a sub-PDP
		// in EXTERNAL_IPV6_SUBNETWORK_CREATION or
		// INTERNAL_IPV6_SUBNETWORK_CREATION
		// mode. Use one of the following formats to specify a sub-PDP
		// when creating
		// a dual stack or IPv6-only subnetwork using BYOIP:
		// Full resource URL, as in:
		// *
		// 'https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}'
		// Partial URL, as in:
		// *
		// 'projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{sub-pdp-name}}'
		// * 'regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}'
		ip_collection?: string

		// The access type of IPv6 address this subnet holds. It's
		// immutable and can only be specified during creation
		// or the first time the subnet is updated into IPV4_IPV6 dual
		// stack. If the ipv6_type is EXTERNAL then this subnet
		// cannot enable direct path. Possible values: ["EXTERNAL",
		// "INTERNAL"]
		ipv6_access_type?: string

		// The range of internal IPv6 addresses that are owned by this
		// subnetwork.
		ipv6_cidr_range?: string

		// Possible endpoints of this subnetwork. It can be one of the
		// following:
		// * VM_ONLY: The subnetwork can be used for creating instances
		// and IPv6 addresses with VM endpoint type. Such a subnetwork
		// gets external IPv6 ranges from a public delegated prefix and
		// cannot be used to create NetLb.
		// * VM_AND_FR: The subnetwork can be used for creating both VM
		// instances and Forwarding Rules. It can also be used to reserve
		// IPv6 addresses with both VM and FR endpoint types. Such a
		// subnetwork gets its IPv6 range from Google IP Pool directly.
		ipv6_gce_endpoint?: string

		// The name of the resource, provided by the client when initially
		// creating the resource. The name must be 1-63 characters long,
		// and
		// comply with RFC1035. Specifically, the name must be 1-63
		// characters
		// long and match the regular expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?' which
		// means the first character must be a lowercase letter, and all
		// following characters must be a dash, lowercase letter, or
		// digit,
		// except the last character, which cannot be a dash.
		name!: string

		// The network this subnet belongs to.
		// Only networks that are in the distributed mode can have
		// subnetworks.
		network!: string

		// When enabled, VMs in this subnetwork without external IP
		// addresses can
		// access Google APIs and services by using Private Google Access.
		private_ip_google_access?: bool
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
		params?: matchN(1, [#params, list.MaxItems(1) & [...#params]])
		secondary_ip_range?: matchN(1, [#secondary_ip_range, [...#secondary_ip_range]])
		timeouts?: #timeouts

		// The private IPv6 google access type for the VMs in this subnet.
		private_ipv6_google_access?: string
		project?:                    string

		// The purpose of the resource. This field can be either
		// 'PRIVATE', 'REGIONAL_MANAGED_PROXY', 'GLOBAL_MANAGED_PROXY',
		// 'PRIVATE_SERVICE_CONNECT', 'PEER_MIGRATION' or
		// 'PRIVATE_NAT'([Beta](../guides/provider_versions.html.markdown)).
		// A subnet with purpose set to 'REGIONAL_MANAGED_PROXY' is a
		// user-created subnetwork that is reserved for regional
		// Envoy-based load balancers.
		// A subnetwork in a given region with purpose set to
		// 'GLOBAL_MANAGED_PROXY' is a proxy-only subnet and is shared
		// between all the cross-regional Envoy-based load balancers.
		// A subnetwork with purpose set to 'PRIVATE_SERVICE_CONNECT'
		// reserves the subnet for hosting a Private Service Connect
		// published service.
		// A subnetwork with purpose set to 'PEER_MIGRATION' is a user
		// created subnetwork that is reserved for migrating resources
		// from one peered network to another.
		// A subnetwork with purpose set to 'PRIVATE_NAT' is used as
		// source range for Private NAT gateways.
		// Note that 'REGIONAL_MANAGED_PROXY' is the preferred setting for
		// all regional Envoy load balancers.
		// If unspecified, the purpose defaults to 'PRIVATE'.
		purpose?: string

		// The GCP region for this subnetwork.
		region?: string

		// The ID of the reserved internal range. Must be prefixed with
		// 'networkconnectivity.googleapis.com'
		// E.g.
		// 'networkconnectivity.googleapis.com/projects/{project}/locations/global/internalRanges/{rangeId}'
		reserved_internal_range?: string

		// The role of subnetwork.
		// Currently, this field is only used when 'purpose' is
		// 'REGIONAL_MANAGED_PROXY'.
		// The value can be set to 'ACTIVE' or 'BACKUP'.
		// An 'ACTIVE' subnetwork is one that is currently being used for
		// Envoy-based load balancers in a region.
		// A 'BACKUP' subnetwork is one that is ready to be promoted to
		// 'ACTIVE' or is currently draining. Possible values: ["ACTIVE",
		// "BACKUP"]
		role?:      string
		self_link?: string

		// Controls the removal behavior of secondary_ip_range.
		// When false, removing secondary_ip_range from config will not
		// produce a diff as
		// the provider will default to the API's value.
		// When true, the provider will treat removing secondary_ip_range
		// as sending an
		// empty list of secondary IP ranges to the API.
		// Defaults to false.
		send_secondary_ip_range_if_empty?: bool

		// The stack type for this subnet to identify whether the IPv6
		// feature is enabled or not.
		// If not specified IPV4_ONLY will be used. Possible values:
		// ["IPV4_ONLY", "IPV4_IPV6", "IPV6_ONLY"]
		stack_type?: string

		// 'The state of the subnetwork, which can be one of the following
		// values:
		// READY: Subnetwork is created and ready to use DRAINING: only
		// applicable to subnetworks that have the purpose
		// set to INTERNAL_HTTPS_LOAD_BALANCER and indicates that
		// connections to the load balancer are being drained.
		// A subnetwork that is draining cannot be used or modified until
		// it reaches a status of READY'
		state?: string

		// The unique identifier number for the resource. This identifier
		// is defined by the server.
		subnetwork_id?: number
	})

	#log_config: close({
		// Can only be specified if VPC flow logging for this subnetwork
		// is enabled.
		// Toggles the aggregation interval for collecting flow logs.
		// Increasing the
		// interval time will reduce the amount of generated flow logs for
		// long
		// lasting connections. Default is an interval of 5 seconds per
		// connection. Default value: "INTERVAL_5_SEC" Possible values:
		// ["INTERVAL_5_SEC", "INTERVAL_30_SEC", "INTERVAL_1_MIN",
		// "INTERVAL_5_MIN", "INTERVAL_10_MIN", "INTERVAL_15_MIN"]
		aggregation_interval?: string

		// Export filter used to define which VPC flow logs should be
		// logged, as as CEL expression. See
		// https://cloud.google.com/vpc/docs/flow-logs#filtering for
		// details on how to format this field.
		// The default value is 'true', which evaluates to include
		// everything.
		filter_expr?: string

		// Can only be specified if VPC flow logging for this subnetwork
		// is enabled.
		// The value of the field must be in [0, 1]. Set the sampling rate
		// of VPC
		// flow logs within the subnetwork where 1.0 means all collected
		// logs are
		// reported and 0.0 means no logs are reported. Default is 0.5
		// which means
		// half of all collected logs are reported.
		flow_sampling?: number

		// Can only be specified if VPC flow logging for this subnetwork
		// is enabled.
		// Configures whether metadata fields should be added to the
		// reported VPC
		// flow logs. Default value: "INCLUDE_ALL_METADATA" Possible
		// values: ["EXCLUDE_ALL_METADATA", "INCLUDE_ALL_METADATA",
		// "CUSTOM_METADATA"]
		metadata?: string

		// List of metadata fields that should be added to reported logs.
		// Can only be specified if VPC flow logs for this subnetwork is
		// enabled and "metadata" is set to CUSTOM_METADATA.
		metadata_fields?: [...string]
	})

	#params: close({
		// Resource manager tags to be bound to the subnetwork. Tag keys
		// and values have the
		// same definition as resource manager tags. Keys must be in the
		// format tagKeys/{tag_key_id},
		// and values are in the format tagValues/456. The field is
		// ignored when empty.
		// The field is immutable and causes resource replacement when
		// mutated. This field is only
		// set at create time and modifying this field after creation will
		// trigger recreation.
		// To apply tags to an existing resource, see the
		// google_tags_tag_binding resource.
		resource_manager_tags?: [string]: string
	})

	#secondary_ip_range: close({
		// The range of IP addresses belonging to this subnetwork
		// secondary
		// range. Provide this property when you create the subnetwork.
		// Ranges must be unique and non-overlapping with all primary and
		// secondary IP ranges within a network. Only IPv4 is supported.
		// Field is optional when 'reserved_internal_range' is defined,
		// otherwise required.
		ip_cidr_range?: string

		// The name associated with this subnetwork secondary range, used
		// when adding an alias IP range to a VM instance. The name must
		// be 1-63 characters long, and comply with RFC1035. The name
		// must be unique within the subnetwork.
		range_name!: string

		// The ID of the reserved internal range. Must be prefixed with
		// 'networkconnectivity.googleapis.com'
		// E.g.
		// 'networkconnectivity.googleapis.com/projects/{project}/locations/global/internalRanges/{rangeId}'
		reserved_internal_range?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
