package res

#google_logging_linked_dataset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_logging_linked_dataset")
	close({
		// The bucket to which the linked dataset is attached.
		bucket!: string

		// Output only. The creation timestamp of the link. A timestamp in
		// RFC3339 UTC "Zulu" format,
		// with nanosecond resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z"
		// and "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Describes this link. The maximum length of the description is
		// 8000 characters.
		description?: string

		// Output only. The linked dataset lifecycle state.
		lifecycle_state?: string
		id?:              string

		// The id of the linked dataset.
		link_id!: string

		// The location of the linked dataset.
		location?: string
		bigquery_dataset?: matchN(1, [#bigquery_dataset, [...#bigquery_dataset]])
		timeouts?: #timeouts

		// The resource name of the linked dataset. The name can have up
		// to 100 characters. A valid link id
		// (at the end of the link name) must only have alphanumeric
		// characters and underscores within it.
		name?: string

		// The parent of the linked dataset.
		parent?: string
	})

	#bigquery_dataset: close({
		// Output only. The full resource name of the BigQuery dataset.
		// The DATASET_ID will match the ID
		// of the link, so the link must match the naming restrictions of
		// BigQuery datasets
		// (alphanumeric characters and underscores only). The dataset
		// will have a resource path of
		// "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET_ID]"
		dataset_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
