package res

#google_compute_network_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_network_attachment")
	close({
		// An array of connections for all the producers connected to this
		// network attachment.
		connection_endpoints?: [...close({
			ip_address?:               string
			project_id_or_num?:        string
			secondary_ip_cidr_ranges?: string
			status?:                   string
			subnetwork?:               string
		})]

		// The connection preference of service attachment. The value can
		// be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service
		// attachment is one that always accepts the connection from
		// consumer forwarding rules. Possible values:
		// ["ACCEPT_AUTOMATIC", "ACCEPT_MANUAL", "INVALID"]
		connection_preference!: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when you create the resource.
		description?: string

		// Fingerprint of this resource. A hash of the contents stored in
		// this object. This
		// field is used in optimistic locking. An up-to-date fingerprint
		// must be provided in order to patch.
		fingerprint?: string

		// The unique identifier for the resource type. The server
		// generates this identifier.
		id?: string

		// Type of the resource.
		kind?: string

		// Name of the resource. Provided by the client when the resource
		// is created. The name must be 1-63 characters long, and comply
		// with RFC1035. Specifically, the name must be 1-63 characters
		// long and match the regular expression
		// [a-z]([-a-z0-9]*[a-z0-9])? which means the first character
		// must be a lowercase letter, and all following characters must
		// be a dash, lowercase letter, or digit, except the last
		// character, which cannot be a dash.
		name!: string

		// The URL of the network which the Network Attachment belongs to.
		// Practically it is inferred by fetching the network of the
		// first subnetwork associated.
		// Because it is required that all the subnetworks must be from
		// the same network, it is assured that the Network Attachment
		// belongs to the same network as all the subnetworks.
		network?: string

		// Projects that are allowed to connect to this network
		// attachment. The project can be specified using its id or
		// number.
		producer_accept_lists?: [...string]

		// Projects that are not allowed to connect to this network
		// attachment. The project can be specified using its id or
		// number.
		producer_reject_lists?: [...string]
		timeouts?: #timeouts
		project?:  string

		// URL of the region where the network attachment resides. This
		// field applies only to the region resource. You must specify
		// this field as part of the HTTP request URL. It is not settable
		// as a field in the request body.
		region?: string

		// Server-defined URL for the resource.
		self_link?: string

		// Server-defined URL for this resource's resource id.
		self_link_with_id?: string

		// An array of URLs where each entry is the URL of a subnet
		// provided by the service consumer to use for endpoints in the
		// producers that connect to this network attachment.
		subnetworks!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
