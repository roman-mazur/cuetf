package res

#google_spanner_instance_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_spanner_instance_config")
	close({
		// Base configuration name, e.g. nam3, based on which this
		// configuration is created.
		// Only set for user managed configurations.
		// baseConfig must refer to a configuration of type GOOGLE_MANAGED
		// in the same project as this configuration.
		base_config?: string

		// Output only. Whether this instance config is a Google or User
		// Managed Configuration.
		config_type?: string

		// The name of this instance configuration as it appears in UIs.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// A unique identifier for the instance configuration. Values are
		// of the
		// form projects/<project>/instanceConfigs/[a-z][-a-z0-9]*
		name?: string
		replicas!: matchN(1, [#replicas, [_, ...] & [...#replicas]])
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#replicas: close({
		// If true, this location is designated as the default leader
		// location where
		// leader replicas are placed.
		default_leader_location?: bool

		// The location of the serving resources, e.g. "us-central1".
		location?: string

		// Indicates the type of replica. See the [replica types
		// documentation](https://cloud.google.com/spanner/docs/replication#replica_types)
		// for more details. Possible values: ["READ_WRITE", "READ_ONLY",
		// "WITNESS"]
		type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
