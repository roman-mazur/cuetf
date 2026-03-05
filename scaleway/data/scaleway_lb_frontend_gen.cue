package data

#scaleway_lb_frontend: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_lb_frontend")
	close({
		// ACL rules
		acl?: [...close({
			action?: [...close({
				redirect?: [...close({
					code?:   number
					target?: string
					type?:   string
				})]
				type?: string
			})]
			created_at?:  string
			description?: string
			match?: [...close({
				http_filter?:        string
				http_filter_option?: string
				http_filter_value?: [...string]
				invert?: bool
				ip_subnet?: [...string]
				ips_edge_services?: bool
			})]
			name?:       string
			updated_at?: string
		})]

		// The load-balancer backend ID
		backend_id?: string

		// Certificate ID
		certificate_id?: string

		// Collection of Certificate IDs related to the load balancer and
		// domain
		certificate_ids?: [...string]

		// Rate limit for new connections established on this frontend.
		// Use 0 value to disable, else value is connections per second
		connection_rate_limit?: number

		// The date and time of the creation of the frontend
		created_at?: string

		// Defines whether to enable access logs on the frontend
		enable_access_logs?: bool

		// Activates HTTP/3 protocol
		enable_http3?: bool

		// This boolean determines if ACLs should be managed externally
		// through the 'lb_acl' resource. If set to `true`, `acl`
		// attribute cannot be set directly in the lb frontend
		external_acls?: bool

		// The ID of the frontend
		frontend_id?: string
		id?:          string

		// TCP port to listen on the front side
		inbound_port?: number

		// The load-balancer ID
		lb_id?: string

		// The name of the frontend
		name?: string

		// Set the maximum inactivity time on the client side
		timeout_client?: string

		// The date and time of the last update of the frontend
		updated_at?: string
	})
}
