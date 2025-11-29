package res

#google_scc_folder_scc_big_query_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_scc_folder_scc_big_query_export")
	close({
		// This must be unique within the organization.
		big_query_export_id!: string

		// The time at which the BigQuery export was created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// The dataset to write findings' updates to.
		// Its format is
		// "projects/[projectId]/datasets/[bigquery_dataset_id]".
		// BigQuery Dataset unique ID must contain only letters (a-z,
		// A-Z), numbers (0-9), or underscores (_).
		dataset!: string

		// The description of the export (max of 1024 characters).
		description!: string

		// Expression that defines the filter to apply across
		// create/update
		// events of findings. The
		// expression is a list of zero or more restrictions combined via
		// logical operators AND and OR. Parentheses are supported, and OR
		// has higher precedence than AND.
		//
		// Restrictions have the form <field> <operator> <value> and may
		// have
		// a - character in front of them to indicate negation. The fields
		// map to those defined in the corresponding resource.
		//
		// The supported operators are:
		//
		// * = for all value types.
		// * >, <, >=, <= for integer values.
		// * :, meaning substring matching, for strings.
		//
		// The supported value types are:
		//
		// * string literals in quotes.
		// * integer literals without quotes.
		// * boolean literals true and false without quotes.
		//
		// See
		// [Filtering
		// notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
		// for information on how to write a filter.
		filter!: string

		// The folder where Cloud Security Command Center Big Query Export
		// Config lives in.
		folder!: string

		// Email address of the user who last edited the BigQuery export.
		most_recent_editor?: string

		// The resource name of this export, in the format
		// 'projects/{{project}}/bigQueryExports/{{big_query_export_id}}'.
		// This field is provided in responses, and is ignored when
		// provided in create requests.
		name?:     string
		timeouts?: #timeouts
		id?:       string

		// The service account that needs permission to create table and
		// upload data to the BigQuery dataset.
		principal?: string

		// The most recent time at which the BigQuery export was updated.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
