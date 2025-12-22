package res

import "list"

#google_network_services_lb_edge_extension: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_lb_edge_extension")
	close({
		// A human-readable description of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// A list of references to the forwarding rules to which this
		// service extension is attached.
		// At least one forwarding rule is required. Only one
		// LbEdgeExtension resource can be associated with a forwarding
		// rule.
		forwarding_rules!: [...string]
		id?: string

		// Set of labels associated with the LbEdgeExtension resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// All forwarding rules referenced by this extension must share
		// the same load balancing scheme. Possible values:
		// ["EXTERNAL_MANAGED"]
		load_balancing_scheme!: string

		// The location of the edge extension
		location!: string
		extension_chains!: matchN(1, [#extension_chains, [_, ...] & [...#extension_chains]])
		timeouts?: #timeouts

		// Name of the LbEdgeExtension resource in the following format:
		// projects/{project}/locations/{location}/lbEdgeExtensions/{lbEdgeExtensions}
		name!:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#extension_chains: close({
		extensions!: matchN(1, [_#defs."/$defs/extension_chains/$defs/extensions", [_, ...] & [..._#defs."/$defs/extension_chains/$defs/extensions"]])
		match_condition!: matchN(1, [_#defs."/$defs/extension_chains/$defs/match_condition", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/extension_chains/$defs/match_condition"]])

		// The name for this extension chain. The name is logged as part
		// of the HTTP request logs.
		// The name must conform with RFC-1034, is restricted to
		// lower-cased letters, numbers and hyphens,
		// and can have a maximum length of 63 characters. Additionally,
		// the first character must be a letter
		// and the last character must be a letter or a number.
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/extension_chains/$defs/extensions": close({
		// Determines how the proxy behaves if the call to the extension
		// fails or times out.
		// When set to TRUE, request or response processing continues
		// without error.
		// Any subsequent extensions in the extension chain are also
		// executed.
		// When set to FALSE: * If response headers have not been
		// delivered to the downstream client,
		// a generic 500 error is returned to the client. The error
		// response can be tailored by
		// configuring a custom error response in the load balancer.
		fail_open?: bool

		// List of the HTTP headers to forward to the extension (from the
		// client or backend).
		// If omitted, all headers are sent. Each element is a string
		// indicating the header name.
		forward_headers?: [...string]

		// The name for this extension. The name is logged as part of the
		// HTTP request logs.
		// The name must conform with RFC-1034, is restricted to
		// lower-cased letters, numbers and hyphens,
		// and can have a maximum length of 63 characters. Additionally,
		// the first character must be a letter
		// and the last a letter or a number.
		name!: string

		// The reference to the service that runs the extension.
		//
		// * To configure a callout extension, service must be a
		// fully-qualified reference to a backend service.
		// * To configure a plugin extension, service must be a reference
		// to a WasmPlugin resource.
		service!: string

		// A set of events during request or response processing for which
		// this extension is called.
		// This field is required for the LbEdgeExtension resource and
		// only supports the value 'REQUEST_HEADERS'.
		supported_events?: [...string]
	})

	_#defs: "/$defs/extension_chains/$defs/match_condition": close({
		// A Common Expression Language (CEL) expression that is used to
		// match requests for which the extension chain is executed.
		cel_expression!: string
	})
}
