package res

#google_compute_region_backend_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_backend_bucket")
	close({
		timeouts?: #timeouts

		// Cloud Storage bucket name. The bucket must be in the same
		// region as this
		// backend bucket.
		bucket_name!: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional textual description of the resource; provided by
		// the
		// client when the resource is created.
		description?: string
		id?:          string

		// Specifies the load balancer type this backend bucket will be
		// used with.
		//
		// Possible values:
		// - 'INTERNAL_MANAGED': for regional internal Application Load
		// Balancers
		// - 'EXTERNAL_MANAGED': for regional external Application Load
		// Balancers
		//
		// This field is required for regional backend buckets. Possible
		// values: ["INTERNAL_MANAGED", "EXTERNAL_MANAGED"]
		load_balancing_scheme?: string

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
		name!:    string
		project?: string

		// The region where the backend bucket resides.
		region!:    string
		self_link?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
