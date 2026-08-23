package res

import "list"

google_agentic_applications_analyst_agent_persona: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_agentic_applications_analyst_agent_persona")
	close({
		artifact_examples?: matchN(1, [#artifact_examples, [...#artifact_examples]])
		artifacts_config?: matchN(1, [#artifacts_config, list.MaxItems(1) & [...#artifacts_config]])
		external_data_sources?: matchN(1, [#external_data_sources, [...#external_data_sources]])
		mcp_data_sources?: matchN(1, [#mcp_data_sources, [...#mcp_data_sources]])
		resources?: matchN(1, [#resources, [...#resources]])
		skills?: matchN(1, [#skills, [...#skills]])
		tables?: matchN(1, [#tables, [...#tables]])
		timeouts?: #timeouts

		// Id of the requesting object
		// If auto-generating Id server-side, remove this field and
		// analyst_agent_persona_id from the method_signature of Create RPC
		analyst_agent_persona_id!: string

		// Create time stamp.
		create_time?: string

		// The customer-specific context to be used by the agent.
		customer_context?: [...string]

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The description of the persona, shown to users.
		display_description?: string

		// The display name of the persona, shown to users.
		display_name!: string

		// The Gemini Enterprise Engine ID associated with this persona.
		// If set, any requests coming from this GE Engine will be routed to this
		// persona.
		// If not set, requests from GE will only be routed to this persona if its
		// name ends in "/default".
		gemini_enterprise_engine?: string
		id?:                       string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// The description of the persona review, used by the model.
		model_description?: string

		// Identifier. The resource name of the analyst agent persona.
		// Format:
		// projects/{project}/locations/{location}/analystAgentPersonas/{analyst_agent_persona}
		name?: string

		// Possible values:
		// ANALYST_ROLE_GENERIC_FINANCE_ANALYST
		// ANALYST_ROLE_CORPORATE_FINANCE_ANALYST
		// ANALYST_ROLE_CROSS_ASSET_DERIVATIVES_STRATEGIST
		// ANALYST_ROLE_KYC_ANALYST
		// ANALYST_ROLE_SALES_TRADER
		// ANALYST_ROLE_QUANT_ANALYST
		// ANALYST_ROLE_EXCHANGE_MANAGER
		// ANALYST_ROLE_PORTFOLIO_MANAGER
		// ANALYST_ROLE_WEALTH_MANAGER
		// ANALYST_ROLE_INSTITUTIONAL_PORTFOLIO_STRATEGIST
		// ANALYST_ROLE_MNA_EXECUTION_ANALYST
		// ANALYST_ROLE_ECM_ORIGINATION_STRATEGIST
		// ANALYST_ROLE_LEVERAGED_FINANCE_SPECIALIST
		// ANALYST_ROLE_INVESTMENT_RESEARCH_ANALYST
		// ANALYST_ROLE_CORPORATE_BANKING_ANALYST
		// ANALYST_ROLE_CREDIT_RISK_STRATEGIST
		// ANALYST_ROLE_BEHAVIORAL_FINANCIAL_STRATEGIST
		// ANALYST_ROLE_FUND_ACCOUNTANT
		// ANALYST_ROLE_MODEL_VALIDATION_AUDITOR
		// ANALYST_ROLE_PRIVATE_EQUITY_SPECIALIST
		// ANALYST_ROLE_TREASURY_ANALYST
		// ANALYST_ROLE_VENTURE_CAPITAL_ANALYST
		// ANALYST_ROLE_AML_INVESTIGATOR
		// ANALYST_ROLE_DUE_DILIGENCE_ANALYST
		// ANALYST_ROLE_INSURANCE_CLAIMS_ANALYST
		// ANALYST_ROLE_SPECIALTY_LIABILITY_UNDERWRITER
		// ANALYST_ROLE_CATASTROPHE_EXPOSURE_MODELER
		role?:    string
		project?: string

		// Update time stamp.
		update_time?: string
	})

	#artifact_examples: close({
		resource!: matchN(1, [_#defs."/$defs/artifact_examples/$defs/resource", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/artifact_examples/$defs/resource"]])
	})

	#artifacts_config: close({
		document_generation_options?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/document_generation_options", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/document_generation_options"]])
		slide_generation_options?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/slide_generation_options", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/slide_generation_options"]])
		visualization_options?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/visualization_options", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/visualization_options"]])
	})

	#external_data_sources: close({
		air_quality?: matchN(1, [_#defs."/$defs/external_data_sources/$defs/air_quality", list.MaxItems(1) & [..._#defs."/$defs/external_data_sources/$defs/air_quality"]])
		bureau_labor_statistics?: matchN(1, [_#defs."/$defs/external_data_sources/$defs/bureau_labor_statistics", list.MaxItems(1) & [..._#defs."/$defs/external_data_sources/$defs/bureau_labor_statistics"]])
		coindesk?: matchN(1, [_#defs."/$defs/external_data_sources/$defs/coindesk", list.MaxItems(1) & [..._#defs."/$defs/external_data_sources/$defs/coindesk"]])
		finnhub?: matchN(1, [_#defs."/$defs/external_data_sources/$defs/finnhub", list.MaxItems(1) & [..._#defs."/$defs/external_data_sources/$defs/finnhub"]])
		fred?: matchN(1, [_#defs."/$defs/external_data_sources/$defs/fred", list.MaxItems(1) & [..._#defs."/$defs/external_data_sources/$defs/fred"]])
		sec_edgar?: matchN(1, [_#defs."/$defs/external_data_sources/$defs/sec_edgar", list.MaxItems(1) & [..._#defs."/$defs/external_data_sources/$defs/sec_edgar"]])
		treasury_securities_auctions?: matchN(1, [_#defs."/$defs/external_data_sources/$defs/treasury_securities_auctions", list.MaxItems(1) & [..._#defs."/$defs/external_data_sources/$defs/treasury_securities_auctions"]])
		usda?: matchN(1, [_#defs."/$defs/external_data_sources/$defs/usda", list.MaxItems(1) & [..._#defs."/$defs/external_data_sources/$defs/usda"]])

		// Whether this external data source is enabled for the current analysis.
		enabled!: bool

		// The name of the external data source, used for custom org policy
		// evaluation. Output-only (populated automatically with the selection case
		// name).
		selection_name?: string
	})

	#mcp_data_sources: close({
		// Input only. The API key of the MCP server.
		api_key?: string

		// The API key parameter name.
		api_key_name?: string

		// The client ID for authentication.
		client_id?: string

		// Input only. The client secret for authentication.
		client_secret?: string

		// The description of the MCP agent.
		description!: string

		// The display name of the MCP server. Must be no longer than 63 characters
		// and can only contain letters, numbers, spaces, underscores, and hyphens.
		display_name!: string

		// Whether this external data source is enabled for the current analysis.
		enabled!: bool

		// The URL to use for retrieving the OAuth token.
		oauth_token_url?: string

		// The custom prompt for the MCP agent.
		prompt?: string

		// The URL of the MCP server.
		server_url!: string
	})

	#resources: close({
		bigquery_resource?: matchN(1, [_#defs."/$defs/resources/$defs/bigquery_resource", list.MaxItems(1) & [..._#defs."/$defs/resources/$defs/bigquery_resource"]])
		f1_resource?: matchN(1, [_#defs."/$defs/resources/$defs/f1_resource", list.MaxItems(1) & [..._#defs."/$defs/resources/$defs/f1_resource"]])
		google_cloud_storage_resource?: matchN(1, [_#defs."/$defs/resources/$defs/google_cloud_storage_resource", list.MaxItems(1) & [..._#defs."/$defs/resources/$defs/google_cloud_storage_resource"]])
		google_drive_resource?: matchN(1, [_#defs."/$defs/resources/$defs/google_drive_resource", list.MaxItems(1) & [..._#defs."/$defs/resources/$defs/google_drive_resource"]])
		raw_file_resource?: matchN(1, [_#defs."/$defs/resources/$defs/raw_file_resource", list.MaxItems(1) & [..._#defs."/$defs/resources/$defs/raw_file_resource"]])

		// A user-friendly name for this resource. This can be shown to the user
		// and used by the model.
		display_label?: string

		// A description of the resource. The model may use this, it will not be
		// shown to users.
		model_description?: string

		// If true, use RAG to retrieve relevant information from the resources.
		//
		// Must only be set for file-based resources.
		use_rag?: bool
	})

	#skills: close({
		references?: matchN(1, [_#defs."/$defs/skills/$defs/references", [..._#defs."/$defs/skills/$defs/references"]])

		// The markdown text content of the skill.
		content!: string

		// The description of the skill.
		description?: string

		// The identifier of the skill. Use a descriptive string that reflects the
		// skill's function.
		skill_id!: string
	})

	#tables: close({
		columns?: matchN(1, [_#defs."/$defs/tables/$defs/columns", [..._#defs."/$defs/tables/$defs/columns"]])

		// The description of the table.
		description?: string

		// The name of the table.
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/artifact_examples/$defs/resource": close({
		bigquery_resource?: matchN(1, [_#defs."/$defs/artifact_examples/$defs/resource/$defs/bigquery_resource", list.MaxItems(1) & [..._#defs."/$defs/artifact_examples/$defs/resource/$defs/bigquery_resource"]])
		f1_resource?: matchN(1, [_#defs."/$defs/artifact_examples/$defs/resource/$defs/f1_resource", list.MaxItems(1) & [..._#defs."/$defs/artifact_examples/$defs/resource/$defs/f1_resource"]])
		google_cloud_storage_resource?: matchN(1, [_#defs."/$defs/artifact_examples/$defs/resource/$defs/google_cloud_storage_resource", list.MaxItems(1) & [..._#defs."/$defs/artifact_examples/$defs/resource/$defs/google_cloud_storage_resource"]])
		google_drive_resource?: matchN(1, [_#defs."/$defs/artifact_examples/$defs/resource/$defs/google_drive_resource", list.MaxItems(1) & [..._#defs."/$defs/artifact_examples/$defs/resource/$defs/google_drive_resource"]])
		raw_file_resource?: matchN(1, [_#defs."/$defs/artifact_examples/$defs/resource/$defs/raw_file_resource", list.MaxItems(1) & [..._#defs."/$defs/artifact_examples/$defs/resource/$defs/raw_file_resource"]])

		// A user-friendly name for this resource. This can be shown to the user
		// and used by the model.
		display_label?: string

		// A description of the resource. The model may use this, it will not be
		// shown to users.
		model_description?: string

		// If true, use RAG to retrieve relevant information from the resources.
		//
		// Must only be set for file-based resources.
		use_rag?: bool
	})

	_#defs: "/$defs/artifact_examples/$defs/resource/$defs/bigquery_resource": close({
		// Points to a bigquery dataset to use.
		//
		// Expected Format:
		// projects/{project_id_or_number}/datasets/{dataset_id}
		bigquery_dataset?: string

		// Points to a bigquery table to use.
		//
		// Expected Format:
		// projects/{project_id_or_number}/datasets/{dataset_id}/tables/{table_id}
		bigquery_table?: string

		// A map of column names to column descriptions for the bigquery_table.
		column_descriptions?: [string]: string
	})

	_#defs: "/$defs/artifact_examples/$defs/resource/$defs/f1_resource": close({
		// ## - Points to an f1 table to use.
		//
		// - Expected Format:
		// - {group}.{table_name}
		f1_table?: string
	})

	_#defs: "/$defs/artifact_examples/$defs/resource/$defs/google_cloud_storage_resource": close({
		// If non-empty, only files with these extensions are included when
		// expanding the resource. If empty, all files are included.
		file_extension_restrictions?: [...string]

		// The Google Cloud Storage object or folder.
		//
		// Format: /
		// or: //
		//
		// Note that to refer to a folder, it _must_ end in a slash.
		google_cloud_storage_object!: string
	})

	_#defs: "/$defs/artifact_examples/$defs/resource/$defs/google_drive_resource": close({
		// If non-empty, only files with these extensions are included when
		// expanding the resource. If empty, all files are included.
		file_extension_restrictions?: [...string]

		// Points to a drive file to use. May refer to workspace files or folders
		// as well. If folder is specifically, all files in the folder
		// (recursively) are used.
		//
		// Expected Format:
		// files/{file_id}
		file_reference?: string
	})

	_#defs: "/$defs/artifact_examples/$defs/resource/$defs/raw_file_resource": close({
		// The raw file content.
		file_content!: string

		// The title of the file.
		file_title!: string

		// The mime type of the file.
		mime_type!: string
	})

	_#defs: "/$defs/artifacts_config/$defs/document_generation_options": close({
		document_examples?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples", [..._#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples"]])

		// Format for document export.
		// Possible values:
		// PDF
		// DOCX
		// GOOGLE_DOCS
		export_format?: string
	})

	_#defs: "/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples": close({
		resource!: matchN(1, [_#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource"]])
	})

	_#defs: "/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource": close({
		bigquery_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/bigquery_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/bigquery_resource"]])
		f1_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/f1_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/f1_resource"]])
		google_cloud_storage_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/google_cloud_storage_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/google_cloud_storage_resource"]])
		google_drive_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/google_drive_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/google_drive_resource"]])
		raw_file_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/raw_file_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/raw_file_resource"]])

		// A user-friendly name for this resource. This can be shown to the user
		// and used by the model.
		display_label?: string

		// A description of the resource. The model may use this, it will not be
		// shown to users.
		model_description?: string

		// If true, use RAG to retrieve relevant information from the resources.
		//
		// Must only be set for file-based resources.
		use_rag?: bool
	})

	_#defs: "/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/bigquery_resource": close({
		// Points to a bigquery dataset to use.
		//
		// Expected Format:
		// projects/{project_id_or_number}/datasets/{dataset_id}
		bigquery_dataset?: string

		// Points to a bigquery table to use.
		//
		// Expected Format:
		// projects/{project_id_or_number}/datasets/{dataset_id}/tables/{table_id}
		bigquery_table?: string

		// A map of column names to column descriptions for the bigquery_table.
		column_descriptions?: [string]: string
	})

	_#defs: "/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/f1_resource": close({
		// ## - Points to an f1 table to use.
		//
		// - Expected Format:
		// - {group}.{table_name}
		f1_table?: string
	})

	_#defs: "/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/google_cloud_storage_resource": close({
		// If non-empty, only files with these extensions are included when
		// expanding the resource. If empty, all files are included.
		file_extension_restrictions?: [...string]

		// The Google Cloud Storage object or folder.
		//
		// Format: /
		// or: //
		//
		// Note that to refer to a folder, it _must_ end in a slash.
		google_cloud_storage_object!: string
	})

	_#defs: "/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/google_drive_resource": close({
		// If non-empty, only files with these extensions are included when
		// expanding the resource. If empty, all files are included.
		file_extension_restrictions?: [...string]

		// Points to a drive file to use. May refer to workspace files or folders
		// as well. If folder is specifically, all files in the folder
		// (recursively) are used.
		//
		// Expected Format:
		// files/{file_id}
		file_reference?: string
	})

	_#defs: "/$defs/artifacts_config/$defs/document_generation_options/$defs/document_examples/$defs/resource/$defs/raw_file_resource": close({
		// The raw file content.
		file_content!: string

		// The title of the file.
		file_title!: string

		// The mime type of the file.
		mime_type!: string
	})

	_#defs: "/$defs/artifacts_config/$defs/slide_generation_options": close({
		slide_examples?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples", [..._#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples"]])

		// Format for slide export.
		// Possible values:
		// PDF
		// PNG
		// PPTX
		// GOOGLE_SLIDES
		export_format?: string
	})

	_#defs: "/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples": close({
		resource!: matchN(1, [_#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource"]])
	})

	_#defs: "/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource": close({
		bigquery_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/bigquery_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/bigquery_resource"]])
		f1_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/f1_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/f1_resource"]])
		google_cloud_storage_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/google_cloud_storage_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/google_cloud_storage_resource"]])
		google_drive_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/google_drive_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/google_drive_resource"]])
		raw_file_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/raw_file_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/raw_file_resource"]])

		// A user-friendly name for this resource. This can be shown to the user
		// and used by the model.
		display_label?: string

		// A description of the resource. The model may use this, it will not be
		// shown to users.
		model_description?: string

		// If true, use RAG to retrieve relevant information from the resources.
		//
		// Must only be set for file-based resources.
		use_rag?: bool
	})

	_#defs: "/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/bigquery_resource": close({
		// Points to a bigquery dataset to use.
		//
		// Expected Format:
		// projects/{project_id_or_number}/datasets/{dataset_id}
		bigquery_dataset?: string

		// Points to a bigquery table to use.
		//
		// Expected Format:
		// projects/{project_id_or_number}/datasets/{dataset_id}/tables/{table_id}
		bigquery_table?: string

		// A map of column names to column descriptions for the bigquery_table.
		column_descriptions?: [string]: string
	})

	_#defs: "/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/f1_resource": close({
		// ## - Points to an f1 table to use.
		//
		// - Expected Format:
		// - {group}.{table_name}
		f1_table?: string
	})

	_#defs: "/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/google_cloud_storage_resource": close({
		// If non-empty, only files with these extensions are included when
		// expanding the resource. If empty, all files are included.
		file_extension_restrictions?: [...string]

		// The Google Cloud Storage object or folder.
		//
		// Format: /
		// or: //
		//
		// Note that to refer to a folder, it _must_ end in a slash.
		google_cloud_storage_object!: string
	})

	_#defs: "/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/google_drive_resource": close({
		// If non-empty, only files with these extensions are included when
		// expanding the resource. If empty, all files are included.
		file_extension_restrictions?: [...string]

		// Points to a drive file to use. May refer to workspace files or folders
		// as well. If folder is specifically, all files in the folder
		// (recursively) are used.
		//
		// Expected Format:
		// files/{file_id}
		file_reference?: string
	})

	_#defs: "/$defs/artifacts_config/$defs/slide_generation_options/$defs/slide_examples/$defs/resource/$defs/raw_file_resource": close({
		// The raw file content.
		file_content!: string

		// The title of the file.
		file_title!: string

		// The mime type of the file.
		mime_type!: string
	})

	_#defs: "/$defs/artifacts_config/$defs/visualization_options": close({
		visualization_examples?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples", [..._#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples"]])
	})

	_#defs: "/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples": close({
		resource!: matchN(1, [_#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource"]])

		// The type of the visualization (e.g. "Bar Chart", "Line Chart").
		visualization_type!: string
	})

	_#defs: "/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource": close({
		bigquery_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/bigquery_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/bigquery_resource"]])
		f1_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/f1_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/f1_resource"]])
		google_cloud_storage_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/google_cloud_storage_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/google_cloud_storage_resource"]])
		google_drive_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/google_drive_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/google_drive_resource"]])
		raw_file_resource?: matchN(1, [_#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/raw_file_resource", list.MaxItems(1) & [..._#defs."/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/raw_file_resource"]])

		// A user-friendly name for this resource. This can be shown to the user
		// and used by the model.
		display_label?: string

		// A description of the resource. The model may use this, it will not be
		// shown to users.
		model_description?: string

		// If true, use RAG to retrieve relevant information from the resources.
		//
		// Must only be set for file-based resources.
		use_rag?: bool
	})

	_#defs: "/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/bigquery_resource": close({
		// Points to a bigquery dataset to use.
		//
		// Expected Format:
		// projects/{project_id_or_number}/datasets/{dataset_id}
		bigquery_dataset?: string

		// Points to a bigquery table to use.
		//
		// Expected Format:
		// projects/{project_id_or_number}/datasets/{dataset_id}/tables/{table_id}
		bigquery_table?: string

		// A map of column names to column descriptions for the bigquery_table.
		column_descriptions?: [string]: string
	})

	_#defs: "/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/f1_resource": close({
		// ## - Points to an f1 table to use.
		//
		// - Expected Format:
		// - {group}.{table_name}
		f1_table?: string
	})

	_#defs: "/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/google_cloud_storage_resource": close({
		// If non-empty, only files with these extensions are included when
		// expanding the resource. If empty, all files are included.
		file_extension_restrictions?: [...string]

		// The Google Cloud Storage object or folder.
		//
		// Format: /
		// or: //
		//
		// Note that to refer to a folder, it _must_ end in a slash.
		google_cloud_storage_object!: string
	})

	_#defs: "/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/google_drive_resource": close({
		// If non-empty, only files with these extensions are included when
		// expanding the resource. If empty, all files are included.
		file_extension_restrictions?: [...string]

		// Points to a drive file to use. May refer to workspace files or folders
		// as well. If folder is specifically, all files in the folder
		// (recursively) are used.
		//
		// Expected Format:
		// files/{file_id}
		file_reference?: string
	})

	_#defs: "/$defs/artifacts_config/$defs/visualization_options/$defs/visualization_examples/$defs/resource/$defs/raw_file_resource": close({
		// The raw file content.
		file_content!: string

		// The title of the file.
		file_title!: string

		// The mime type of the file.
		mime_type!: string
	})

	_#defs: "/$defs/external_data_sources/$defs/air_quality": close({})

	_#defs: "/$defs/external_data_sources/$defs/bureau_labor_statistics": close({})

	_#defs: "/$defs/external_data_sources/$defs/coindesk": close({})

	_#defs: "/$defs/external_data_sources/$defs/finnhub": close({})

	_#defs: "/$defs/external_data_sources/$defs/fred": close({})

	_#defs: "/$defs/external_data_sources/$defs/sec_edgar": close({})

	_#defs: "/$defs/external_data_sources/$defs/treasury_securities_auctions": close({})

	_#defs: "/$defs/external_data_sources/$defs/usda": close({})

	_#defs: "/$defs/resources/$defs/bigquery_resource": close({
		// Points to a bigquery dataset to use.
		//
		// Expected Format:
		// projects/{project_id_or_number}/datasets/{dataset_id}
		bigquery_dataset?: string

		// Points to a bigquery table to use.
		//
		// Expected Format:
		// projects/{project_id_or_number}/datasets/{dataset_id}/tables/{table_id}
		bigquery_table?: string

		// A map of column names to column descriptions for the bigquery_table.
		column_descriptions?: [string]: string
	})

	_#defs: "/$defs/resources/$defs/f1_resource": close({
		// ## - Points to an f1 table to use.
		//
		// - Expected Format:
		// - {group}.{table_name}
		f1_table?: string
	})

	_#defs: "/$defs/resources/$defs/google_cloud_storage_resource": close({
		// If non-empty, only files with these extensions are included when
		// expanding the resource. If empty, all files are included.
		file_extension_restrictions?: [...string]

		// The Google Cloud Storage object or folder.
		//
		// Format: /
		// or: //
		//
		// Note that to refer to a folder, it _must_ end in a slash.
		google_cloud_storage_object!: string
	})

	_#defs: "/$defs/resources/$defs/google_drive_resource": close({
		// If non-empty, only files with these extensions are included when
		// expanding the resource. If empty, all files are included.
		file_extension_restrictions?: [...string]

		// Points to a drive file to use. May refer to workspace files or folders
		// as well. If folder is specifically, all files in the folder
		// (recursively) are used.
		//
		// Expected Format:
		// files/{file_id}
		file_reference?: string
	})

	_#defs: "/$defs/resources/$defs/raw_file_resource": close({
		// The raw file content.
		file_content!: string

		// The title of the file.
		file_title!: string

		// The mime type of the file.
		mime_type!: string
	})

	_#defs: "/$defs/skills/$defs/references": close({
		// The content of the reference.
		content!: string

		// The identifier of the reference within the skill. Use a descriptive
		// string that reflects the reference's function.
		reference_id!: string
	})

	_#defs: "/$defs/tables/$defs/columns": close({
		// The data type of the column. This should be a GoogleSQL data type.
		// Parameterized types such as PROTO, ENUM, ARRAY, STRUCT<...>, and
		// RANGE are not supported.
		data_type!: string

		// The description of the column.
		description?: string

		// The name of the column.
		name!: string
	})
}
