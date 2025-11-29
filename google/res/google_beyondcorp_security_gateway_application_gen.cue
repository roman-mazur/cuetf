package res

import "list"

#google_beyondcorp_security_gateway_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_beyondcorp_security_gateway_application")
	close({
		// User-settable Application resource ID.
		// * Must start with a letter.
		// * Must contain between 4-63 characters from '/a-z-/'.
		// * Must end with a number or letter.
		application_id!: string

		// Output only. Timestamp when the resource was created.
		create_time?: string

		// Optional. An arbitrary user-provided name for the Application
		// resource.
		// Cannot exceed 64 characters.
		display_name?: string
		id?:           string

		// Identifier. Name of the resource.
		name?:    string
		project?: string
		endpoint_matchers?: matchN(1, [#endpoint_matchers, [...#endpoint_matchers]])

		// Type of the external application. Possible values:
		// ["PROXY_GATEWAY", "API_GATEWAY"]
		schema?:   string
		timeouts?: #timeouts
		upstreams?: matchN(1, [#upstreams, [...#upstreams]])

		// ID of the Security Gateway resource this belongs to.
		security_gateway_id!: string

		// Output only. Timestamp when the resource was last modified.
		update_time?: string
	})

	#endpoint_matchers: close({
		// Required. Hostname of the application.
		hostname!: string

		// Optional. Ports of the application.
		ports!: [...number]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#upstreams: close({
		egress_policy?: matchN(1, [_#defs."/$defs/upstreams/$defs/egress_policy", list.MaxItems(1) & [..._#defs."/$defs/upstreams/$defs/egress_policy"]])
		external?: matchN(1, [_#defs."/$defs/upstreams/$defs/external", list.MaxItems(1) & [..._#defs."/$defs/upstreams/$defs/external"]])
		network?: matchN(1, [_#defs."/$defs/upstreams/$defs/network", list.MaxItems(1) & [..._#defs."/$defs/upstreams/$defs/network"]])
		proxy_protocol?: matchN(1, [_#defs."/$defs/upstreams/$defs/proxy_protocol", list.MaxItems(1) & [..._#defs."/$defs/upstreams/$defs/proxy_protocol"]])
	})

	_#defs: "/$defs/upstreams/$defs/egress_policy": close({
		// Required. List of regions where the application sends traffic
		// to.
		regions!: [...string]
	})

	_#defs: "/$defs/upstreams/$defs/external": close({
		endpoints!: matchN(1, [_#defs."/$defs/upstreams/$defs/external/$defs/endpoints", [_, ...] & [..._#defs."/$defs/upstreams/$defs/external/$defs/endpoints"]])
	})

	_#defs: "/$defs/upstreams/$defs/external/$defs/endpoints": close({
		// Hostname of the endpoint.
		hostname!: string

		// Port of the endpoint.
		port!: number
	})

	_#defs: "/$defs/upstreams/$defs/network": close({
		// Required. Network name is of the format:
		// 'projects/{project}/global/networks/{network}'
		name!: string
	})

	_#defs: "/$defs/upstreams/$defs/proxy_protocol": close({
		// The configuration for the proxy.
		allowed_client_headers?: [...string]

		// Client IP configuration. The client IP address is included if
		// true.
		client_ip?: bool

		// Gateway identity configuration. Possible values:
		// ["RESOURCE_NAME"]
		gateway_identity?: string
		contextual_headers?: matchN(1, [_#defs."/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers", list.MaxItems(1) & [..._#defs."/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers"]])

		// Custom resource specific headers along with the values.
		// The names should conform to RFC 9110:
		// > Field names SHOULD constrain themselves to alphanumeric
		// characters, "-",
		// and ".", and SHOULD begin with a letter.
		// > Field values SHOULD contain only ASCII printable characters
		// and tab.
		metadata_headers?: [string]: string
	})

	_#defs: "/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers": close({
		device_info?: matchN(1, [_#defs."/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers/$defs/device_info", list.MaxItems(1) & [..._#defs."/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers/$defs/device_info"]])
		group_info?: matchN(1, [_#defs."/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers/$defs/group_info", list.MaxItems(1) & [..._#defs."/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers/$defs/group_info"]])
		user_info?: matchN(1, [_#defs."/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers/$defs/user_info", list.MaxItems(1) & [..._#defs."/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers/$defs/user_info"]])

		// Default output type for all enabled headers. Possible values:
		// ["PROTOBUF", "JSON", "NONE"]
		output_type?: string
	})

	_#defs: "/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers/$defs/device_info": close({
		// The output type of the delegated device info. Possible values:
		// ["PROTOBUF", "JSON", "NONE"]
		output_type?: string
	})

	_#defs: "/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers/$defs/group_info": close({
		// The output type of the delegated group info. Possible values:
		// ["PROTOBUF", "JSON", "NONE"]
		output_type?: string
	})

	_#defs: "/$defs/upstreams/$defs/proxy_protocol/$defs/contextual_headers/$defs/user_info": close({
		// The output type of the delegated user info. Possible values:
		// ["PROTOBUF", "JSON", "NONE"]
		output_type?: string
	})
}
