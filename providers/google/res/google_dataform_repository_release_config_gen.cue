package res

import "list"

google_dataform_repository_release_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataform_repository_release_config")
	close({
		code_compilation_config?: matchN(1, [#code_compilation_config, list.MaxItems(1) & [...#code_compilation_config]])
		timeouts?: #timeouts

		// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
		cron_schedule?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Disables automatic creation of compilation results.
		disabled?: bool

		// Git commit/tag/branch name at which the repository should be compiled. Must
		// exist in the remote repository.
		git_commitish!: string
		id?:            string

		// The release's name.
		name!: string

		// Records of the 10 most recent scheduled release attempts, ordered in in
		// descending order of releaseTime. Updated whenever automatic creation of a
		// compilation result is triggered by cronSchedule.
		recent_scheduled_release_records?: [...close({
			compilation_result?: string
			error_status?: [...close({
				code?:    number
				message?: string
			})]
			release_time?: string
		})]
		project?: string

		// A reference to the region
		region?: string

		// A reference to the Dataform repository
		repository?: string

		// Optional. Specifies the time zone to be used when interpreting cronSchedule.
		// Must be a time zone name from the time zone database
		// (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left
		// unspecified, the default is UTC.
		time_zone?: string
	})

	#code_compilation_config: close({
		// Optional. The default schema (BigQuery dataset ID) for assertions.
		assertion_schema?: string

		// Optional. The suffix that should be appended to all database (Google Cloud project ID) names.
		database_suffix?: string

		// Optional. The default database (Google Cloud project ID).
		default_database?: string

		// Optional. The default BigQuery location to use. Defaults to "US".
		// See the BigQuery docs for a full list of locations:
		// https://cloud.google.com/bigquery/docs/locations.
		default_location?: string

		// Optional. The default schema (BigQuery dataset ID).
		default_schema?: string

		// Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names.
		schema_suffix?: string

		// Optional. The prefix that should be prepended to all table names.
		table_prefix?: string

		// Optional. User-defined variables that are made available to project code during compilation.
		// An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		vars?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
