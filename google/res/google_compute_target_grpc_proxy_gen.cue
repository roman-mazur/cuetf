package res

#google_compute_target_grpc_proxy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_target_grpc_proxy")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Fingerprint of this resource. A hash of the contents stored in
		// this object. This field is used in optimistic locking. This
		// field
		// will be ignored when inserting a TargetGrpcProxy. An up-to-date
		// fingerprint must be provided in order to patch/update the
		// TargetGrpcProxy; otherwise, the request will fail with error
		// 412 conditionNotMet. To see the latest fingerprint, make a
		// get()
		// request to retrieve the TargetGrpcProxy. A base64-encoded
		// string.
		fingerprint?: string

		// Name of the resource. Provided by the client when the resource
		// is created. The name must be 1-63 characters long, and comply
		// with RFC1035. Specifically, the name must be 1-63 characters
		// long
		// and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'
		// which
		// means the first character must be a lowercase letter, and all
		// following characters must be a dash, lowercase letter, or
		// digit,
		// except the last character, which cannot be a dash.
		name!:      string
		id?:        string
		project?:   string
		self_link?: string

		// Server-defined URL with id for the resource.
		self_link_with_id?: string
		timeouts?:          #timeouts

		// URL to the UrlMap resource that defines the mapping from URL to
		// the BackendService. The protocol field in the BackendService
		// must be set to GRPC.
		url_map?: string

		// If true, indicates that the BackendServices referenced by
		// the urlMap may be accessed by gRPC applications without using
		// a sidecar proxy. This will enable configuration checks on
		// urlMap
		// and its referenced BackendServices to not allow unsupported
		// features.
		// A gRPC application must use "xds:///" scheme in the target URI
		// of the service it is connecting to. If false, indicates that
		// the
		// BackendServices referenced by the urlMap will be accessed by
		// gRPC
		// applications via a sidecar proxy. In this case, a gRPC
		// application
		// must not use "xds:///" scheme in the target URI of the service
		// it is connecting to
		validate_for_proxyless?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
