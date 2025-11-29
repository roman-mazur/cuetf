package res

import "list"

#google_beyondcorp_security_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_beyondcorp_security_gateway")
	close({
		// Output only. Timestamp when the resource was created.
		create_time?: string

		// Service account used for operations that involve resources in
		// consumer projects.
		delegating_service_account?: string

		// Optional. An arbitrary user-provided name for the
		// SecurityGateway.
		// Cannot exceed 64 characters.
		display_name?: string

		// Output only. IP addresses that will be used for establishing
		// connection to the endpoints.
		external_ips?: [...string]
		id?: string

		// Identifier. Name of the resource.
		name?: string
		hubs?: matchN(1, [#hubs, [...#hubs]])
		project?: string
		proxy_protocol_config?: matchN(1, [#proxy_protocol_config, list.MaxItems(1) & [...#proxy_protocol_config]])
		service_discovery?: matchN(1, [#service_discovery, list.MaxItems(1) & [...#service_discovery]])
		timeouts?: #timeouts

		// Optional. User-settable SecurityGateway resource ID.
		// * Must start with a letter.
		// * Must contain between 4-63 characters from '/a-z-/'.
		// * Must end with a number or letter.
		security_gateway_id!: string

		// Output only. The operational state of the SecurityGateway.
		// Possible values:
		// STATE_UNSPECIFIED
		// CREATING
		// UPDATING
		// DELETING
		// RUNNING
		// DOWN
		// ERROR
		state?: string

		// Output only. Timestamp when the resource was last modified.
		update_time?: string
	})

	#hubs: close({
		internet_gateway?: matchN(1, [_#defs."/$defs/hubs/$defs/internet_gateway", list.MaxItems(1) & [..._#defs."/$defs/hubs/$defs/internet_gateway"]])
		region!: string
	})

	#proxy_protocol_config: close({
		// The configuration for the proxy.
		allowed_client_headers?: [...string]

		// Client IP configuration. The client IP address is included if
		// true.
		client_ip?: bool

		// Gateway identity configuration. Possible values:
		// ["RESOURCE_NAME"]
		gateway_identity?: string
		contextual_headers?: matchN(1, [_#defs."/$defs/proxy_protocol_config/$defs/contextual_headers", list.MaxItems(1) & [..._#defs."/$defs/proxy_protocol_config/$defs/contextual_headers"]])

		// Custom resource specific headers along with the values.
		// The names should conform to RFC 9110:
		// > Field names SHOULD constrain themselves to alphanumeric
		// characters, "-",
		// and ".", and SHOULD begin with a letter.
		// > Field values SHOULD contain only ASCII printable characters
		// and tab.
		metadata_headers?: [string]: string
	})

	#service_discovery: close({
		api_gateway?: matchN(1, [_#defs."/$defs/service_discovery/$defs/api_gateway", list.MaxItems(1) & [..._#defs."/$defs/service_discovery/$defs/api_gateway"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/hubs/$defs/internet_gateway": close({
		// Output only. List of IP addresses assigned to the Cloud NAT.
		assigned_ips?: [...string]
	})

	_#defs: "/$defs/proxy_protocol_config/$defs/contextual_headers": close({
		device_info?: matchN(1, [_#defs."/$defs/proxy_protocol_config/$defs/contextual_headers/$defs/device_info", list.MaxItems(1) & [..._#defs."/$defs/proxy_protocol_config/$defs/contextual_headers/$defs/device_info"]])
		group_info?: matchN(1, [_#defs."/$defs/proxy_protocol_config/$defs/contextual_headers/$defs/group_info", list.MaxItems(1) & [..._#defs."/$defs/proxy_protocol_config/$defs/contextual_headers/$defs/group_info"]])
		user_info?: matchN(1, [_#defs."/$defs/proxy_protocol_config/$defs/contextual_headers/$defs/user_info", list.MaxItems(1) & [..._#defs."/$defs/proxy_protocol_config/$defs/contextual_headers/$defs/user_info"]])

		// Default output type for all enabled headers. Possible values:
		// ["PROTOBUF", "JSON", "NONE"]
		output_type?: string
	})

	_#defs: "/$defs/proxy_protocol_config/$defs/contextual_headers/$defs/device_info": close({
		// The output type of the delegated device info. Possible values:
		// ["PROTOBUF", "JSON", "NONE"]
		output_type?: string
	})

	_#defs: "/$defs/proxy_protocol_config/$defs/contextual_headers/$defs/group_info": close({
		// The output type of the delegated group info. Possible values:
		// ["PROTOBUF", "JSON", "NONE"]
		output_type?: string
	})

	_#defs: "/$defs/proxy_protocol_config/$defs/contextual_headers/$defs/user_info": close({
		// The output type of the delegated user info. Possible values:
		// ["PROTOBUF", "JSON", "NONE"]
		output_type?: string
	})

	_#defs: "/$defs/service_discovery/$defs/api_gateway": close({
		resource_override?: matchN(1, [_#defs."/$defs/service_discovery/$defs/api_gateway/$defs/resource_override", list.MaxItems(1) & [..._#defs."/$defs/service_discovery/$defs/api_gateway/$defs/resource_override"]])
	})

	_#defs: "/$defs/service_discovery/$defs/api_gateway/$defs/resource_override": close({
		// Contains uri path fragment where HTTP request is sent.
		path?: string
	})
}
