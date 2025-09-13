package res

#google_compute_external_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_external_vpn_gateway")
	close({
		// An optional description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// The fingerprint used for optimistic locking of this resource.
		// Used
		// internally during updates.
		label_fingerprint?: string

		// Labels for the external VPN gateway resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

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
		// the last
		// character, which cannot be a dash.
		name!:    string
		project?: string

		// Indicates the redundancy type of this external VPN gateway
		// Possible values: ["FOUR_IPS_REDUNDANCY",
		// "SINGLE_IP_INTERNALLY_REDUNDANT", "TWO_IPS_REDUNDANCY"]
		redundancy_type?: string
		interface?: matchN(1, [#interface, [...#interface]])
		timeouts?:  #timeouts
		self_link?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#interface: close({
		// The numeric ID for this interface. Allowed values are based on
		// the redundancy type
		// of this external VPN gateway
		// * '0 - SINGLE_IP_INTERNALLY_REDUNDANT'
		// * '0, 1 - TWO_IPS_REDUNDANCY'
		// * '0, 1, 2, 3 - FOUR_IPS_REDUNDANCY'
		id?: number

		// IP address of the interface in the external VPN gateway.
		// Only IPv4 is supported. This IP address can be either from
		// your on-premise gateway or another Cloud provider's VPN
		// gateway,
		// it cannot be an IP address from Google Compute Engine.
		ip_address?: string

		// IPv6 address of the interface in the external VPN gateway. This
		// IPv6
		// address can be either from your on-premise gateway or another
		// Cloud
		// provider's VPN gateway, it cannot be an IP address from Google
		// Compute
		// Engine. Must specify an IPv6 address (not IPV4-mapped) using
		// any format
		// described in RFC 4291 (e.g. 2001:db8:0:0:2d9:51:0:0). The
		// output format
		// is RFC 5952 format (e.g. 2001:db8::2d9:51:0:0).
		ipv6_address?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
