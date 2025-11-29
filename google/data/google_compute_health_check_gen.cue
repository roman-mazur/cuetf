package data

#google_compute_health_check: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_health_check")
	close({
		// How often (in seconds) to send a health check. The default
		// value is 5
		// seconds.
		check_interval_sec?: number

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when
		// you create the resource.
		description?: string

		// A nested object resource.
		grpc_health_check?: [...close({
			grpc_service_name?:  string
			port?:               number
			port_name?:          string
			port_specification?: string
		})]

		// A nested object resource.
		grpc_tls_health_check?: [...close({
			grpc_service_name?:  string
			port?:               number
			port_specification?: string
		})]

		// A so-far unhealthy instance will be marked healthy after this
		// many
		// consecutive successes. The default value is 2.
		healthy_threshold?: number

		// A nested object resource.
		http2_health_check?: [...close({
			host?:               string
			port?:               number
			port_name?:          string
			port_specification?: string
			proxy_header?:       string
			request_path?:       string
			response?:           string
		})]

		// A nested object resource.
		http_health_check?: [...close({
			host?:               string
			port?:               number
			port_name?:          string
			port_specification?: string
			proxy_header?:       string
			request_path?:       string
			response?:           string
		})]

		// A nested object resource.
		https_health_check?: [...close({
			host?:               string
			port?:               number
			port_name?:          string
			port_specification?: string
			proxy_header?:       string
			request_path?:       string
			response?:           string
		})]
		id?: string

		// Configure logging on this health check.
		log_config?: [...close({
			enable?: bool
		})]

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
		// the
		// last character, which cannot be a dash.
		name!:      string
		project?:   string
		self_link?: string

		// The list of cloud regions from which health checks are
		// performed. If
		// any regions are specified, then exactly 3 regions should be
		// specified.
		// The region names must be valid names of Google Cloud regions.
		// This can
		// only be set for global health check. If this list is non-empty,
		// then
		// there are restrictions on what other health check fields are
		// supported
		// and what other resources can use this health check:
		//
		// * SSL, HTTP2, and GRPC protocols are not supported.
		//
		// * The TCP request field is not supported.
		//
		// * The proxyHeader field for HTTP, HTTPS, and TCP is not
		// supported.
		//
		// * The checkIntervalSec field must be at least 30.
		//
		// * The health check cannot be used with BackendService nor with
		// managed
		// instance group auto-healing.
		source_regions?: [...string]

		// A nested object resource.
		ssl_health_check?: [...close({
			port?:               number
			port_name?:          string
			port_specification?: string
			proxy_header?:       string
			request?:            string
			response?:           string
		})]

		// A nested object resource.
		tcp_health_check?: [...close({
			port?:               number
			port_name?:          string
			port_specification?: string
			proxy_header?:       string
			request?:            string
			response?:           string
		})]

		// How long (in seconds) to wait before claiming failure.
		// The default value is 5 seconds. It is invalid for timeoutSec to
		// have
		// greater value than checkIntervalSec.
		timeout_sec?: number

		// The type of the health check. One of HTTP, HTTPS, TCP, or SSL.
		type?: string

		// A so-far healthy instance will be marked unhealthy after this
		// many
		// consecutive failures. The default value is 2.
		unhealthy_threshold?: number
	})
}
