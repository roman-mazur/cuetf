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
		looker_golden_queries?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/looker_golden_queries", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/looker_golden_queries"]])
		options?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options"]])
		schema_relationships?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/schema_relationships", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/schema_relationships"]])
		user_functions?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/user_functions", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/user_functions"]])

		// Optional. The basic entry point for data owners creating domain
		// knowledge for the agent.
		system_instruction?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references": close({
		bq?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq"]])
		looker?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker"]])
		studio?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/studio", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/studio"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq": close({
		property_graph_references?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/property_graph_references", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/property_graph_references"]])
		table_references?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/property_graph_references": close({
		// Required. The dataset that the property graph belongs to.
		dataset_id!: string

		// Required. The project that the property graph belongs to.
		project_id!: string

		// Required. The property graph ID.
		property_graph_id!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references": close({
		schema?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema"]])

		// Required. The dataset that the table belongs to.
		dataset_id!: string

		// Required. The project that the table belongs to.
		project_id!: string

		// Required. The table ID.
		table_id!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema": close({
		fields?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/fields", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/fields"]])
		filters?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/filters", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/filters"]])

		// Optional. A textual description of the table's content and purpose.
		description?: string

		// Optional. Table display name.
		display_name?: string

		// Optional. A list of alternative names or synonyms that can be used to refer to the table.
		synonyms?: [...string]

		// Optional. A list of tags or keywords associated with the table, used for categorization.
		tags?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/fields": close({
		// Optional. Field category.
		category?: string

		// Optional. A brief description of the field.
		description?: string

		// Optional. The mode of the field (e.g., NULLABLE, REPEATED).
		mode?: string

		// Optional. The name of the field.
		name?: string

		// Optional. Recursive property for nested schema structures, encoded as a JSON
		// string representing a list of Field objects.
		subfields?: string

		// Optional. A list of alternative names or synonyms that can be used to refer to this field.
		synonyms?: [...string]

		// Optional. A list of tags or keywords associated with the field, used for categorization.
		tags?: [...string]

		// Optional. The type of the field.
		type?: string

		// Optional. Value format of the field.
		value_format?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/filters": close({
		// Optional. The field to filter on.
		field?: string

		// Optional. The type of filter present on a datasource, such as ALWAYS_FILTER.
		type?: string

		// Optional. The default value used for this filter if the filter is not overridden in a query.
		value?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker": close({
		explore_references!: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references", [_, ...] & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references": close({
		private_looker_instance_info?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/private_looker_instance_info", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/private_looker_instance_info"]])
		schema?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema"]])

		// Required. Name of the LookML Explore.
		explore!: string

		// Optional. The base URL of the Looker instance.
		looker_instance_uri?: string

		// Required. Name of the LookML model.
		lookml_model!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/private_looker_instance_info": close({
		// Optional. The Looker instance ID.
		looker_instance_id?: string

		// Optional. The service directory name of the Looker instance.
		service_directory_name?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema": close({
		fields?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/fields", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/fields"]])
		filters?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/filters", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/filters"]])

		// Optional. A textual description of the explore's content and purpose.
		description?: string

		// Optional. Explore display name.
		display_name?: string

		// Optional. A list of alternative names or synonyms that can be used to refer to the explore.
		synonyms?: [...string]

		// Optional. A list of tags or keywords associated with the explore, used for categorization.
		tags?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/fields": close({
		// Optional. Field category.
		category?: string

		// Optional. A brief description of the field.
		description?: string

		// Optional. The mode of the field (e.g., NULLABLE, REPEATED).
		mode?: string

		// Optional. The name of the field.
		name?: string

		// Optional. Recursive property for nested schema structures, encoded as a JSON
		// string representing a list of Field objects.
		subfields?: string

		// Optional. A list of alternative names or synonyms that can be used to refer to this field.
		synonyms?: [...string]

		// Optional. A list of tags or keywords associated with the field, used for categorization.
		tags?: [...string]

		// Optional. The type of the field.
		type?: string

		// Optional. Value format of the field.
		value_format?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/filters": close({
		// Optional. The field to filter on.
		field?: string

		// Optional. The type of filter present on a datasource, such as ALWAYS_FILTER.
		type?: string

		// Optional. The default value used for this filter if the filter is not overridden in a query.
		value?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/studio": close({
		studio_references?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/studio/$defs/studio_references", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/studio/$defs/studio_references"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/datasource_references/$defs/studio/$defs/studio_references": close({
		// Required. The ID of the datasource.
		datasource_id!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/example_queries": close({
		parameters?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/example_queries/$defs/parameters", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/example_queries/$defs/parameters"]])

		// Optional. A natural language question that a user might ask.
		natural_language_question?: string

		// Optional. The SQL query that should be generated to answer
		// the natural language question.
		sql_query?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/example_queries/$defs/parameters": close({
		// Required. The data type of the parameter, e.g. "STRING", "INT64", "DATE".
		data_type!: string

		// Optional. The description of the parameter that can be used by the LLM to
		// extract the parameter value from the user question.
		description?: string

		// Required. The name of the parameter reference in the SQL query.
		name!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/glossary_terms": close({
		// Required. The description or meaning of the term.
		description!: string

		// Required. User friendly display name of the glossary term.
		display_name!: string

		// Optional. A list of general purpose labels associated with this term.
		labels?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/looker_golden_queries": close({
		looker_query?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/looker_golden_queries/$defs/looker_query", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/looker_golden_queries/$defs/looker_query"]])

		// Optional. Natural language questions that a user might ask.
		natural_language_questions?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/looker_golden_queries/$defs/looker_query": close({
		filters?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/looker_golden_queries/$defs/looker_query/$defs/filters", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/looker_golden_queries/$defs/looker_query/$defs/filters"]])

		// Optional. The short alphanumeric identifier for the query, used for share links and Explore URLs.
		client_id?: string

		// Required. The LookML explore used to generate the query.
		explore!: string

		// Optional. The fields to retrieve from the explore.
		fields?: [...string]

		// Optional. Limit in the query.
		limit?: string

		// Required. The LookML model used to generate the query.
		model!: string

		// Optional. The primary identifier for the query resource in Looker.
		query_id?: string

		// Optional. The sorts to apply to the explore.
		sorts?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/looker_golden_queries/$defs/looker_query/$defs/filters": close({
		// Required. The field to filter on.
		field!: string

		// Optional. The value for the field to filter on.
		value?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/options": close({
		analysis?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/analysis", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/analysis"]])
		datasource?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/datasource", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/options/$defs/datasource"]])

		// Optional. The model to use for the agent loop.
		model?: string
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

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/user_functions": close({
		bq_routines?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/user_functions/$defs/bq_routines", [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/user_functions/$defs/bq_routines"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/user_functions/$defs/bq_routines": close({
		routine_reference?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/user_functions/$defs/bq_routines/$defs/routine_reference", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/published_context/$defs/user_functions/$defs/bq_routines/$defs/routine_reference"]])

		// Optional. User override or addition to description, to tell the agent when to use the UDF.
		description?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/published_context/$defs/user_functions/$defs/bq_routines/$defs/routine_reference": close({
		// Optional. The dataset ID of the routine.
		dataset_id?: string

		// Optional. The project ID of the routine.
		project_id?: string

		// Optional. The routine ID of the routine.
		routine_id?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context": close({
		datasource_references!: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references"]])
		example_queries?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/example_queries", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/example_queries"]])
		glossary_terms?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/glossary_terms", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/glossary_terms"]])
		looker_golden_queries?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/looker_golden_queries", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/looker_golden_queries"]])
		options?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options"]])
		schema_relationships?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/schema_relationships", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/schema_relationships"]])
		user_functions?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/user_functions", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/user_functions"]])

		// Optional. The basic entry point for data owners creating domain
		// knowledge for the agent.
		system_instruction?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references": close({
		bq?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq"]])
		looker?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker"]])
		studio?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/studio", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/studio"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq": close({
		property_graph_references?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/property_graph_references", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/property_graph_references"]])
		table_references?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/property_graph_references": close({
		// Required. The dataset that the property graph belongs to.
		dataset_id!: string

		// Required. The project that the property graph belongs to.
		project_id!: string

		// Required. The property graph ID.
		property_graph_id!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references": close({
		schema?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema"]])

		// Required. The dataset that the table belongs to.
		dataset_id!: string

		// Required. The project that the table belongs to.
		project_id!: string

		// Required. The table ID.
		table_id!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema": close({
		fields?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/fields", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/fields"]])
		filters?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/filters", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/filters"]])

		// Optional. A textual description of the table's content and purpose.
		description?: string

		// Optional. Table display name.
		display_name?: string

		// Optional. A list of alternative names or synonyms that can be used to refer to the table.
		synonyms?: [...string]

		// Optional. A list of tags or keywords associated with the table, used for categorization.
		tags?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/fields": close({
		// Optional. Field category.
		category?: string

		// Optional. A brief description of the field.
		description?: string

		// Optional. The mode of the field (e.g., NULLABLE, REPEATED).
		mode?: string

		// Optional. The name of the field.
		name?: string

		// Optional. Recursive property for nested schema structures, encoded as a JSON
		// string representing a list of Field objects.
		subfields?: string

		// Optional. A list of alternative names or synonyms that can be used to refer to this field.
		synonyms?: [...string]

		// Optional. A list of tags or keywords associated with the field, used for categorization.
		tags?: [...string]

		// Optional. The type of the field.
		type?: string

		// Optional. Value format of the field.
		value_format?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/bq/$defs/table_references/$defs/schema/$defs/filters": close({
		// Optional. The field to filter on.
		field?: string

		// Optional. The type of filter present on a datasource, such as ALWAYS_FILTER.
		type?: string

		// Optional. The default value used for this filter if the filter is not overridden in a query.
		value?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker": close({
		explore_references!: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references", [_, ...] & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references": close({
		private_looker_instance_info?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/private_looker_instance_info", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/private_looker_instance_info"]])
		schema?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema"]])

		// Required. Name of the LookML Explore.
		explore!: string

		// Optional. The base URL of the Looker instance.
		looker_instance_uri?: string

		// Required. Name of the LookML model.
		lookml_model!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/private_looker_instance_info": close({
		// Optional. The Looker instance ID.
		looker_instance_id?: string

		// Optional. The service directory name of the Looker instance.
		service_directory_name?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema": close({
		fields?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/fields", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/fields"]])
		filters?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/filters", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/filters"]])

		// Optional. A textual description of the explore's content and purpose.
		description?: string

		// Optional. Explore display name.
		display_name?: string

		// Optional. A list of alternative names or synonyms that can be used to refer to the explore.
		synonyms?: [...string]

		// Optional. A list of tags or keywords associated with the explore, used for categorization.
		tags?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/fields": close({
		// Optional. Field category.
		category?: string

		// Optional. A brief description of the field.
		description?: string

		// Optional. The mode of the field (e.g., NULLABLE, REPEATED).
		mode?: string

		// Optional. The name of the field.
		name?: string

		// Optional. Recursive property for nested schema structures, encoded as a JSON
		// string representing a list of Field objects.
		subfields?: string

		// Optional. A list of alternative names or synonyms that can be used to refer to this field.
		synonyms?: [...string]

		// Optional. A list of tags or keywords associated with the field, used for categorization.
		tags?: [...string]

		// Optional. The type of the field.
		type?: string

		// Optional. Value format of the field.
		value_format?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/looker/$defs/explore_references/$defs/schema/$defs/filters": close({
		// Optional. The field to filter on.
		field?: string

		// Optional. The type of filter present on a datasource, such as ALWAYS_FILTER.
		type?: string

		// Optional. The default value used for this filter if the filter is not overridden in a query.
		value?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/studio": close({
		studio_references?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/studio/$defs/studio_references", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/studio/$defs/studio_references"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/datasource_references/$defs/studio/$defs/studio_references": close({
		// Required. The ID of the datasource.
		datasource_id!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/example_queries": close({
		parameters?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/example_queries/$defs/parameters", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/example_queries/$defs/parameters"]])

		// Optional. A natural language question that a user might ask.
		natural_language_question?: string

		// Optional. The SQL query that should be generated to answer
		// the natural language question.
		sql_query?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/example_queries/$defs/parameters": close({
		// Required. The data type of the parameter, e.g. "STRING", "INT64", "DATE".
		data_type!: string

		// Optional. The description of the parameter that can be used by the LLM to
		// extract the parameter value from the user question.
		description?: string

		// Required. The name of the parameter reference in the SQL query.
		name!: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/glossary_terms": close({
		// Required. The description or meaning of the term.
		description!: string

		// Required. User friendly display name of the glossary term.
		display_name!: string

		// Optional. A list of general purpose labels associated with this term.
		labels?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/looker_golden_queries": close({
		looker_query?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/looker_golden_queries/$defs/looker_query", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/looker_golden_queries/$defs/looker_query"]])

		// Optional. Natural language questions that a user might ask.
		natural_language_questions?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/looker_golden_queries/$defs/looker_query": close({
		filters?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/looker_golden_queries/$defs/looker_query/$defs/filters", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/looker_golden_queries/$defs/looker_query/$defs/filters"]])

		// Optional. The short alphanumeric identifier for the query, used for share links and Explore URLs.
		client_id?: string

		// Required. The LookML explore used to generate the query.
		explore!: string

		// Optional. The fields to retrieve from the explore.
		fields?: [...string]

		// Optional. Limit in the query.
		limit?: string

		// Required. The LookML model used to generate the query.
		model!: string

		// Optional. The primary identifier for the query resource in Looker.
		query_id?: string

		// Optional. The sorts to apply to the explore.
		sorts?: [...string]
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/looker_golden_queries/$defs/looker_query/$defs/filters": close({
		// Required. The field to filter on.
		field!: string

		// Optional. The value for the field to filter on.
		value?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/options": close({
		analysis?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/analysis", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/analysis"]])
		datasource?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/datasource", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/options/$defs/datasource"]])

		// Optional. The model to use for the agent loop.
		model?: string
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

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/user_functions": close({
		bq_routines?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/user_functions/$defs/bq_routines", [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/user_functions/$defs/bq_routines"]])
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/user_functions/$defs/bq_routines": close({
		routine_reference?: matchN(1, [_#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/user_functions/$defs/bq_routines/$defs/routine_reference", list.MaxItems(1) & [..._#defs."/$defs/data_analytics_agent/$defs/staging_context/$defs/user_functions/$defs/bq_routines/$defs/routine_reference"]])

		// Optional. User override or addition to description, to tell the agent when to use the UDF.
		description?: string
	})

	_#defs: "/$defs/data_analytics_agent/$defs/staging_context/$defs/user_functions/$defs/bq_routines/$defs/routine_reference": close({
		// Optional. The dataset ID of the routine.
		dataset_id?: string

		// Optional. The project ID of the routine.
		project_id?: string

		// Optional. The routine ID of the routine.
		routine_id?: string
	})
}
