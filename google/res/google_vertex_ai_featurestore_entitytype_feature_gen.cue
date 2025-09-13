package res

#google_vertex_ai_featurestore_entitytype_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_featurestore_entitytype_feature")
	close({
		// The timestamp of when the entity type was created in RFC3339
		// UTC "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		create_time?: string

		// Description of the feature.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The name of the Featurestore to use, in the format
		// projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}.
		entitytype!: string

		// Used to perform consistent read-modify-write updates.
		etag?: string

		// A set of key/value label pairs to assign to the feature.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The name of the feature. The feature can be up to 64 characters
		// long and can consist only of ASCII Latin letters A-Z and a-z,
		// underscore(_), and ASCII digits 0-9 starting with a letter.
		// The value will be unique given an entity type.
		name?:     string
		timeouts?: #timeouts

		// The region of the feature
		region?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp when the entity type was most recently updated in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up
		// to nine fractional digits.
		update_time?: string

		// Type of Feature value. Immutable.
		// https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType
		value_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
