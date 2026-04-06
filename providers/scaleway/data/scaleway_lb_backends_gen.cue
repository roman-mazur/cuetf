package data

#scaleway_lb_backends: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_lb_backends")
	close({
		// List of backends.
		backends?: [...close({
			created_at?:             string
			failover_host?:          string
			forward_port?:           number
			forward_port_algorithm?: string
			forward_protocol?:       string
			health_check_delay?:     string
			health_check_http?: [...close({
				code?:        number
				host_header?: string
				method?:      string
				uri?:         string
			})]
			health_check_https?: [...close({
				code?:        number
				host_header?: string
				method?:      string
				sni?:         string
				uri?:         string
			})]
			health_check_max_retries?: number
			health_check_port?:        number
			health_check_tcp?: [...close({})]
			health_check_timeout?:     string
			id?:                       string
			ignore_ssl_server_verify?: bool
			lb_id?:                    string
			name?:                     string
			on_marked_down_action?:    string
			proxy_protocol?:           string
			server_ips?: [...string]
			ssl_bridging?:                bool
			sticky_sessions?:             string
			sticky_sessions_cookie_name?: string
			timeout_connect?:             string
			timeout_server?:              string
			timeout_tunnel?:              string
			update_at?:                   string
		})]
		id?: string

		// backends with a lb id like it are listed.
		lb_id!: string

		// Backends with a name like it are listed.
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
