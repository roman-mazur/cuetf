package res

import "list"

google_biglake_hive_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_hive_table")
	close({
		partition_keys?: matchN(1, [#partition_keys, [...#partition_keys]])
		storage_descriptor!: matchN(1, [#storage_descriptor, list.MaxItems(1) & [_, ...] & [...#storage_descriptor]])
		timeouts?: #timeouts

		// The Hive catalog where the table is located.
		catalog!: string

		// Output only. The creation time of the table.
		create_time?: string

		// The Hive database where the table is located.
		database!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Description of the table.
		description?: string
		id?:          string

		// Output only. Last access time of the table.
		last_access_time?: string

		// The name of the table.
		name!: string

		// Additional parameters associated with the table.
		parameters?: [string]: string

		// Output only. The type of the table.
		table_type?: string
		project?:    string

		// Output only. The update time of the table
		update_time?: string

		// Expanded view text for Hive views. Empty for non-view.
		view_expanded_text?: string

		// Original view text for Hive views. Empty for non-view.
		view_original_text?: string
	})

	#partition_keys: close({
		// Comment of the field.
		comment?: string

		// Name of the field.
		name!: string

		// Type of the field.
		type!: string
	})

	#storage_descriptor: close({
		columns!: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/columns", [_, ...] & [..._#defs."/$defs/storage_descriptor/$defs/columns"]])
		serde_info?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/serde_info", list.MaxItems(1) & [..._#defs."/$defs/storage_descriptor/$defs/serde_info"]])
		skewed_info?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/skewed_info", list.MaxItems(1) & [..._#defs."/$defs/storage_descriptor/$defs/skewed_info"]])
		sort_cols?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/sort_cols", [..._#defs."/$defs/storage_descriptor/$defs/sort_cols"]])

		// Reducer grouping columns, clustering columns, and bucketing columns.
		bucket_cols?: [...string]

		// Whether the table data is compressed.
		compressed?: bool

		// The fully qualified Java class name of the input format.
		input_format?: string

		// The Cloud Storage URI where the table data is located.
		location_uri?: string

		// The number of buckets in the table.
		num_buckets?: number

		// The fully qualified Java class name of the output format.
		output_format?: string

		// Key-value pairs for the storage descriptor.
		parameters?: [string]: string

		// Whether the table is stored as sub directories.
		stored_as_sub_dirs?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/storage_descriptor/$defs/columns": close({
		// Comment of the field.
		comment?: string

		// Name of the field.
		name!: string

		// Type of the field.
		type!: string
	})

	_#defs: "/$defs/storage_descriptor/$defs/serde_info": close({
		// Description of the SerDe.
		description?: string

		// The fully qualified Java class name of the deserializer.
		deserializer_class?: string

		// Name of the SerDe, table name by default.
		name!: string

		// Parameters of the SerDe.
		parameters?: [string]: string

		// The SerDe type. Possible values: ["SERDE_TYPE_UNSPECIFIED", "HIVE", "SCHEMA_REGISTRY"]
		serde_type?: string

		// The fully qualified Java class name of the serialization library.
		serialization_lib!: string

		// The fully qualified Java class name of the serializer.
		serializer_class?: string
	})

	_#defs: "/$defs/storage_descriptor/$defs/skewed_info": close({
		skewed_col_values!: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/skewed_info/$defs/skewed_col_values", [_, ...] & [..._#defs."/$defs/storage_descriptor/$defs/skewed_info/$defs/skewed_col_values"]])
		skewed_key_values_locations!: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/skewed_info/$defs/skewed_key_values_locations", [_, ...] & [..._#defs."/$defs/storage_descriptor/$defs/skewed_info/$defs/skewed_key_values_locations"]])

		// The column names that are skewed.
		skewed_col_names!: [...string]
	})

	_#defs: "/$defs/storage_descriptor/$defs/skewed_info/$defs/skewed_col_values": close({
		values!: [...string]
	})

	_#defs: "/$defs/storage_descriptor/$defs/skewed_info/$defs/skewed_key_values_locations": close({
		location!: string
		values!: [...string]
	})

	_#defs: "/$defs/storage_descriptor/$defs/sort_cols": close({
		// The column name.
		col!: string

		// Sort order: 1 for Ascending, 0 for Descending.
		order!: number
	})
}
