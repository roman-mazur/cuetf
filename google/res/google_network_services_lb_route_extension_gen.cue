package res

import "list"

#google_network_services_lb_route_extension: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_lb_route_extension")
	close({
		// A human-readable description of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// A list of references to the forwarding rules to which this
		// service extension is attached to.
		// At least one forwarding rule is required. There can be only one
		// LbRouteExtension resource per forwarding rule.
		forwarding_rules!: [...string]
		id?: string

		// Set of labels associated with the LbRouteExtension resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// All backend services and forwarding rules referenced by this
		// extension must share the same load balancing scheme.
		// For more information, refer to [Choosing a load
		// balancer](https://cloud.google.com/load-balancing/docs/backend-service)
		// and
		// [Supported application load
		// balancers](https://cloud.google.com/service-extensions/docs/callouts-overview#supported-lbs).
		// Possible values: ["INTERNAL_MANAGED", "EXTERNAL_MANAGED"]
		load_balancing_scheme!: string

		// The location of the route extension
		location!: string
		extension_chains!: matchN(1, [#extension_chains, [_, ...] & [...#extension_chains]])
		timeouts?: #timeouts

		// Name of the LbRouteExtension resource in the following format:
		// projects/{project}/locations/{location}/lbRouteExtensions/{lbRouteExtension}
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
		// The :authority header in the gRPC request sent from Envoy to
		// the extension service.
		authority?: string

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

		// The metadata provided here is included as part of the
		// 'metadata_context' (of type 'google.protobuf.Struct')
		// in the 'ProcessingRequest' message sent to the extension
		// server.
		// The metadata is available under the namespace
		// 'com.google.lb_route_extension.<resource_name>.<chain_name>.<extension_name>'.
		// The following variables are supported in the metadata:
		// '{forwarding_rule_id}' - substituted with the forwarding
		// rule's fully qualified resource name.
		// This field must not be set for plugin extensions. Setting it
		// results in a validation error.
		metadata?: [string]: string

		// The name for this extension. The name is logged as part of the
		// HTTP request logs.
		// The name must conform with RFC-1034, is restricted to
		// lower-cased letters, numbers and hyphens,
		// and can have a maximum length of 63 characters. Additionally,
		// the first character must be a letter
		// and the last a letter or a number.
		name!: string

		// When set to 'TRUE', enables 'observability_mode' on the
		// 'ext_proc' filter.
		// This makes 'ext_proc' calls asynchronous. Envoy doesn't check
		// for the response from 'ext_proc' calls.
		// For more information about the filter, see:
		// https://www.envoyproxy.io/docs/envoy/v1.32.3/api-v3/extensions/filters/http/ext_proc/v3/ext_proc.proto
		// This field is helpful when you want to try out the extension in
		// async log-only mode.
		// Supported by regional 'LbTrafficExtension' and
		// 'LbRouteExtension' resources.
		// Only 'STREAMED' (default) body processing mode is supported.
		observability_mode?: bool

		// Configures the send mode for request body processing.
		// The field can only be set if 'supported_events' includes
		// 'REQUEST_BODY'.
		// If 'supported_events' includes 'REQUEST_BODY', but
		// 'request_body_send_mode' is unset, the default value
		// 'STREAMED' is used.
		// When this field is set to 'FULL_DUPLEX_STREAMED',
		// 'supported_events' must include both 'REQUEST_BODY' and
		// 'REQUEST_TRAILERS'.
		// This field can be set only when the 'service' field of the
		// extension points to a 'BackendService'.
		// Only 'FULL_DUPLEX_STREAMED' mode is supported for
		// 'LbRouteExtension' resources. Possible values:
		// ["BODY_SEND_MODE_UNSPECIFIED", "BODY_SEND_MODE_STREAMED",
		// "BODY_SEND_MODE_FULL_DUPLEX_STREAMED"]
		request_body_send_mode?: string

		// The reference to the service that runs the extension.
		//
		// * To configure a callout extension, service must be a
		// fully-qualified reference to a backend service.
		// * To configure a plugin extension, service must be a reference
		// to a WasmPlugin resource.
		service!: string

		// A set of events during request or response processing for which
		// this extension is called.
		// This field is optional for the LbRouteExtension resource. If
		// unspecified, 'REQUEST_HEADERS' event is assumed as supported.
		// Possible values: 'REQUEST_HEADERS', 'REQUEST_BODY',
		// 'REQUEST_TRAILERS'.
		supported_events?: [...string]

		// Specifies the timeout for each individual message on the
		// stream. The timeout must be between 10-1000 milliseconds.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		timeout?: string
	})

	_#defs: "/$defs/extension_chains/$defs/match_condition": close({
		// A Common Expression Language (CEL) expression that is used to
		// match requests for which the extension chain is executed.
		cel_expression!: string
	})
}
