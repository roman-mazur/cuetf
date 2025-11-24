package res

#google_vertex_ai_feature_group_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_feature_group_feature")
	close({
		// The timestamp of when the FeatureGroup was created in RFC3339
		// UTC "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		create_time?: string

		// The description of the FeatureGroup.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The name of the Feature Group.
		feature_group!: string

		// The labels with user-defined metadata to organize your
		// FeatureGroup.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The resource name of the Feature Group Feature.
		name!:    string
		project?: string

		// The region for the resource. It should be the same as the
		// feature group's region.
		region!:   string
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the FeatureGroup was last updated in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up
		// to nine fractional digits.
		update_time?: string

		// The name of the BigQuery Table/View column hosting data for
		// this version. If no value is provided, will use featureId.
		version_column_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
