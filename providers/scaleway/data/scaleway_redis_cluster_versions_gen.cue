package data

scaleway_redis_cluster_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_redis_cluster_versions")
	close({
		id?: string

		// Whether to include beta Redis™ engine versions.
		include_beta?: bool

		// Whether to include deprecated Redis™ engine versions.
		include_deprecated?: bool

		// Whether to include disabled Redis™ engine versions.
		include_disabled?: bool

		// Filter Redis™ engine versions that match a given name pattern.
		version?: string

		// List of available Redis™ cluster versions.
		versions?: [...close({
			end_of_life_at?: string
			logo_url?:       string
			released_at?:    string
			version?:        string
		})]

		// The zone you want to attach the resource to
		zone?: string
	})
}
