package data

scaleway_rdb_instance_log: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_rdb_instance_log")
	close({
		// Creation date of the log (RFC 3339 format).
		created_at?: string

		// Presigned Object Storage URL to download the log file.
		download_url?: string

		// Expiration date of the log (RFC 3339 format).
		expires_at?: string

		// The ID of the Database Instance log, in the `{region}/{id}` format.
		id?: string

		// The ID of the Database Instance log. Can be a plain UUID or a regional ID (`{region}/{id}`).
		instance_log_id!: string

		// Name of the underlying node.
		node_name?: string

		// The region of the Database Instance log.
		region?: string

		// Status of the log (`unknown`, `ready`, `creating`, `error`).
		status?: string
	})
}
