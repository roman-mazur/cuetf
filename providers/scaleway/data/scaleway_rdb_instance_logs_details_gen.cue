package data

scaleway_rdb_instance_logs_details: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_rdb_instance_logs_details")
	close({
		// Remote Database Instance logs details.
		details?: matchN(1, [close({
			// Name of the remote log.
			log_name?: string

			// Size of the remote log in bytes.
			size_in_bytes?: number
		}), [...close({
			// Name of the remote log.
			log_name?: string

			// Size of the remote log in bytes.
			size_in_bytes?: number
		})]])

		// The ID of this data source, in the `{region}/{instance_id}` format.
		id?: string

		// The ID of the Database Instance. Can be a plain UUID or a regional ID (`{region}/{id}`).
		instance_id!: string

		// The region of the Database Instance.
		region?: string
	})
}
