package res

#google_network_services_authz_extension: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_authz_extension")
	close({
		// The :authority header in the gRPC request sent from Envoy to
		// the extension service.
		authority!: string

		// The timestamp when the resource was created.
		create_time?: string

		// A human-readable description of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Determines how the proxy behaves if the call to the extension
		// fails or times out.
		// When set to TRUE, request or response processing continues
		// without error. Any subsequent extensions in the extension
		// chain are also executed. When set to FALSE or the default
		// setting of FALSE is used, one of the following happens:
		// * If response headers have not been delivered to the downstream
		// client, a generic 500 error is returned to the client. The
		// error response can be tailored by configuring a custom error
		// response in the load balancer.
		// * If response headers have been delivered, then the HTTP stream
		// to the downstream client is reset.
		fail_open?: bool

		// List of the HTTP headers to forward to the extension (from the
		// client). If omitted, all headers are sent. Each element is a
		// string indicating the header name.
		forward_headers?: [...string]

		// Set of labels associated with the AuthzExtension resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Required when the service points to a backend service. All
		// backend services and forwarding rules referenced by
		// this extension must share the same load balancing scheme. For
		// more information, refer to
		// [Backend services
		// overview](https://cloud.google.com/load-balancing/docs/backend-service).
		// Possible values: ["INTERNAL_MANAGED", "EXTERNAL_MANAGED"]
		load_balancing_scheme?: string

		// The location of the resource.
		location!: string
		id?:       string

		// The metadata provided here is included as part of the
		// metadata_context (of type google.protobuf.Struct) in the
		// ProcessingRequest message sent to the extension server. The
		// metadata is available under the namespace
		// com.google.authz_extension.<resourceName>. The following
		// variables are supported in the metadata Struct:
		//
		// {forwarding_rule_id} - substituted with the forwarding rule's
		// fully qualified resource name.
		metadata?: [string]: string

		// Identifier. Name of the AuthzExtension resource.
		name!:     string
		timeouts?: #timeouts

		// The service that runs the extension.
		// The following values and formats are accepted:
		// * 'iap.googleapis.com' when the policyProfile is set to
		// REQUEST_AUTHZ
		// * 'modelarmor.{{region}}.rep.googleapis.com' when the
		// policyProfile is set to CONTENT_AUTHZ
		// * A fully qualified domain name that can be resolved by the
		// dataplane
		// * Backend service resource URI of the form
		// 'https://www.googleapis.com/compute/v1/projects/{{project}}/regions/{{region}}/backendServices/{{name}}'
		// or
		// 'https://www.googleapis.com/compute/v1/projects/{{project}}/global/backendServices/{{name}}}}'
		service!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string

		// Specifies the timeout for each individual message on the
		// stream. The timeout must be between 10-10000 milliseconds.
		timeout!: string

		// The timestamp when the resource was updated.
		update_time?: string

		// The format of communication supported by the callout extension.
		// Applicable only when the policyProfile is REQUEST_AUTHZ.
		// This field is supported only for regional AuthzExtension
		// resources. If not specified, the default value
		// EXT_PROC_GRPC is used. Global AuthzExtension resources use the
		// EXT_PROC_GRPC wire format.
		//
		// Supported values:
		// - WIRE_FORMAT_UNSPECIFIED:
		// No wire format is explicitly specified. The backend
		// automatically
		// defaults this value to EXT_PROC_GRPC.
		// - EXT_PROC_GRPC:
		// Uses Envoy's External Processing (ext_proc) gRPC API over a
		// single
		// gRPC stream. The backend service must support HTTP/2 or H2C.
		// All supported events for a client request are sent over the
		// same
		// gRPC stream. This is the default wire format.
		// - EXT_AUTHZ_GRPC:
		// Uses Envoy's external authorization (ext_authz) gRPC API.
		// The backend service must support HTTP/2 or H2C.
		// This option is only supported for regional AuthzExtension
		// resources. Possible values: ["WIRE_FORMAT_UNSPECIFIED",
		// "EXT_PROC_GRPC", "EXT_AUTHZ_GRPC"]
		wire_format?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
