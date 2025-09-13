package res

import "list"

#google_discovery_engine_data_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_discovery_engine_data_store")
	close({
		// The content config of the data store. Possible values:
		// ["NO_CONTENT", "CONTENT_REQUIRED", "PUBLIC_WEBSITE"]
		content_config!: string

		// If true, an advanced data store for site search will be
		// created. If the
		// data store is not configured as site search (GENERIC vertical
		// and
		// PUBLIC_WEBSITE contentConfig), this flag will be ignored.
		create_advanced_site_search?: bool

		// Timestamp when the DataStore was created.
		create_time?: string

		// The unique id of the data store.
		data_store_id!: string

		// The id of the default Schema associated with this data store.
		default_schema_id?: string

		// The display name of the data store. This field must be a UTF-8
		// encoded
		// string with a length limit of 128 characters.
		display_name!: string
		id?:           string

		// The industry vertical that the data store registers. Possible
		// values: ["GENERIC", "MEDIA", "HEALTHCARE_FHIR"]
		industry_vertical!: string

		// KMS key resource name which will be used to encrypt resources:
		// '/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}'
		// The KMS key to be used to protect this DataStore at creation
		// time. Must be
		// set for requests that need to comply with CMEK Org Policy
		// protections.
		// If this field is set and processed successfully, the DataStore
		// will be
		// protected by the KMS key, as indicated in the cmek_config
		// field.
		kms_key_name?: string

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string
		advanced_site_search_config?: matchN(1, [#advanced_site_search_config, list.MaxItems(1) & [...#advanced_site_search_config]])
		document_processing_config?: matchN(1, [#document_processing_config, list.MaxItems(1) & [...#document_processing_config]])
		timeouts?: #timeouts

		// The unique full resource name of the data store. Values are of
		// the format
		// 'projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}'.
		// This field must be a UTF-8 encoded string with a length limit
		// of 1024
		// characters.
		name?:    string
		project?: string

		// A boolean flag indicating whether to skip the default schema
		// creation for
		// the data store. Only enable this flag if you are certain that
		// the default
		// schema is incompatible with your use case.
		// If set to true, you must manually create a schema for the data
		// store
		// before any documents can be ingested.
		// This flag cannot be specified if 'data_store.starting_schema'
		// is
		// specified.
		skip_default_schema_creation?: bool

		// The solutions that the data store enrolls. Possible values:
		// ["SOLUTION_TYPE_RECOMMENDATION", "SOLUTION_TYPE_SEARCH",
		// "SOLUTION_TYPE_CHAT", "SOLUTION_TYPE_GENERATIVE_CHAT"]
		solution_types?: [...string]
	})

	#advanced_site_search_config: close({
		// If set true, automatic refresh is disabled for the DataStore.
		disable_automatic_refresh?: bool

		// If set true, initial indexing is disabled for the DataStore.
		disable_initial_index?: bool
	})

	#document_processing_config: close({
		chunking_config?: matchN(1, [_#defs."/$defs/document_processing_config/$defs/chunking_config", list.MaxItems(1) & [..._#defs."/$defs/document_processing_config/$defs/chunking_config"]])
		default_parsing_config?: matchN(1, [_#defs."/$defs/document_processing_config/$defs/default_parsing_config", list.MaxItems(1) & [..._#defs."/$defs/document_processing_config/$defs/default_parsing_config"]])
		parsing_config_overrides?: matchN(1, [_#defs."/$defs/document_processing_config/$defs/parsing_config_overrides", [..._#defs."/$defs/document_processing_config/$defs/parsing_config_overrides"]])

		// The full resource name of the Document Processing Config.
		// Format:
		// 'projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/documentProcessingConfig'.
		name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/document_processing_config/$defs/chunking_config": close({
		layout_based_chunking_config?: matchN(1, [_#defs."/$defs/document_processing_config/$defs/chunking_config/$defs/layout_based_chunking_config", list.MaxItems(1) & [..._#defs."/$defs/document_processing_config/$defs/chunking_config/$defs/layout_based_chunking_config"]])
	})

	_#defs: "/$defs/document_processing_config/$defs/chunking_config/$defs/layout_based_chunking_config": close({
		// The token size limit for each chunk.
		// Supported values: 100-500 (inclusive). Default value: 500.
		chunk_size?: number

		// Whether to include appending different levels of headings to
		// chunks from the middle of the document to prevent context
		// loss.
		// Default value: False.
		include_ancestor_headings?: bool
	})

	_#defs: "/$defs/document_processing_config/$defs/default_parsing_config": close({
		digital_parsing_config?: matchN(1, [_#defs."/$defs/document_processing_config/$defs/default_parsing_config/$defs/digital_parsing_config", list.MaxItems(1) & [..._#defs."/$defs/document_processing_config/$defs/default_parsing_config/$defs/digital_parsing_config"]])
		layout_parsing_config?: matchN(1, [_#defs."/$defs/document_processing_config/$defs/default_parsing_config/$defs/layout_parsing_config", list.MaxItems(1) & [..._#defs."/$defs/document_processing_config/$defs/default_parsing_config/$defs/layout_parsing_config"]])
		ocr_parsing_config?: matchN(1, [_#defs."/$defs/document_processing_config/$defs/default_parsing_config/$defs/ocr_parsing_config", list.MaxItems(1) & [..._#defs."/$defs/document_processing_config/$defs/default_parsing_config/$defs/ocr_parsing_config"]])
	})

	_#defs: "/$defs/document_processing_config/$defs/default_parsing_config/$defs/digital_parsing_config": close({})

	_#defs: "/$defs/document_processing_config/$defs/default_parsing_config/$defs/layout_parsing_config": close({
		// If true, the LLM based annotation is added to the image during
		// parsing.
		enable_image_annotation?: bool

		// If true, the LLM based annotation is added to the table during
		// parsing.
		enable_table_annotation?: bool

		// List of HTML classes to exclude from the parsed content.
		exclude_html_classes?: [...string]

		// List of HTML elements to exclude from the parsed content.
		exclude_html_elements?: [...string]

		// List of HTML ids to exclude from the parsed content.
		exclude_html_ids?: [...string]

		// Contains the required structure types to extract from the
		// document. Supported values: 'shareholder-structure'.
		structured_content_types?: [...string]
	})

	_#defs: "/$defs/document_processing_config/$defs/default_parsing_config/$defs/ocr_parsing_config": close({
		// If true, will use native text instead of OCR text on pages
		// containing native text.
		use_native_text?: bool
	})

	_#defs: "/$defs/document_processing_config/$defs/parsing_config_overrides": close({
		digital_parsing_config?: matchN(1, [_#defs."/$defs/document_processing_config/$defs/parsing_config_overrides/$defs/digital_parsing_config", list.MaxItems(1) & [..._#defs."/$defs/document_processing_config/$defs/parsing_config_overrides/$defs/digital_parsing_config"]])
		layout_parsing_config?: matchN(1, [_#defs."/$defs/document_processing_config/$defs/parsing_config_overrides/$defs/layout_parsing_config", list.MaxItems(1) & [..._#defs."/$defs/document_processing_config/$defs/parsing_config_overrides/$defs/layout_parsing_config"]])
		ocr_parsing_config?: matchN(1, [_#defs."/$defs/document_processing_config/$defs/parsing_config_overrides/$defs/ocr_parsing_config", list.MaxItems(1) & [..._#defs."/$defs/document_processing_config/$defs/parsing_config_overrides/$defs/ocr_parsing_config"]])
		file_type!: string
	})

	_#defs: "/$defs/document_processing_config/$defs/parsing_config_overrides/$defs/digital_parsing_config": close({})

	_#defs: "/$defs/document_processing_config/$defs/parsing_config_overrides/$defs/layout_parsing_config": close({
		// If true, the LLM based annotation is added to the image during
		// parsing.
		enable_image_annotation?: bool

		// If true, the LLM based annotation is added to the table during
		// parsing.
		enable_table_annotation?: bool

		// List of HTML classes to exclude from the parsed content.
		exclude_html_classes?: [...string]

		// List of HTML elements to exclude from the parsed content.
		exclude_html_elements?: [...string]

		// List of HTML ids to exclude from the parsed content.
		exclude_html_ids?: [...string]

		// Contains the required structure types to extract from the
		// document. Supported values: 'shareholder-structure'.
		structured_content_types?: [...string]
	})

	_#defs: "/$defs/document_processing_config/$defs/parsing_config_overrides/$defs/ocr_parsing_config": close({
		// If true, will use native text instead of OCR text on pages
		// containing native text.
		use_native_text?: bool
	})
}
