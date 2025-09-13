package data

#google_compute_lb_ip_ranges: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_lb_ip_ranges")
	close({
		http_ssl_tcp_internal?: [...string]
		id?: string
		network?: [...string]
	})
}
