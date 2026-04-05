package res

#google_compute_region_composite_health_check: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_composite_health_check")
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
		// This field is used in optimistic locking. This field will be
		// ignored when
		// inserting a 'CompositeHealthCheck'. An up-to-date fingerprint
		// must be provided in order to patch the CompositeHealthCheck;
		// Otherwise,
		// the request will fail with error '412 conditionNotMet'. To see
		// the latest fingerprint, make a 'get()' request to retrieve the
		// CompositeHealthCheck.
		fingerprint?: string

		// URL to the destination resource. Must be set. Must be a
		// ForwardingRule. The ForwardingRule must have
		// load balancing scheme INTERNAL or
		// INTERNAL_MANAGED and must be regional and in the same region
		// as the CompositeHealthCheck (cross-region deployment for
		// INTERNAL_MANAGED is not supported). Can be mutated.
		health_destination!: string

		// URLs to the HealthSource resources whose results are AND'ed.
		// I.e. he aggregated result is is HEALTHY only if all sources
		// are HEALTHY. Must have at least 1. Must not have more than 10.
		// Must be regional and in the same region as the
		// CompositeHealthCheck. Can be mutated.
		health_sources?: [...string]

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

		// URL of the region where the composite health check resides.
		region!: string

		// Server-defined URL with id for the resource.
		self_link_with_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
