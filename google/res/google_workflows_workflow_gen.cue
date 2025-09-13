package res

#google_workflows_workflow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_workflows_workflow")
	close({
		// Describes the level of platform logging to apply to calls and
		// call responses during
		// executions of this workflow. If both the workflow and the
		// execution specify a logging level,
		// the execution level takes precedence. Possible values:
		// ["CALL_LOG_LEVEL_UNSPECIFIED", "LOG_ALL_CALLS",
		// "LOG_ERRORS_ONLY", "LOG_NONE"]
		call_log_level?: string

		// The timestamp of when the workflow was created in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		create_time?: string

		// The KMS key used to encrypt workflow and execution data.
		//
		// Format:
		// projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
		crypto_key_name?: string

		// Whether Terraform will be prevented from destroying the
		// workflow. Defaults to true.
		// When a'terraform destroy' or 'terraform apply' would delete the
		// workflow,
		// the command will fail if this field is not set to false in
		// Terraform state.
		// When the field is set to true or unset in Terraform state, a
		// 'terraform apply'
		// or 'terraform destroy' that would delete the workflow will
		// fail.
		// When the field is set to false, deleting the workflow is
		// allowed.
		deletion_protection?: bool

		// Description of the workflow provided by the user. Must be at
		// most 1000 unicode characters long.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Describes the level of execution history to be stored for this
		// workflow. This configuration
		// determines how much information about workflow executions is
		// preserved. If not specified,
		// defaults to EXECUTION_HISTORY_LEVEL_UNSPECIFIED. Possible
		// values: ["EXECUTION_HISTORY_LEVEL_UNSPECIFIED",
		// "EXECUTION_HISTORY_BASIC", "EXECUTION_HISTORY_DETAILED"]
		execution_history_level?: string
		id?:                      string

		// A set of key/value label pairs to assign to this Workflow.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Name of the Workflow.
		name?: string

		// The region of the workflow.
		region?:      string
		name_prefix?: string

		// The revision of the workflow. A new one is generated if the
		// service account or source contents is changed.
		revision_id?: string
		project?:     string

		// Name of the service account associated with the latest workflow
		// version. This service
		// account represents the identity of the workflow and determines
		// what permissions the workflow has.
		// Format: projects/{project}/serviceAccounts/{account} or
		// {account}.
		// Using - as a wildcard for the {project} or not providing one at
		// all will infer the project from the account.
		// The {account} value can be the email address or the unique_id
		// of the service account.
		// If not provided, workflow will use the project's default
		// service account.
		// Modifying this field for an existing workflow results in a new
		// workflow revision.
		service_account?: string
		timeouts?:        #timeouts

		// Workflow code to be executed. The size limit is 128KB.
		source_contents?: string

		// State of the workflow deployment.
		state?: string

		// A map of resource manager tags. Resource manager tag keys and
		// values have the same definition
		// as resource manager tags. Keys must be in the format
		// tagKeys/{tag_key_id}, and values are in
		// the format tagValues/456. The field is ignored (both PUT &
		// PATCH) when empty.
		tags?: [string]: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the workflow was last updated in RFC3339
		// UTC "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		update_time?: string

		// User-defined environment variables associated with this
		// workflow revision. This map has a maximum length of 20. Each
		// string can take up to 4KiB. Keys cannot be empty strings and
		// cannot start with "GOOGLE" or "WORKFLOWS".
		user_env_vars?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
