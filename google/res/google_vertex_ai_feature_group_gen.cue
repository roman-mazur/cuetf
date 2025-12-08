package res

import "list"

#google_vertex_ai_feature_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_feature_group")
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

		// Used to perform consistent read-modify-write updates.
		etag?: string
		id?:   string

		// The labels with user-defined metadata to organize your
		// FeatureGroup.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The resource name of the Feature Group.
		name?:    string
		project?: string

		// The region of feature group. eg us-central1
		region?: string
		big_query?: matchN(1, [#big_query, list.MaxItems(1) & [...#big_query]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the FeatureGroup was last updated in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up
		// to nine fractional digits.
		update_time?: string
	})

	#big_query: close({
		big_query_source!: matchN(1, [_#defs."/$defs/big_query/$defs/big_query_source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/big_query/$defs/big_query_source"]])

		// Columns to construct entityId / row keys. If not provided
		// defaults to entityId.
		entity_id_columns?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/big_query/$defs/big_query_source": close({
		// BigQuery URI to a table, up to 2000 characters long. For
		// example: 'bq://projectId.bqDatasetId.bqTableId.'
		input_uri!: string
	})
}
