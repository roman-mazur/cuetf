package res

import "list"

#google_vertex_ai_featurestore: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_featurestore")
	close({
		// The timestamp of when the featurestore was created in RFC3339
		// UTC "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Used to perform consistent read-modify-write updates.
		etag?: string

		// If set to true, any EntityTypes and Features for this
		// Featurestore will also be deleted
		force_destroy?: bool

		// A set of key/value label pairs to assign to this Featurestore.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The name of the Featurestore. This value may be up to 60
		// characters, and valid characters are [a-z0-9_]. The first
		// character cannot be a number.
		name?: string

		// The region of the dataset. eg us-central1
		region?: string
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		online_serving_config?: matchN(1, [#online_serving_config, list.MaxItems(1) & [...#online_serving_config]])
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the featurestore was last updated in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up
		// to nine fractional digits.
		update_time?: string
	})

	#encryption_spec: close({
		// The Cloud KMS resource identifier of the customer managed
		// encryption key used to protect a resource. Has the form:
		// projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key.
		// The key needs to be in the same region as where the compute
		// resource is created.
		kms_key_name!: string
	})

	#online_serving_config: close({
		scaling?: matchN(1, [_#defs."/$defs/online_serving_config/$defs/scaling", list.MaxItems(1) & [..._#defs."/$defs/online_serving_config/$defs/scaling"]])

		// The number of nodes for each cluster. The number of nodes will
		// not scale automatically but can be scaled manually by
		// providing different values when updating.
		fixed_node_count?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/online_serving_config/$defs/scaling": close({
		// The maximum number of nodes to scale up to. Must be greater
		// than minNodeCount, and less than or equal to 10 times of
		// 'minNodeCount'.
		max_node_count!: number

		// The minimum number of nodes to scale down to. Must be greater
		// than or equal to 1.
		min_node_count!: number
	})
}
