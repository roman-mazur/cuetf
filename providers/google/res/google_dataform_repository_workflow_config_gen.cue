package res

import "list"

google_dataform_repository_workflow_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataform_repository_workflow_config")
	close({
		invocation_config?: matchN(1, [#invocation_config, list.MaxItems(1) & [...#invocation_config]])
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

		// Disables automatic creation of workflow invocations.
		disabled?: bool
		id?:       string

		// The workflow's name.
		name!: string

		// Records of the 10 most recent scheduled execution attempts, ordered in in
		// descending order of executionTime. Updated whenever automatic creation of a
		// workflow invocation is triggered by cronSchedule.
		recent_scheduled_execution_records?: [...close({
			error_status?: [...close({
				code?:    number
				message?: string
			})]
			execution_time?:      string
			workflow_invocation?: string
		})]
		project?: string

		// A reference to the region
		region?: string

		// The name of the release config whose releaseCompilationResult should be
		// executed. Must be in the format
		// projects/*/locations/*/repositories/*/releaseConfigs/*.
		release_config!: string

		// A reference to the Dataform repository
		repository?: string

		// Optional. Specifies the time zone to be used when interpreting cronSchedule.
		// Must be a time zone name from the time zone database
		// (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left
		// unspecified, the default is UTC.
		time_zone?: string
	})

	#invocation_config: close({
		included_targets?: matchN(1, [_#defs."/$defs/invocation_config/$defs/included_targets", [..._#defs."/$defs/invocation_config/$defs/included_targets"]])

		// Optional. When set to true, any incremental tables will be fully refreshed.
		fully_refresh_incremental_tables_enabled?: bool

		// Optional. The set of tags to include.
		included_tags?: [...string]

		// Optional. The service account to run workflow invocations under.
		service_account?: string

		// Optional. When set to true, transitive dependencies of included actions will be executed.
		transitive_dependencies_included?: bool

		// Optional. When set to true, transitive dependents of included actions will be executed.
		transitive_dependents_included?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/invocation_config/$defs/included_targets": close({
		// The action's database (Google Cloud project ID).
		database?: string

		// The action's name, within database and schema.
		name?: string

		// The action's schema (BigQuery dataset ID), within database.
		schema?: string
	})
}
