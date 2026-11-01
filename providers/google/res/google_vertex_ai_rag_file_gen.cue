package res

import "list"

google_vertex_ai_rag_file: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_rag_file")
	close({
		gcs_source?: matchN(1, [#gcs_source, list.MaxItems(1) & [...#gcs_source]])
		google_drive_source?: matchN(1, [#google_drive_source, list.MaxItems(1) & [...#google_drive_source]])
		rag_file_parsing_config?: matchN(1, [#rag_file_parsing_config, list.MaxItems(1) & [...#rag_file_parsing_config]])
		rag_file_transformation_config?: matchN(1, [#rag_file_transformation_config, list.MaxItems(1) & [...#rag_file_transformation_config]])
		timeouts?: #timeouts

		// Timestamp when this RagFile was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The description of the RagFile.
		description?: string

		// The display name of the RagFile, derived by the API from the source file.
		display_name?: string

		// State of the RagFile.
		file_status?: [...close({
			error_status?: string
			state?:        string
		})]
		id?: string

		// The maximum number of queries per minute that the import is allowed to make
		// to the embedding model specified on the RagCorpus.
		max_embedding_requests_per_min?: number

		// The generated ID of the RagFile.
		name?: string

		// The ID of the RagCorpus to import the file into, for example the 'name'
		// attribute of a 'google_vertex_ai_rag_corpus' resource.
		rag_corpus!: string
		project?:    string

		// The region of the RagCorpus. eg europe-west4
		region!: string

		// Timestamp when this RagFile was last updated.
		update_time?: string

		// The metadata for metadata search, in JSON format.
		user_metadata?: string
	})

	#gcs_source: close({
		// The Cloud Storage URI of the file to import, for example
		// 'gs://my-bucket/my-file.pdf'. Must reference a single file; directories
		// and wildcards are not supported because each resource manages one RagFile.
		uris!: [...string]
	})

	#google_drive_source: close({
		resource_ids!: matchN(1, [_#defs."/$defs/google_drive_source/$defs/resource_ids", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/google_drive_source/$defs/resource_ids"]])
	})

	#rag_file_parsing_config: close({
		layout_parser?: matchN(1, [_#defs."/$defs/rag_file_parsing_config/$defs/layout_parser", list.MaxItems(1) & [..._#defs."/$defs/rag_file_parsing_config/$defs/layout_parser"]])
		llm_parser?: matchN(1, [_#defs."/$defs/rag_file_parsing_config/$defs/llm_parser", list.MaxItems(1) & [..._#defs."/$defs/rag_file_parsing_config/$defs/llm_parser"]])
	})

	#rag_file_transformation_config: close({
		rag_file_chunking_config?: matchN(1, [_#defs."/$defs/rag_file_transformation_config/$defs/rag_file_chunking_config", list.MaxItems(1) & [..._#defs."/$defs/rag_file_transformation_config/$defs/rag_file_chunking_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/google_drive_source/$defs/resource_ids": close({
		// The ID of the Google Drive file.
		resource_id!: string

		// The type of the Google Drive resource. Only individual files are
		// supported because each resource manages one RagFile. Default value:
		// "RESOURCE_TYPE_FILE" Possible values: ["RESOURCE_TYPE_FILE"]
		resource_type?: string
	})

	_#defs: "/$defs/rag_file_parsing_config/$defs/layout_parser": close({
		// The maximum number of requests the job is allowed to make to the
		// Document AI processor per minute.
		max_parsing_requests_per_min?: number

		// The full resource name of a Document AI processor or processor version
		// of type 'LAYOUT_PARSER_PROCESSOR'. Format:
		// 'projects/{project_id}/locations/{location}/processors/{processor_id}' or
		// 'projects/{project_id}/locations/{location}/processors/{processor_id}/processorVersions/{processor_version_id}'.
		processor_name?: string
	})

	_#defs: "/$defs/rag_file_parsing_config/$defs/llm_parser": close({
		// The prompt to use for parsing. If not specified, a default prompt is used.
		custom_parsing_prompt?: string

		// The maximum number of requests the job is allowed to make to the LLM
		// model per minute.
		max_parsing_requests_per_min?: number

		// The name of a LLM model used for parsing. Format:
		// 'projects/{project_id}/locations/{location}/publishers/{publisher}/models/{model}'.
		model_name?: string
	})

	_#defs: "/$defs/rag_file_transformation_config/$defs/rag_file_chunking_config": close({
		fixed_length_chunking?: matchN(1, [_#defs."/$defs/rag_file_transformation_config/$defs/rag_file_chunking_config/$defs/fixed_length_chunking", list.MaxItems(1) & [..._#defs."/$defs/rag_file_transformation_config/$defs/rag_file_chunking_config/$defs/fixed_length_chunking"]])
	})

	_#defs: "/$defs/rag_file_transformation_config/$defs/rag_file_chunking_config/$defs/fixed_length_chunking": close({
		// The overlap between chunks.
		chunk_overlap?: number

		// The size of the chunks.
		chunk_size?: number
	})
}
