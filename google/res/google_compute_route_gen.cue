package res

import "list"

#google_compute_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_route")
	close({
		as_paths?: [...close({
			as_lists?: [...number]
			path_segment_type?: string
		})]

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when you create the resource.
		description?: string

		// The destination range of outgoing packets that this route
		// applies to.
		// Only IPv4 is supported.
		dest_range!: string
		id?:         string

		// Name of the resource. Provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and
		// match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which
		// means
		// the first character must be a lowercase letter, and all
		// following
		// characters must be a dash, lowercase letter, or digit, except
		// the
		// last character, which cannot be a dash.
		name!: string

		// The network that this route applies to.
		network!: string

		// URL to a gateway that should handle matching packets.
		// Currently, you can only specify the internet gateway, using a
		// full or
		// partial valid URL:
		// *
		// 'https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway'
		// * 'projects/project/global/gateways/default-internet-gateway'
		// * 'global/gateways/default-internet-gateway'
		// * The string 'default-internet-gateway'.
		next_hop_gateway?: string

		// The hub network that should handle matching packets, which
		// should conform to RFC1035.
		next_hop_hub?: string

		// The IP address or URL to a forwarding rule of type
		// loadBalancingScheme=INTERNAL that should handle matching
		// packets.
		//
		// With the GA provider you can only specify the forwarding
		// rule as a partial or full URL. For example, the following
		// are all valid values:
		// * 10.128.0.56
		// *
		// https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
		// * regions/region/forwardingRules/forwardingRule
		//
		// When the beta provider, you can also specify the IP address
		// of a forwarding rule from the same VPC or any peered VPC.
		//
		// Note that this can only be used when the destinationRange is
		// a public (non-RFC 1918) IP CIDR range.
		next_hop_ilb?: string

		// URL to an instance that should handle matching packets.
		// You can specify this as a full or partial URL. For example:
		// *
		// 'https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance'
		// * 'projects/project/zones/zone/instances/instance'
		// * 'zones/zone/instances/instance'
		// * Just the instance name, with the zone in
		// 'next_hop_instance_zone'.
		next_hop_instance?: string

		// The zone of the instance specified in next_hop_instance. Omit
		// if next_hop_instance is specified as a URL.
		next_hop_instance_zone?: string

		// Internal fixed region-to-region cost that Google Cloud
		// calculates based on factors such as network performance,
		// distance, and available bandwidth between regions.
		next_hop_inter_region_cost?: string

		// Network IP address of an instance that should handle matching
		// packets.
		next_hop_ip?: string

		// Multi-Exit Discriminator, a BGP route metric that indicates the
		// desirability of a particular route in a network.
		next_hop_med?: string

		// URL to a Network that should handle matching packets.
		next_hop_network?: string
		params?: matchN(1, [#params, list.MaxItems(1) & [...#params]])
		timeouts?: #timeouts

		// Indicates the origin of the route. Can be IGP (Interior Gateway
		// Protocol), EGP (Exterior Gateway Protocol), or INCOMPLETE.
		next_hop_origin?: string

		// The network peering name that should handle matching packets,
		// which should conform to RFC1035.
		next_hop_peering?: string

		// URL to a VpnTunnel that should handle matching packets.
		next_hop_vpn_tunnel?: string

		// The priority of this route. Priority is used to break ties in
		// cases
		// where there is more than one matching route of equal prefix
		// length.
		//
		// In the case of two routes with equal prefix length, the one
		// with the
		// lowest-numbered priority value wins.
		//
		// Default value is 1000. Valid range is 0 through 65535.
		priority?: number
		project?:  string

		// The status of the route, which can be one of the following
		// values:
		// - 'ACTIVE' for an active route
		// - 'INACTIVE' for an inactive route
		route_status?: string

		// The type of this route, which can be one of the following
		// values:
		// - 'TRANSIT' for a transit route that this router learned from
		// another Cloud Router and will readvertise to one of its BGP
		// peers
		// - 'SUBNET' for a route from a subnet of the VPC
		// - 'BGP' for a route learned from a BGP peer of this router
		// - 'STATIC' for a static route
		route_type?: string
		self_link?:  string

		// A list of instance tags to which this route applies.
		tags?: [...string]

		// If potential misconfigurations are detected for this route,
		// this field will be populated with warning messages.
		warnings?: [...close({
			code?: string
			data?: [...close({
				key?:   string
				value?: string
			})]
			message?: string
		})]
	})

	#params: close({
		// Resource manager tags to be bound to the route. Tag keys and
		// values have the
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

	#timeouts: close({
		create?: string
		delete?: string
	})
}
