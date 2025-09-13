package res

#google_logging_log_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_logging_log_view")
	close({
		// The bucket of the resource
		bucket!: string

		// Output only. The creation timestamp of the view.
		create_time?: string

		// Describes this view.
		description?: string

		// Filter that restricts which log entries in a bucket are visible
		// in this view. Filters are restricted to be a logical AND of
		// ==/!= of any of the following: - originating
		// project/folder/organization/billing account. - resource type -
		// log id For example: SOURCE("projects/myproject") AND
		// resource.type = "gce_instance" AND LOG_ID("stdout")
		filter?: string

		// The location of the resource. The supported locations are:
		// global, us-central1, us-east1, us-west1, asia-east1,
		// europe-west1.
		location?: string

		// The resource name of the view. For example:
		// \'projects/my-project/locations/global/buckets/my-bucket/views/my-view\'
		name!:     string
		id?:       string
		timeouts?: #timeouts

		// The parent of the resource.
		parent?: string

		// Output only. The last update timestamp of the view.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
