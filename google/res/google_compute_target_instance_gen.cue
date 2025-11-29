package res

#google_compute_target_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_target_instance")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// The Compute instance VM handling traffic for this target
		// instance.
		// Accepts the instance self-link, relative path
		// (e.g. 'projects/project/zones/zone/instances/instance') or
		// name. If
		// name is given, the zone will default to the given zone or
		// the provider-default zone and the project will default to the
		// provider-level project.
		instance!: string

		// Name of the resource. Provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!: string
		id?:   string

		// NAT option controlling how IPs are NAT'ed to the instance.
		// Currently only NO_NAT (default value) is supported. Default
		// value: "NO_NAT" Possible values: ["NO_NAT"]
		nat_policy?: string
		timeouts?:   #timeouts
		project?:    string
		self_link?:  string

		// URL of the zone where the target instance resides.
		zone?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
