package res

#elasticstack_kibana_data_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_data_view")
	close({
		// Generated ID for the data view.
		id?: string
		data_view!: close({
			// Allows the Data view saved object to exist before the data is
			// available.
			allow_no_index?: bool

			// Map of field attributes by field name.
			field_attrs?: [string]: close({
				// Popularity count for the field.
				count?: number

				// Custom label for the field.
				custom_label?: string
			})

			// Map of field formats by field name.
			field_formats?: [string]: close({
				// The ID of the field format. Valid values include: `boolean`,
				// `color`, `date`, `duration`, `number`, `percent`,
				// `relative_date`, `static_lookup`, `string`, `truncate`, `url`.
				id!: string
				params?: close({
					// Color rules for the field.
					colors?: matchN(1, [close({
						// Background color in hex format.
						background?: string

						// Range for the color rule (e.g., `-Infinity:Infinity`).
						range?: string

						// Regex pattern for the color rule.
						regex?: string

						// Text color in hex format.
						text?: string
					}), [...close({
						// Background color in hex format.
						background?: string

						// Range for the color rule (e.g., `-Infinity:Infinity`).
						range?: string

						// Regex pattern for the color rule.
						regex?: string

						// Text color in hex format.
						text?: string
					})]])

					// Length to truncate the field value.
					field_length?: number

					// Field type for color formatting (e.g., `string`, `number`).
					field_type?: string

					// Height for image type URLs.
					height?: number

					// Whether to include a space before the suffix in duration
					// format.
					include_space_with_suffix?: bool

					// Input format for duration fields (e.g., `hours`, `minutes`).
					input_format?: string

					// Label template for the field value.
					labeltemplate?: string

					// Output format for duration fields (e.g., `humanizePrecise`,
					// `humanize`).
					output_format?: string

					// Key-value pairs for static lookup.
					lookup_entries?: matchN(1, [close({
						// Key for the lookup entry.
						key!: string

						// Value for the lookup entry.
						value!: string
					}), [...close({
						// Key for the lookup entry.
						key!: string

						// Value for the lookup entry.
						value!: string
					})]])

					// Precision for duration output.
					output_precision?: number

					// Pattern for formatting the field value.
					pattern?: string

					// Timezone for date formatting (e.g., `America/New_York`).
					timezone?: string

					// Transform to apply to string fields (e.g., `upper`, `lower`).
					transform?: string

					// Type of URL format (e.g., `a`, `img`, `audio`).
					type?: string

					// Value to display when key is not found in lookup.
					unknown_key_value?: string

					// URL template for the field value.
					urltemplate?: string

					// Whether to use short suffixes in duration format.
					use_short_suffix?: bool

					// Width for image type URLs.
					width?: number
				})
			})

			// Saved object ID.
			id?: string

			// The Data view name.
			name?: string

			// Array of space IDs for sharing the Data view between multiple
			// spaces.
			namespaces?: [...string]

			// Map of runtime field definitions by field name.
			runtime_field_map?: [string]: close({
				// Script of the runtime field.
				script_source!: string

				// Mapping type of the runtime field. For more information, check
				// [Field data
				// types](https://www.elastic.co/guide/en/elasticsearch/reference/8.11/mapping-types.html).
				type!: string
			})

			// List of field names you want to filter out in Discover.
			source_filters?: [...string]

			// Timestamp field name, which you use for time-based Data views.
			time_field_name?: string

			// Comma-separated list of data streams, indices, and aliases that
			// you want to search. Supports wildcards (*).
			title!: string
		})

		// Overrides an existing data view if a data view with the
		// provided title already exists.
		override?: bool

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string
	})
}
