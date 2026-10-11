package data

scaleway_rdb_instance_logs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_rdb_instance_logs")
	close({
		// The ID of this data source, in the `{region}/{instance_id}` format.
		id?: string

		// The ID of the Database Instance. Can be a plain UUID or a regional ID (`{region}/{id}`).
		instance_id!: string

		// List of available logs for the Database Instance.
		instance_logs?: matchN(1, [close({
			// Creation date of the log (RFC 3339 format).
			created_at?: string

			// Presigned Object Storage URL to download the log file.
			download_url?: string

			// Expiration date of the log (RFC 3339 format).
			expires_at?: string

			// UUID of the Database Instance log, in the `{region}/{id}` format.
			id?: string

			// Name of the underlying node.
			node_name?: string

			// Region the Database Instance is in.
			region?: string

			// Status of the log (`unknown`, `ready`, `creating`, `error`).
			status?: string
		}), [...close({
			// Creation date of the log (RFC 3339 format).
			created_at?: string

			// Presigned Object Storage URL to download the log file.
			download_url?: string

			// Expiration date of the log (RFC 3339 format).
			expires_at?: string

			// UUID of the Database Instance log, in the `{region}/{id}` format.
			id?: string

			// Name of the underlying node.
			node_name?: string

			// Region the Database Instance is in.
			region?: string

			// Status of the log (`unknown`, `ready`, `creating`, `error`).
			status?: string
		})]])

		// Criteria to use when ordering Database Instance logs listing. Possible values
		// are `created_at_asc` and `created_at_desc`.
		order_by?: string

		// The region of the Database Instance.
		region?: string
	})
}
