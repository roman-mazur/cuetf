package res

import "list"

#google_compute_region_health_check: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_health_check")
	close({
		// How often (in seconds) to send a health check. The default
		// value is 5
		// seconds.
		check_interval_sec?: number
		grpc_health_check?: matchN(1, [#grpc_health_check, list.MaxItems(1) & [...#grpc_health_check]])

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when
		// you create the resource.
		description?: string

		// The unique identifier number for the resource. This identifier
		// is defined by the server.
		health_check_id?: number

		// A so-far unhealthy instance will be marked healthy after this
		// many
		// consecutive successes. The default value is 2.
		healthy_threshold?: number
		grpc_tls_health_check?: matchN(1, [#grpc_tls_health_check, list.MaxItems(1) & [...#grpc_tls_health_check]])
		http2_health_check?: matchN(1, [#http2_health_check, list.MaxItems(1) & [...#http2_health_check]])
		http_health_check?: matchN(1, [#http_health_check, list.MaxItems(1) & [...#http_health_check]])
		id?: string

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
		name!: string
		https_health_check?: matchN(1, [#https_health_check, list.MaxItems(1) & [...#https_health_check]])
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
		ssl_health_check?: matchN(1, [#ssl_health_check, list.MaxItems(1) & [...#ssl_health_check]])
		tcp_health_check?: matchN(1, [#tcp_health_check, list.MaxItems(1) & [...#tcp_health_check]])
		timeouts?: #timeouts
		project?:  string

		// The Region in which the created health check should reside.
		// If it is not provided, the provider region is used.
		region?:    string
		self_link?: string

		// How long (in seconds) to wait before claiming failure.
		// The default value is 5 seconds. It is invalid for timeoutSec to
		// have
		// greater value than checkIntervalSec.
		timeout_sec?: number

		// The type of the health check. One of HTTP, HTTP2, HTTPS, TCP,
		// or SSL.
		type?: string

		// A so-far healthy instance will be marked unhealthy after this
		// many
		// consecutive failures. The default value is 2.
		unhealthy_threshold?: number
	})

	#grpc_health_check: close({
		// The gRPC service name for the health check.
		// The value of grpcServiceName has the following meanings by
		// convention:
		//
		// * Empty serviceName means the overall status of all services at
		// the backend.
		// * Non-empty serviceName means the health of that gRPC service,
		// as defined by the owner of the service.
		//
		// The grpcServiceName can only be ASCII.
		grpc_service_name?: string

		// The port number for the health check request.
		// Must be specified if portName and portSpecification are not set
		// or if port_specification is USE_FIXED_PORT. Valid values are 1
		// through 65535.
		port?: number

		// Port name as defined in InstanceGroup#NamedPort#name. If both
		// port and
		// port_name are defined, port takes precedence.
		port_name?: string

		// Specifies how port is selected for health checking, can be one
		// of the
		// following values:
		//
		// * 'USE_FIXED_PORT': The port number in 'port' is used for
		// health checking.
		//
		// * 'USE_NAMED_PORT': The 'portName' is used for health checking.
		//
		// * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port
		// specified for each
		// network endpoint is used for health checking. For other
		// backends, the
		// port or named port specified in the Backend Service is used for
		// health
		// checking.
		//
		// If not specified, gRPC health check follows behavior specified
		// in 'port' and
		// 'portName' fields. Possible values: ["USE_FIXED_PORT",
		// "USE_NAMED_PORT", "USE_SERVING_PORT"]
		port_specification?: string
	})

	#grpc_tls_health_check: close({
		// The gRPC service name for the health check.
		// The value of grpcServiceName has the following meanings by
		// convention:
		//
		// * Empty serviceName means the overall status of all services at
		// the backend.
		// * Non-empty serviceName means the health of that gRPC service,
		// as defined by the owner of the service.
		//
		// The grpcServiceName can only be ASCII.
		grpc_service_name?: string

		// The port number for the health check request.
		// Must be specified if port_specification is USE_FIXED_PORT.
		// Valid values are 1 through 65535.
		port?: number

		// Specifies how port is selected for health checking, can be one
		// of the
		// following values:
		//
		// * 'USE_FIXED_PORT': The port number in 'port' is used for
		// health checking.
		//
		// * 'USE_NAMED_PORT': Not supported for GRPC with TLS health
		// checking.
		//
		// * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port
		// specified for each
		// network endpoint is used for health checking. For other
		// backends, the
		// port or named port specified in the Backend Service is used for
		// health
		// checking.
		//
		// If not specified, gRPC health check follows behavior specified
		// in the 'port' field. Possible values: ["USE_FIXED_PORT",
		// "USE_NAMED_PORT", "USE_SERVING_PORT"]
		port_specification?: string
	})

	#http2_health_check: close({
		// The value of the host header in the HTTP2 health check request.
		// If left empty (default value), the public IP on behalf of which
		// this health
		// check is performed will be used.
		host?: string

		// The TCP port number for the HTTP2 health check request.
		// The default value is 443.
		port?: number

		// Port name as defined in InstanceGroup#NamedPort#name. If both
		// port and
		// port_name are defined, port takes precedence.
		port_name?: string

		// Specifies how port is selected for health checking, can be one
		// of the
		// following values:
		//
		// * 'USE_FIXED_PORT': The port number in 'port' is used for
		// health checking.
		//
		// * 'USE_NAMED_PORT': The 'portName' is used for health checking.
		//
		// * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port
		// specified for each
		// network endpoint is used for health checking. For other
		// backends, the
		// port or named port specified in the Backend Service is used for
		// health
		// checking.
		//
		// If not specified, HTTP2 health check follows behavior specified
		// in 'port' and
		// 'portName' fields. Possible values: ["USE_FIXED_PORT",
		// "USE_NAMED_PORT", "USE_SERVING_PORT"]
		port_specification?: string

		// Specifies the type of proxy header to append before sending
		// data to the
		// backend. Default value: "NONE" Possible values: ["NONE",
		// "PROXY_V1"]
		proxy_header?: string

		// The request path of the HTTP2 health check request.
		// The default value is /.
		request_path?: string

		// The bytes to match against the beginning of the response data.
		// If left empty
		// (the default value), any response will indicate health. The
		// response data
		// can only be ASCII.
		response?: string
	})

	#http_health_check: close({
		// The value of the host header in the HTTP health check request.
		// If left empty (default value), the public IP on behalf of which
		// this health
		// check is performed will be used.
		host?: string

		// The TCP port number for the HTTP health check request.
		// The default value is 80.
		port?: number

		// Port name as defined in InstanceGroup#NamedPort#name. If both
		// port and
		// port_name are defined, port takes precedence.
		port_name?: string

		// Specifies how port is selected for health checking, can be one
		// of the
		// following values:
		//
		// * 'USE_FIXED_PORT': The port number in 'port' is used for
		// health checking.
		//
		// * 'USE_NAMED_PORT': The 'portName' is used for health checking.
		//
		// * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port
		// specified for each
		// network endpoint is used for health checking. For other
		// backends, the
		// port or named port specified in the Backend Service is used for
		// health
		// checking.
		//
		// If not specified, HTTP health check follows behavior specified
		// in 'port' and
		// 'portName' fields. Possible values: ["USE_FIXED_PORT",
		// "USE_NAMED_PORT", "USE_SERVING_PORT"]
		port_specification?: string

		// Specifies the type of proxy header to append before sending
		// data to the
		// backend. Default value: "NONE" Possible values: ["NONE",
		// "PROXY_V1"]
		proxy_header?: string

		// The request path of the HTTP health check request.
		// The default value is /.
		request_path?: string

		// The bytes to match against the beginning of the response data.
		// If left empty
		// (the default value), any response will indicate health. The
		// response data
		// can only be ASCII.
		response?: string
	})

	#https_health_check: close({
		// The value of the host header in the HTTPS health check request.
		// If left empty (default value), the public IP on behalf of which
		// this health
		// check is performed will be used.
		host?: string

		// The TCP port number for the HTTPS health check request.
		// The default value is 443.
		port?: number

		// Port name as defined in InstanceGroup#NamedPort#name. If both
		// port and
		// port_name are defined, port takes precedence.
		port_name?: string

		// Specifies how port is selected for health checking, can be one
		// of the
		// following values:
		//
		// * 'USE_FIXED_PORT': The port number in 'port' is used for
		// health checking.
		//
		// * 'USE_NAMED_PORT': The 'portName' is used for health checking.
		//
		// * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port
		// specified for each
		// network endpoint is used for health checking. For other
		// backends, the
		// port or named port specified in the Backend Service is used for
		// health
		// checking.
		//
		// If not specified, HTTPS health check follows behavior specified
		// in 'port' and
		// 'portName' fields. Possible values: ["USE_FIXED_PORT",
		// "USE_NAMED_PORT", "USE_SERVING_PORT"]
		port_specification?: string

		// Specifies the type of proxy header to append before sending
		// data to the
		// backend. Default value: "NONE" Possible values: ["NONE",
		// "PROXY_V1"]
		proxy_header?: string

		// The request path of the HTTPS health check request.
		// The default value is /.
		request_path?: string

		// The bytes to match against the beginning of the response data.
		// If left empty
		// (the default value), any response will indicate health. The
		// response data
		// can only be ASCII.
		response?: string
	})

	#log_config: close({
		// Indicates whether or not to export logs. This is false by
		// default,
		// which means no health check logging will be done.
		enable?: bool
	})

	#ssl_health_check: close({
		// The TCP port number for the SSL health check request.
		// The default value is 443.
		port?: number

		// Port name as defined in InstanceGroup#NamedPort#name. If both
		// port and
		// port_name are defined, port takes precedence.
		port_name?: string

		// Specifies how port is selected for health checking, can be one
		// of the
		// following values:
		//
		// * 'USE_FIXED_PORT': The port number in 'port' is used for
		// health checking.
		//
		// * 'USE_NAMED_PORT': The 'portName' is used for health checking.
		//
		// * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port
		// specified for each
		// network endpoint is used for health checking. For other
		// backends, the
		// port or named port specified in the Backend Service is used for
		// health
		// checking.
		//
		// If not specified, SSL health check follows behavior specified
		// in 'port' and
		// 'portName' fields. Possible values: ["USE_FIXED_PORT",
		// "USE_NAMED_PORT", "USE_SERVING_PORT"]
		port_specification?: string

		// Specifies the type of proxy header to append before sending
		// data to the
		// backend. Default value: "NONE" Possible values: ["NONE",
		// "PROXY_V1"]
		proxy_header?: string

		// The application data to send once the SSL connection has been
		// established (default value is empty). If both request and
		// response are
		// empty, the connection establishment alone will indicate health.
		// The request
		// data can only be ASCII.
		request?: string

		// The bytes to match against the beginning of the response data.
		// If left empty
		// (the default value), any response will indicate health. The
		// response data
		// can only be ASCII.
		response?: string
	})

	#tcp_health_check: close({
		// The TCP port number for the TCP health check request.
		// The default value is 80.
		port?: number

		// Port name as defined in InstanceGroup#NamedPort#name. If both
		// port and
		// port_name are defined, port takes precedence.
		port_name?: string

		// Specifies how port is selected for health checking, can be one
		// of the
		// following values:
		//
		// * 'USE_FIXED_PORT': The port number in 'port' is used for
		// health checking.
		//
		// * 'USE_NAMED_PORT': The 'portName' is used for health checking.
		//
		// * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port
		// specified for each
		// network endpoint is used for health checking. For other
		// backends, the
		// port or named port specified in the Backend Service is used for
		// health
		// checking.
		//
		// If not specified, TCP health check follows behavior specified
		// in 'port' and
		// 'portName' fields. Possible values: ["USE_FIXED_PORT",
		// "USE_NAMED_PORT", "USE_SERVING_PORT"]
		port_specification?: string

		// Specifies the type of proxy header to append before sending
		// data to the
		// backend. Default value: "NONE" Possible values: ["NONE",
		// "PROXY_V1"]
		proxy_header?: string

		// The application data to send once the TCP connection has been
		// established (default value is empty). If both request and
		// response are
		// empty, the connection establishment alone will indicate health.
		// The request
		// data can only be ASCII.
		request?: string

		// The bytes to match against the beginning of the response data.
		// If left empty
		// (the default value), any response will indicate health. The
		// response data
		// can only be ASCII.
		response?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
