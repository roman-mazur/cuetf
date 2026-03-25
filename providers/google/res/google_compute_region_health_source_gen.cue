package res

#google_compute_region_health_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_health_source")
	close({
		timeouts?: #timeouts

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when you
		// create the resource.
		description?: string

		// Fingerprint of this resource. A hash of the contents stored in
		// this object.
		// This field is used in optimistic locking.
		fingerprint?: string

		// URL to the 'HealthAggregationPolicy' resource. Must be set.
		// Must
		// be regional and in the same region as the 'HealthSource'. Can
		// be
		// mutated.
		health_aggregation_policy?: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		id?: string

		// Name of the resource. Provided by the client when the resource
		// is created.
		// The name must be 1-63 characters long, and comply with RFC1035.
		// Specifically, the name must be 1-63 characters long and match
		// the regular
		// expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the first
		// character must be a lowercase letter, and all following
		// characters must
		// be a dash, lowercase letter, or digit, except the last
		// character, which
		// cannot be a dash.
		name!:    string
		project?: string

		// URL of the region where the health source resides.
		region!: string

		// Server-defined URL with id for the resource.
		self_link_with_id?: string

		// Specifies the type of the 'HealthSource'. The only allowed
		// value
		// is 'BACKEND_SERVICE'. Must be specified when the
		// 'HealthSource' is created, and cannot be mutated. Possible
		// values: ["BACKEND_SERVICE"]
		source_type!: string

		// URLs to the source resources. Must be size 1. Must be a
		// 'BackendService' if the 'sourceType' is 'BACKEND_SERVICE'. The
		// 'BackendService' must have load balancing scheme
		// 'INTERNAL' or 'INTERNAL_MANAGED' and must be regional
		// and in the same region as the 'HealthSource' (cross-region
		// deployment for 'INTERNAL_MANAGED' is not supported). The
		// 'BackendService' may use only IGs, MIGs, or NEGs of type
		// 'GCE_VM_IP' or 'GCE_VM_IP_PORT'. The
		// 'BackendService' may not use 'haPolicy'. Can be
		// mutated.
		sources?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
