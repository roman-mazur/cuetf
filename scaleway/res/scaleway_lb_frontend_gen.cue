package res

import "list"

#scaleway_lb_frontend: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_lb_frontend")
	close({
		// The load-balancer backend ID
		backend_id!: string

		// Collection of Certificate IDs related to the load balancer and
		// domain
		certificate_ids?: [...string]
		acl?: matchN(1, [#acl, [...#acl]])

		// Rate limit for new connections established on this frontend.
		// Use 0 value to disable, else value is connections per second
		connection_rate_limit?: number

		// The date and time of the creation of the frontend
		created_at?: string

		// Defines whether to enable access logs on the frontend
		enable_access_logs?: bool

		// Activates HTTP/3 protocol
		enable_http3?: bool
		timeouts?:     #timeouts

		// This boolean determines if ACLs should be managed externally
		// through the 'lb_acl' resource. If set to `true`, `acl`
		// attribute cannot be set directly in the lb frontend
		external_acls?: bool
		id?:            string

		// TCP port to listen on the front side
		inbound_port!: number

		// The load-balancer ID
		lb_id!: string

		// The name of the frontend
		name?: string

		// Set the maximum inactivity time on the client side
		timeout_client?: string

		// The date and time of the last update of the frontend
		updated_at?: string
	})

	#acl: close({
		action!: matchN(1, [_#defs."/$defs/acl/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/acl/$defs/action"]])
		match!: matchN(1, [_#defs."/$defs/acl/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/acl/$defs/match"]])

		// IsDate and time of ACL's creation (RFC 3339 format)
		created_at?: string

		// Description of the ACL
		description?: string

		// The ACL name
		name?: string

		// IsDate and time of ACL's update (RFC 3339 format)
		updated_at?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	})

	_#defs: "/$defs/acl/$defs/action": close({
		redirect?: matchN(1, [_#defs."/$defs/acl/$defs/action/$defs/redirect", [..._#defs."/$defs/acl/$defs/action/$defs/redirect"]])

		// The action type
		type!: string
	})

	_#defs: "/$defs/acl/$defs/action/$defs/redirect": close({
		// The HTTP redirect code to use
		code?: number

		// An URL can be used in case of a location redirect
		target?: string

		// The redirect type
		type?: string
	})

	_#defs: "/$defs/acl/$defs/match": close({
		// The HTTP filter to match
		http_filter?: string

		// You can use this field with http_header_match acl type to set
		// the header name to filter
		http_filter_option?: string

		// A list of possible values to match for the given HTTP filter
		http_filter_value?: [...string]

		// If set to true, the condition will be of type "unless"
		invert?: bool

		// A list of IPs or CIDR v4/v6 addresses of the client of the
		// session to match
		ip_subnet?: [...string]

		// Defines whether Edge Services IPs should be matched
		ips_edge_services?: bool
	})
}
