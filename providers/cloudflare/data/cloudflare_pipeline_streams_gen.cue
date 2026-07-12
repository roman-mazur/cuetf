package data

cloudflare_pipeline_streams: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_pipeline_streams")
	close({
		// Specifies the public ID of the account.
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filters streams by name (case-insensitive substring).
		name?: string

		// Specifies the public ID of the pipeline.
		pipeline_id?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Indicates the endpoint URL of this stream.
			endpoint?: string
			format?: close({
				// Available values: "uncompressed", "snappy", "gzip", "zstd", "lz4".
				compression?: string

				// Available values: "number", "string", "bytes".
				decimal_encoding?: string
				row_group_bytes?:  number

				// Available values: "rfc3339", "unix_millis".
				timestamp_format?: string

				// Available values: "json", "parquet".
				type?:         string
				unstructured?: bool
			})

			// Indicates a unique identifier for this stream.
			id?: string
			http?: close({
				// Indicates that authentication is required for the HTTP endpoint.
				authentication?: bool

				// Specifies the CORS options for the HTTP endpoint.
				cors?: close({
					origins?: [...string]
				})

				// Indicates that the HTTP endpoint is enabled.
				enabled?: bool
			})

			// Indicates the name of the Stream.
			name?: string
			schema?: close({
				fields?: matchN(1, [close({
					metadata_key?: string

					// Available values: "int32", "int64", "float32", "float64", "bool", "string",
					// "binary", "timestamp", "json".
					type?: string
					name?: string

					// Available values: "second", "millisecond", "microsecond", "nanosecond".
					unit?:     string
					required?: bool
					sql_name?: string
				}), [...close({
					metadata_key?: string

					// Available values: "int32", "int64", "float32", "float64", "bool", "string",
					// "binary", "timestamp", "json".
					type?: string
					name?: string

					// Available values: "second", "millisecond", "microsecond", "nanosecond".
					unit?:     string
					required?: bool
					sql_name?: string
				})]])
				inferred?: bool
				format?: close({
					// Available values: "uncompressed", "snappy", "gzip", "zstd", "lz4".
					compression?: string

					// Available values: "number", "string", "bytes".
					decimal_encoding?: string
					row_group_bytes?:  number

					// Available values: "rfc3339", "unix_millis".
					timestamp_format?: string

					// Available values: "json", "parquet".
					type?:         string
					unstructured?: bool
				})
			})
			modified_at?: string

			// Indicates the current version of this stream.
			version?: number
			worker_binding?: close({
				// Indicates that the worker binding is enabled.
				enabled?: bool
			})
		}), [...close({
			created_at?: string

			// Indicates the endpoint URL of this stream.
			endpoint?: string
			format?: close({
				// Available values: "uncompressed", "snappy", "gzip", "zstd", "lz4".
				compression?: string

				// Available values: "number", "string", "bytes".
				decimal_encoding?: string
				row_group_bytes?:  number

				// Available values: "rfc3339", "unix_millis".
				timestamp_format?: string

				// Available values: "json", "parquet".
				type?:         string
				unstructured?: bool
			})

			// Indicates a unique identifier for this stream.
			id?: string
			http?: close({
				// Indicates that authentication is required for the HTTP endpoint.
				authentication?: bool

				// Specifies the CORS options for the HTTP endpoint.
				cors?: close({
					origins?: [...string]
				})

				// Indicates that the HTTP endpoint is enabled.
				enabled?: bool
			})

			// Indicates the name of the Stream.
			name?: string
			schema?: close({
				fields?: matchN(1, [close({
					metadata_key?: string

					// Available values: "int32", "int64", "float32", "float64", "bool", "string",
					// "binary", "timestamp", "json".
					type?: string
					name?: string

					// Available values: "second", "millisecond", "microsecond", "nanosecond".
					unit?:     string
					required?: bool
					sql_name?: string
				}), [...close({
					metadata_key?: string

					// Available values: "int32", "int64", "float32", "float64", "bool", "string",
					// "binary", "timestamp", "json".
					type?: string
					name?: string

					// Available values: "second", "millisecond", "microsecond", "nanosecond".
					unit?:     string
					required?: bool
					sql_name?: string
				})]])
				inferred?: bool
				format?: close({
					// Available values: "uncompressed", "snappy", "gzip", "zstd", "lz4".
					compression?: string

					// Available values: "number", "string", "bytes".
					decimal_encoding?: string
					row_group_bytes?:  number

					// Available values: "rfc3339", "unix_millis".
					timestamp_format?: string

					// Available values: "json", "parquet".
					type?:         string
					unstructured?: bool
				})
			})
			modified_at?: string

			// Indicates the current version of this stream.
			version?: number
			worker_binding?: close({
				// Indicates that the worker binding is enabled.
				enabled?: bool
			})
		})]])
	})
}
