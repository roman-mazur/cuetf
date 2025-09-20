package data

#aws_glue_catalog_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_catalog_table")
	close({
		arn?:           string
		catalog_id?:    string
		database_name!: string
		description?:   string
		id?:            string
		name!:          string
		owner?:         string
		parameters?: [string]: string
		partition_index?: [...close({
			index_name?:   string
			index_status?: string
			keys?: [...string]
		})]
		partition_keys?: [...close({
			comment?: string
			name?:    string
			parameters?: [string]: string
			type?: string
		})]
		query_as_of_time?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		retention?: number
		storage_descriptor?: [...close({
			additional_locations?: [...string]
			bucket_columns?: [...string]
			columns?: [...close({
				comment?: string
				name?:    string
				parameters?: [string]: string
				type?: string
			})]
			compressed?:        bool
			input_format?:      string
			location?:          string
			number_of_buckets?: number
			output_format?:     string
			parameters?: [string]: string
			schema_reference?: [...close({
				schema_id?: [...close({
					registry_name?: string
					schema_arn?:    string
					schema_name?:   string
				})]
				schema_version_id?:     string
				schema_version_number?: number
			})]
			ser_de_info?: [...close({
				name?: string
				parameters?: [string]: string
				serialization_library?: string
			})]
			skewed_info?: [...close({
				skewed_column_names?: [...string]
				skewed_column_value_location_maps?: [string]: string
				skewed_column_values?: [...string]
			})]
			sort_columns?: [...close({
				column?:     string
				sort_order?: number
			})]
			stored_as_sub_directories?: bool
		})]
		table_type?: string
		target_table?: [...close({
			catalog_id?:    string
			database_name?: string
			name?:          string
			region?:        string
		})]
		transaction_id?:     number
		view_expanded_text?: string
		view_original_text?: string
	})
}
