package res

#google_compute_global_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_global_address")
	close({
		// The IP address or beginning of the address range represented by
		// this
		// resource. This can be supplied as an input to reserve a
		// specific
		// address or omitted to allow GCP to choose a valid one for you.
		address?: string

		// The type of the address to reserve.
		//
		// * EXTERNAL indicates public/external single IP address.
		// * INTERNAL indicates internal IP ranges belonging to some
		// network. Default value: "EXTERNAL" Possible values:
		// ["EXTERNAL", "INTERNAL"]
		address_type?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The IP Version that will be used by this address. The default
		// value is 'IPV4'. Possible values: ["IPV4", "IPV6"]
		ip_version?: string
		id?:         string

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
		name!:     string
		timeouts?: #timeouts

		// The URL of the network in which to reserve the IP range. The IP
		// range
		// must be in RFC1918 space. The network cannot be deleted if
		// there are
		// any reserved IP ranges referring to it.
		//
		// This should only be set when using an Internal address.
		network?: string

		// The prefix length of the IP range. If not present, it means the
		// address field is a single IP address.
		//
		// This field is not applicable to addresses with
		// addressType=INTERNAL
		// when purpose=PRIVATE_SERVICE_CONNECT
		prefix_length?: number
		project?:       string

		// The purpose of the resource. Possible values include:
		//
		// * VPC_PEERING - for peer networks
		//
		// * PRIVATE_SERVICE_CONNECT - for
		// ([Beta](https://terraform.io/docs/providers/google/guides/provider_versions.html)
		// only) Private Service Connect networks
		purpose?:   string
		self_link?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
