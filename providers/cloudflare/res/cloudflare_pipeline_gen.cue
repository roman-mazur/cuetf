package res

#cloudflare_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_pipeline")
	close({
		// Specifies the public ID of the account.
		account_id?: string
		created_at?: string

		// Indicates the reason for the failure of the Pipeline.
		failure_reason?: string

		// Indicates a unique identifier for this pipeline.
		id?:          string
		modified_at?: string

		// Specifies the name of the Pipeline.
		name!: string

		// Specifies SQL for the Pipeline processing flow.
		sql!: string

		// Indicates the current status of the Pipeline.
		status?: string

		// List of streams and sinks used by this pipeline.
		tables?: matchN(1, [close({
			// Unique identifier for the connection (stream or sink).
			id?: string

			// Latest available version of the connection.
			latest?: number

			// Name of the connection.
			name?: string

			// Type of the connection.
			// Available values: "stream", "sink".
			type?: string

			// Current version of the connection used by this pipeline.
			version?: number
		}), [...close({
			// Unique identifier for the connection (stream or sink).
			id?: string

			// Latest available version of the connection.
			latest?: number

			// Name of the connection.
			name?: string

			// Type of the connection.
			// Available values: "stream", "sink".
			type?: string

			// Current version of the connection used by this pipeline.
			version?: number
		})]])
	})
}
