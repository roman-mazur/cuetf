package res

import "list"

#google_network_services_grpc_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_services_grpc_route")
	close({
		// Time the GrpcRoute was created in UTC.
		create_time?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// List of gateways this GrpcRoute is attached to, as one of the
		// routing rules to route the requests served by the gateway.
		gateways?: [...string]

		// Required. Service hostnames with an optional port for which
		// this route describes traffic.
		hostnames!: [...string]
		id?: string

		// Set of label tags associated with the GrpcRoute resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Location (region) of the GRPCRoute resource to be created. Only
		// the value 'global' is currently allowed; defaults to 'global'
		// if omitted.
		location?: string

		// List of meshes this GrpcRoute is attached to, as one of the
		// routing rules to route the requests served by the mesh.
		meshes?: [...string]
		rules?: matchN(1, [#rules, [_, ...] & [...#rules]])
		timeouts?: #timeouts

		// Name of the GrpcRoute resource.
		name!:    string
		project?: string

		// Server-defined URL of this resource.
		self_link?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time the GrpcRoute was updated in UTC.
		update_time?: string
	})

	#rules: close({
		action?: matchN(1, [_#defs."/$defs/rules/$defs/action", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action"]])
		matches?: matchN(1, [_#defs."/$defs/rules/$defs/matches", [..._#defs."/$defs/rules/$defs/matches"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rules/$defs/action": close({
		destinations?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/destinations", [..._#defs."/$defs/rules/$defs/action/$defs/destinations"]])
		fault_injection_policy?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy"]])
		retry_policy?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/retry_policy", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/retry_policy"]])

		// Specifies the timeout for selected route.
		timeout?: string
	})

	_#defs: "/$defs/rules/$defs/action/$defs/destinations": close({
		// The URL of a BackendService to route traffic to.
		service_name?: string

		// Specifies the proportion of requests forwarded to the backend
		// referenced by the serviceName field.
		weight?: number
	})

	_#defs: "/$defs/rules/$defs/action/$defs/fault_injection_policy": close({
		abort?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/abort", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/abort"]])
		delay?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/delay", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/delay"]])
	})

	_#defs: "/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/abort": close({
		// The HTTP status code used to abort the request.
		http_status?: number

		// The percentage of traffic which will be aborted.
		percentage?: number
	})

	_#defs: "/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/delay": close({
		// Specify a fixed delay before forwarding the request.
		fixed_delay?: string

		// The percentage of traffic on which delay will be injected.
		percentage?: number
	})

	_#defs: "/$defs/rules/$defs/action/$defs/retry_policy": close({
		// Specifies the allowed number of retries.
		num_retries?: number

		// Specifies one or more conditions when this retry policy
		// applies. Possible values: ["connect-failure",
		// "refused-stream", "cancelled", "deadline-exceeded",
		// "resource-exhausted", "unavailable"]
		retry_conditions?: [...string]
	})

	_#defs: "/$defs/rules/$defs/matches": close({
		headers?: matchN(1, [_#defs."/$defs/rules/$defs/matches/$defs/headers", [..._#defs."/$defs/rules/$defs/matches/$defs/headers"]])
		method?: matchN(1, [_#defs."/$defs/rules/$defs/matches/$defs/method", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/matches/$defs/method"]])
	})

	_#defs: "/$defs/rules/$defs/matches/$defs/headers": close({
		// Required. The key of the header.
		key!: string

		// The type of match. Default value: "EXACT" Possible values:
		// ["TYPE_UNSPECIFIED", "EXACT", "REGULAR_EXPRESSION"]
		type?: string

		// Required. The value of the header.
		value!: string
	})

	_#defs: "/$defs/rules/$defs/matches/$defs/method": close({
		// Specifies that matches are case sensitive. The default value is
		// true.
		case_sensitive?: bool

		// Required. Name of the method to match against.
		grpc_method!: string

		// Required. Name of the service to match against.
		grpc_service!: string
	})
}
