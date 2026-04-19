package res

import "list"

#scaleway_lb_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_lb_acl")
	close({
		action!: matchN(1, [#action, list.MaxItems(1) & [_, ...] & [...#action]])

		// IsDate and time of ACL's creation (RFC 3339 format)
		created_at?: string
		match?: matchN(1, [#match, list.MaxItems(1) & [...#match]])

		// Description of the ACL
		description?: string

		// The frontend ID on which the ACL is applied
		frontend_id!: string
		timeouts?:    #timeouts
		id?:          string

		// The priority of the ACL. (ACLs are applied in ascending order,
		// 0 is the first ACL executed)
		index!: number

		// The ACL name
		name?: string

		// IsDate and time of ACL's update (RFC 3339 format)
		updated_at?: string
	})

	#action: close({
		redirect?: matchN(1, [_#defs."/$defs/action/$defs/redirect", [..._#defs."/$defs/action/$defs/redirect"]])

		// The action type
		type!: string
	})

	#match: close({
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

	#timeouts: close({
		default?: string
	})

	_#defs: "/$defs/action/$defs/redirect": close({
		// The HTTP redirect code to use
		code?: number

		// An URL can be used in case of a location redirect
		target?: string

		// The redirect type
		type?: string
	})
}
