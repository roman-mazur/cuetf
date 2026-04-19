package data

#google_discovery_engine_data_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_discovery_engine_data_store")
	close({
		// Configuration data for advance site search.
		advanced_site_search_config?: [...close({
			disable_automatic_refresh?: bool
			disable_initial_index?:     bool
		})]

		// The content config of the data store. Possible values:
		// ["NO_CONTENT", "CONTENT_REQUIRED", "PUBLIC_WEBSITE"]
		content_config?: string

		// If true, an advanced data store for site search will be
		// created. If the
		// data store is not configured as site search (GENERIC vertical
		// and
		// PUBLIC_WEBSITE contentConfig), this flag will be ignored.
		create_advanced_site_search?: bool

		// Timestamp when the DataStore was created.
		create_time?: string

		// The unique id of the data store.
		data_store_id?: string

		// The id of the default Schema associated with this data store.
		default_schema_id?: string

		// The display name of the data store. This field must be a UTF-8
		// encoded
		// string with a length limit of 128 characters.
		display_name?: string

		// Configuration for Document understanding and enrichment.
		document_processing_config?: [...close({
			chunking_config?: [...close({
				layout_based_chunking_config?: [...close({
					chunk_size?:                number
					include_ancestor_headings?: bool
				})]
			})]
			default_parsing_config?: [...close({
				digital_parsing_config?: [...close({})]
				layout_parsing_config?: [...close({
					enable_image_annotation?: bool
					enable_table_annotation?: bool
					exclude_html_classes?: [...string]
					exclude_html_elements?: [...string]
					exclude_html_ids?: [...string]
					structured_content_types?: [...string]
				})]
				ocr_parsing_config?: [...close({
					use_native_text?: bool
				})]
			})]
			name?: string
			parsing_config_overrides?: [...close({
				digital_parsing_config?: [...close({})]
				file_type?: string
				layout_parsing_config?: [...close({
					enable_image_annotation?: bool
					enable_table_annotation?: bool
					exclude_html_classes?: [...string]
					exclude_html_elements?: [...string]
					exclude_html_ids?: [...string]
					structured_content_types?: [...string]
				})]
				ocr_parsing_config?: [...close({
					use_native_text?: bool
				})]
			})]
		})]
		id?: string

		// The industry vertical that the data store registers. Possible
		// values: ["GENERIC", "MEDIA", "HEALTHCARE_FHIR"]
		industry_vertical?: string

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
		location?: string

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
}
