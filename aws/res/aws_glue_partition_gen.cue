package res

import "list"

#aws_glue_partition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_partition")
	catalog_id?:         string
	creation_time?:      string
	database_name:       string
	id?:                 string
	last_accessed_time?: string
	last_analyzed_time?: string
	parameters?: [string]: string
	partition_values: [...string]
	table_name:          string
	storage_descriptor?: #storage_descriptor | list.MaxItems(1) & [...#storage_descriptor]

	#storage_descriptor: {
		bucket_columns?: [...string]
		compressed?:        bool
		input_format?:      string
		location?:          string
		number_of_buckets?: number
		output_format?:     string
		parameters?: [string]: string
		stored_as_sub_directories?: bool
		columns?:                   #storage_descriptor.#columns | [...#storage_descriptor.#columns]
		ser_de_info?:               #storage_descriptor.#ser_de_info | list.MaxItems(1) & [...#storage_descriptor.#ser_de_info]
		skewed_info?:               #storage_descriptor.#skewed_info | list.MaxItems(1) & [...#storage_descriptor.#skewed_info]
		sort_columns?:              #storage_descriptor.#sort_columns | [...#storage_descriptor.#sort_columns]

		#columns: {
			comment?: string
			name:     string
			type?:    string
		}

		#ser_de_info: {
			name?: string
			parameters?: [string]: string
			serialization_library?: string
		}

		#skewed_info: {
			skewed_column_names?: [...string]
			skewed_column_value_location_maps?: [string]: string
			skewed_column_values?: [...string]
		}

		#sort_columns: {
			column:     string
			sort_order: number
		}
	}
}
