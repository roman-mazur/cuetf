package data

#cloudflare_r2_data_catalog: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_r2_data_catalog")
	close({
		// Use this to identify the account.
		account_id?: string

		// Specifies the associated R2 bucket name.
		bucket?: string

		// Specifies the R2 bucket name.
		bucket_name!: string

		// Shows the credential configuration status.
		// Available values: "present", "absent".
		credential_status?: string

		// Specifies the R2 bucket name.
		id?: string

		// Specifies the catalog name (generated from account and bucket
		// name).
		name?: string

		// Indicates the status of the catalog.
		// Available values: "active", "inactive".
		status?: string

		// Configures maintenance for the catalog.
		maintenance_config?: close({
			// Configures compaction for catalog maintenance.
			compaction?: close({
				// Specifies the state of maintenance operations.
				// Available values: "enabled", "disabled".
				state?: string

				// Sets the target file size for compaction in megabytes. Defaults
				// to "128".
				// Available values: "64", "128", "256", "512".
				target_size_mb?: string
			})

			// Configures snapshot expiration settings.
			snapshot_expiration?: close({
				// Specifies the maximum age for snapshots. The system deletes
				// snapshots older than this age.
				// Format: <number><unit> where unit is d (days), h (hours), m
				// (minutes), or s (seconds).
				// Examples: "7d" (7 days), "48h" (48 hours), "2880m" (2,880
				// minutes).
				// Defaults to "7d".
				max_snapshot_age?: string

				// Specifies the minimum number of snapshots to retain. Defaults
				// to 100.
				min_snapshots_to_keep?: number

				// Specifies the state of maintenance operations.
				// Available values: "enabled", "disabled".
				state?: string
			})
		})
	})
}
