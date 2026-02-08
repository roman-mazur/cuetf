package res

#google_compute_service_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_service_attachment")
	close({
		// An array of the consumer forwarding rules connected to this
		// service
		// attachment.
		connected_endpoints?: [...close({
			consumer_network?: string
			endpoint?:         string
			nat_ips?: [...string]
			propagated_connection_count?: number
			psc_connection_id?:           string
			status?:                      string
		})]

		// The connection preference to use for this service attachment.
		// Valid
		// values include "ACCEPT_AUTOMATIC", "ACCEPT_MANUAL".
		connection_preference!: string

		// An array of projects that are not allowed to connect to this
		// service
		// attachment.
		consumer_reject_lists?: [...string]

		// An optional description of this resource.
		description?: string

		// If specified, the domain name will be used during the
		// integration between
		// the PSC connected endpoints and the Cloud DNS. For example,
		// this is a
		// valid domain name: "p.mycompany.com.". Current max number of
		// domain names
		// supported is 1.
		domain_names?: [...string]

		// If true, enable the proxy protocol which is for supplying
		// client TCP/IP
		// address data in TCP connections that traverse proxies on their
		// way to
		// destination servers.
		enable_proxy_protocol!: bool

		// Fingerprint of this resource. This field is used internally
		// during
		// updates of this resource.
		fingerprint?: string
		id?:          string

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

		// An array of subnets that is provided for NAT in this service
		// attachment.
		nat_subnets!: [...string]
		project?: string

		// The number of consumer spokes that connected Private Service
		// Connect endpoints can be propagated to through Network
		// Connectivity Center.
		// This limit lets the service producer limit how many propagated
		// Private Service Connect connections can be established to this
		// service attachment from a single consumer.
		//
		// If the connection preference of the service attachment is
		// ACCEPT_MANUAL, the limit applies to each project or network
		// that is listed in the consumer accept list.
		// If the connection preference of the service attachment is
		// ACCEPT_AUTOMATIC, the limit applies to each project that
		// contains a connected endpoint.
		//
		// If unspecified, the default propagated connection limit is 250.
		// To explicitly send a zero value, set
		// 'send_propagated_connection_limit_if_zero = true'.
		propagated_connection_limit?: number

		// An 128-bit global unique ID of the PSC service attachment.
		psc_service_attachment_id?: [...close({
			high?: string
			low?:  string
		})]
		consumer_accept_lists?: matchN(1, [#consumer_accept_lists, [...#consumer_accept_lists]])
		timeouts?: #timeouts

		// This flag determines whether a consumer accept/reject list
		// change can reconcile the statuses of existing ACCEPTED or
		// REJECTED PSC endpoints.
		//
		// If false, connection policy update will only affect existing
		// PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints
		// will remain untouched regardless how the connection policy is
		// modified .
		// If true, update will affect both PENDING and ACCEPTED/REJECTED
		// PSC endpoints. For example, an ACCEPTED PSC endpoint will be
		// moved to REJECTED if its project is added to the reject list.
		reconcile_connections?: bool

		// URL of the region where the resource resides.
		region?:    string
		self_link?: string

		// Controls the behavior of propagated_connection_limit.
		// When false, setting propagated_connection_limit to zero causes
		// the provider to use to the API's default value.
		// When true, the provider will set propagated_connection_limit to
		// zero.
		// Defaults to false.
		send_propagated_connection_limit_if_zero?: bool

		// NOTE: This field is temporarily non-functional due to an
		// underlying API issue.
		// Any value provided here will be ignored until the API issue is
		// resolved, expected around 2026-03.
		// [If true, show NAT IPs of all connected endpoints.]
		show_nat_ips?: bool

		// The URL of a service serving the endpoint identified by this
		// service attachment.
		target_service!: string
	})

	#consumer_accept_lists: close({
		// The number of consumer forwarding rules the consumer project
		// can
		// create.
		connection_limit!: number

		// The network that is allowed to connect to this service
		// attachment.
		// Only one of project_id_or_num and network_url may be set.
		network_url?: string

		// A project that is allowed to connect to this service
		// attachment.
		// Only one of project_id_or_num and network_url may be set.
		project_id_or_num?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
