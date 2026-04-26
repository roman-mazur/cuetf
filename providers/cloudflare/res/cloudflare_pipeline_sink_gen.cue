package res

#cloudflare_pipeline_sink: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_pipeline_sink")
	close({
		// Specifies the public ID of the account.
		account_id?: string
		created_at?: string

		// Indicates a unique identifier for this sink.
		id?:          string
		modified_at?: string

		// Defines the name of the Sink.
		name!: string

		// Specifies the type of sink.
		// Available values: "r2", "r2_data_catalog".
		type!: string

		// Defines the configuration of the R2 Sink.
		config?: close({
			// Cloudflare Account ID for the bucket
			account_id!: string

			// R2 Bucket to write to
			bucket!: string

			// Jurisdiction this bucket is hosted in
			jurisdiction?: string

			// Table namespace
			namespace?: string

			// Subpath within the bucket to write to
			path?: string

			// Table name
			table_name?: string

			// Authentication token
			token?: string

			// Controls filename prefix/suffix and strategy.
			file_naming?: close({
				// The prefix to use in file name. i.e prefix-<uuid>.parquet
				prefix?: string

				// Filename generation strategy.
				// Available values: "serial", "uuid", "uuid_v7", "ulid".
				strategy?: string

				// This will overwrite the default file suffix. i.e .parquet, use
				// with caution
				suffix?: string
			})

			// Data-layout partitioning for sinks.
			partitioning?: close({
				// The pattern of the date string
				time_pattern?: string
			})

			// Rolling policy for file sinks (when & why to close a file and
			// open a new one).
			rolling_policy?: close({
				// Files will be rolled after reaching this number of bytes
				file_size_bytes?: number

				// Number of seconds of inactivity to wait before rolling over to
				// a new file
				inactivity_seconds?: number

				// Number of seconds to wait before rolling over to a new file
				interval_seconds?: number
			})
			credentials?: close({
				// Cloudflare Account ID for the bucket
				access_key_id!: string

				// Cloudflare Account ID for the bucket
				secret_access_key!: string
			})
		})
		format?: close({
			// Available values: "uncompressed", "snappy", "gzip", "zstd",
			// "lz4".
			compression?: string

			// Available values: "number", "string", "bytes".
			decimal_encoding?: string
			row_group_bytes?:  number

			// Available values: "rfc3339", "unix_millis".
			timestamp_format?: string

			// Available values: "json", "parquet".
			type!:         string
			unstructured?: bool
		})
		schema?: close({
			fields?: matchN(1, [close({
				metadata_key?: string
				name?:         string
				required?:     bool
				sql_name?:     string

				// Available values: "int32", "int64", "float32", "float64",
				// "bool", "string", "binary", "timestamp", "json".
				type!: string

				// Available values: "second", "millisecond", "microsecond",
				// "nanosecond".
				unit?: string
			}), [...close({
				metadata_key?: string
				name?:         string
				required?:     bool
				sql_name?:     string

				// Available values: "int32", "int64", "float32", "float64",
				// "bool", "string", "binary", "timestamp", "json".
				type!: string

				// Available values: "second", "millisecond", "microsecond",
				// "nanosecond".
				unit?: string
			})]])
			format?: close({
				// Available values: "uncompressed", "snappy", "gzip", "zstd",
				// "lz4".
				compression?: string

				// Available values: "number", "string", "bytes".
				decimal_encoding?: string
				row_group_bytes?:  number

				// Available values: "rfc3339", "unix_millis".
				timestamp_format?: string

				// Available values: "json", "parquet".
				type!:         string
				unstructured?: bool
			})
			inferred?: bool
		})
	})
}
