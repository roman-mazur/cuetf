package res

import "list"

google_gemini_data_analytics_data_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_gemini_data_analytics_data_agent")
	close({
		data_analytics_agent?: matchN(1, [#data_analytics_agent, list.MaxItems(1) & [...#data_analytics_agent]])
		timeouts?: #timeouts

		// Output only. The time when the data agent was created.
		create_time?: string

		// Required. The ID to use for the DataAgent, which becomes the final component
		// of the resource name. The ID must start with a lowercase letter and may
		// contain lowercase letters, digits, underscores, and hyphens, up to 63
		// characters in total.
		data_agent_id!: string

		// Output only. The time the data agent was soft deleted.
		delete_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Optional. Description of the agent. Must be between 1 and 1024 characters.
		description?: string

		// Optional. User friendly display name. Must be between 1 and 256 characters.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// Optional. Customer managed encryption key (CMEK) to use for encrypting the
		// DataAgent resources. Cloud KMS CryptoKeys must reside in the same location
		// as the DataAgent. The expected format is
		// projects/*/locations/*/keyRings/*/cryptoKeys/*.
		kms_key?: string

		// Optional. Labels to help users filter related agents.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The location of the DataAgent.
		location!: string

		// Output only. Identifier. The unique resource name of a DataAgent.
		// Format: projects/{project}/locations/{location}/dataAgents/{dataAgentId}
		name?: string

		// Output only. Timestamp in UTC of when this data agent is considered expired.
		purge_time?: string
		project?:    string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. The time when the data agent was last updated.
		update_time?: string
	})

	#data_analytics_agent: close({
		published_context?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context"]])
		staging_context?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context"]])

		// Output only. The last published context for the agent.
		last_published_context?: [...close({
			datasource_references?: [...close({
				bq?: [...close({
					table_references?: [...close({
						dataset_id?: string
						project_id?: string
						table_id?:   string
					})]
				})]
			})]
			system_instruction?: string
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context": close({
		datasource_references!: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references"]])
		example_queries?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/example_queries", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/example_queries"]])
		glossary_terms?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/glossary_terms", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/glossary_terms"]])
		options?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options"]])
		schema_relationships?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/schema_relationships", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/schema_relationships"]])

		// Optional. The basic entry point for data owners creating domain
		// knowledge for the agent.
		system_instruction?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references": close({
		bq!: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq": close({
		table_references?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references": close({
		// Required. The dataset that the table belongs to.
		dataset_id!: string

		// Required. The project that the table belongs to.
		project_id!: string

		// Required. The table ID.
		table_id!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/example_queries": close({
		// Optional. A natural language question that a user might ask.
		natural_language_question?: string

		// Optional. The SQL query that should be generated to answer
		// the natural language question.
		sql_query?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/glossary_terms": close({
		// Required. The description or meaning of the term.
		description!: string

		// Required. User friendly display name of the glossary term.
		display_name!: string

		// Optional. A list of general purpose labels associated with this term.
		labels?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/options": close({
		analysis?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/analysis", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/analysis"]])
		datasource?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/datasource", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/datasource"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/analysis": close({
		python?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/analysis/$defs/python", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/analysis/$defs/python"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/analysis/$defs/python": close({
		// Optional. Whether to enable Python analysis. Defaults to false.
		enabled?: bool
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/datasource": close({
		// Optional. Limits the bytes billed for each BigQuery query job.
		big_query_max_billed_bytes?: number
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/schema_relationships": close({
		left_schema_paths!: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/schema_relationships/$defs/left_schema_paths", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/schema_relationships/$defs/left_schema_paths"]])
		right_schema_paths!: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/schema_relationships/$defs/right_schema_paths", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/schema_relationships/$defs/right_schema_paths"]])

		// Optional. A confidence score for the suggested relationship.
		confidence_score?: number

		// Optional. Sources which generated the schema relation edge.
		// Possible values: BIGQUERY_JOB_HISTORY, LLM_SUGGESTED, BIGQUERY_TABLE_CONSTRAINTS.
		sources?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/schema_relationships/$defs/left_schema_paths": close({
		// Required. The ordered list of paths within the table schema.
		paths!: [...string]

		// Required. The service-qualified full resource name of the table.
		table_fqn!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/schema_relationships/$defs/right_schema_paths": close({
		// Required. The ordered list of paths within the table schema.
		paths!: [...string]

		// Required. The service-qualified full resource name of the table.
		table_fqn!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context": close({
		datasource_references!: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references"]])
		example_queries?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/example_queries", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/example_queries"]])
		glossary_terms?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/glossary_terms", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/glossary_terms"]])
		options?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options"]])
		schema_relationships?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/schema_relationships", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/schema_relationships"]])

		// Optional. The basic entry point for data owners creating domain
		// knowledge for the agent.
		system_instruction?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references": close({
		bq!: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq": close({
		table_references?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references": close({
		// Required. The dataset that the table belongs to.
		dataset_id!: string

		// Required. The project that the table belongs to.
		project_id!: string

		// Required. The table ID.
		table_id!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/example_queries": close({
		// Optional. A natural language question that a user might ask.
		natural_language_question?: string

		// Optional. The SQL query that should be generated to answer
		// the natural language question.
		sql_query?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/glossary_terms": close({
		// Required. The description or meaning of the term.
		description!: string

		// Required. User friendly display name of the glossary term.
		display_name!: string

		// Optional. A list of general purpose labels associated with this term.
		labels?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/options": close({
		analysis?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/analysis", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/analysis"]])
		datasource?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/datasource", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/datasource"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/analysis": close({
		python?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/analysis/$defs/python", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/analysis/$defs/python"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/analysis/$defs/python": close({
		// Optional. Whether to enable Python analysis. Defaults to false.
		enabled?: bool
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/datasource": close({
		// Optional. Limits the bytes billed for each BigQuery query job.
		big_query_max_billed_bytes?: number
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/schema_relationships": close({
		left_schema_paths!: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/schema_relationships/$defs/left_schema_paths", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/schema_relationships/$defs/left_schema_paths"]])
		right_schema_paths!: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/schema_relationships/$defs/right_schema_paths", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/schema_relationships/$defs/right_schema_paths"]])

		// Optional. A confidence score for the suggested relationship.
		confidence_score?: number

		// Optional. Sources which generated the schema relation edge.
		// Possible values: BIGQUERY_JOB_HISTORY, LLM_SUGGESTED, BIGQUERY_TABLE_CONSTRAINTS.
		sources?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/schema_relationships/$defs/left_schema_paths": close({
		// Required. The ordered list of paths within the table schema.
		paths!: [...string]

		// Required. The service-qualified full resource name of the table.
		table_fqn!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/schema_relationships/$defs/right_schema_paths": close({
		// Required. The ordered list of paths within the table schema.
		paths!: [...string]

		// Required. The service-qualified full resource name of the table.
		table_fqn!: string
	})
}
