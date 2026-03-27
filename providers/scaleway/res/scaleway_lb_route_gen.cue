package res

#scaleway_lb_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_lb_route")
	close({
		// The backend ID destination of redirection
		backend_id!: string

		// The date at which the route was created (RFC 3339 format)
		created_at?: string
		timeouts?:   #timeouts

		// The frontend ID origin of redirection
		frontend_id!: string

		// Specifies the host of the server to which the request is being
		// sent
		match_host_header?: string
		id?:                string

		// Value to match in the URL beginning path from an incoming
		// request
		match_path_begin?: string

		// Server Name Indication TLS extension field from an incoming
		// connection made via an SSL/TLS transport layer
		match_sni?: string

		// If true, all subdomains will match
		match_subdomains?: bool

		// The date at which the route was last updated (RFC 3339 format)
		updated_at?: string
	})

	#timeouts: close({
		default?: string
	})
}
