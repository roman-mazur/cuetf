package res

#google_compute_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_address")
	close({
		// The static external IP address represented by this resource.
		// The IP address must be inside the specified subnetwork,
		// if any. Set by the API if undefined.
		address?: string

		// The type of address to reserve.
		// Note: if you set this argument's value as 'INTERNAL' you need
		// to leave the 'network_tier' argument unset in that resource
		// block. Default value: "EXTERNAL" Possible values: ["INTERNAL",
		// "EXTERNAL"]
		address_type?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// The IP Version that will be used by this address. The default
		// value is 'IPV4'. Possible values: ["IPV4", "IPV6"]
		ip_version?: string

		// The endpoint type of this address, which should be VM or NETLB.
		// This is
		// used for deciding which type of endpoint this address can be
		// used after
		// the external IPv6 address reservation. Possible values: ["VM",
		// "NETLB"]
		ipv6_endpoint_type?: string

		// The fingerprint used for optimistic locking of this resource.
		// Used
		// internally during updates.
		label_fingerprint?: string

		// Labels to apply to this address. A list of key->value pairs.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Name of the resource. The name must be 1-63 characters long,
		// and
		// comply with RFC1035. Specifically, the name must be 1-63
		// characters
		// long and match the regular expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?'
		// which means the first character must be a lowercase letter, and
		// all
		// following characters must be a dash, lowercase letter, or
		// digit,
		// except the last character, which cannot be a dash.
		name!: string

		// The URL of the network in which to reserve the address. This
		// field
		// can only be used with INTERNAL type with the VPC_PEERING and
		// IPSEC_INTERCONNECT purposes.
		network?: string

		// The networking tier used for configuring this address. If this
		// field is not
		// specified, it is assumed to be PREMIUM.
		// This argument should not be used when configuring Internal
		// addresses, because [network tier cannot be set for internal
		// traffic; it's always
		// Premium](https://cloud.google.com/network-tiers/docs/overview).
		// Possible values: ["PREMIUM", "STANDARD"]
		network_tier?: string
		timeouts?:     #timeouts

		// The prefix length if the resource represents an IP range.
		prefix_length?: number

		// The purpose of this resource, which can be one of the following
		// values.
		//
		// * GCE_ENDPOINT for addresses that are used by VM instances,
		// alias IP
		// ranges, load balancers, and similar resources.
		//
		// * SHARED_LOADBALANCER_VIP for an address that can be used by
		// multiple
		// internal load balancers.
		//
		// * VPC_PEERING for addresses that are reserved for VPC peer
		// networks.
		//
		// * IPSEC_INTERCONNECT for addresses created from a private IP
		// range that
		// are reserved for a VLAN attachment in an HA VPN over Cloud
		// Interconnect
		// configuration. These addresses are regional resources.
		//
		// * PRIVATE_SERVICE_CONNECT for a private network address that is
		// used to
		// configure Private Service Connect. Only global internal
		// addresses can use
		// this purpose.
		//
		// This should only be set when using an Internal address.
		purpose?: string
		project?: string

		// The Region in which the created address should reside.
		// If it is not provided, the provider region is used.
		region?:    string
		self_link?: string

		// The URL of the subnetwork in which to reserve the address. If
		// an IP
		// address is specified, it must be within the subnetwork's IP
		// range.
		// This field can only be used with INTERNAL type with
		// GCE_ENDPOINT/DNS_RESOLVER purposes.
		subnetwork?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The URLs of the resources that are using this address.
		users?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
