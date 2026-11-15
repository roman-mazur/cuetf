package data

cloudflare_log_explorer_datasets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_log_explorer_datasets")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
		account_id?: string

		// Set to true to include zone-scoped datasets belonging to this account. Only
		// supported with account_id.
		include_zones?: bool

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// RFC3339 timestamp recording when the API created this dataset.
			created_at?: string

			// Dataset type name (e.g. `http_requests`).
			dataset?: string

			// Unique dataset ID.
			dataset_id?: string

			// Whether deletion is blocked. Set to `false` before deleting the dataset.
			deletion_protection?: bool

			// Whether log ingest is currently active for this dataset.
			enabled?: bool

			// Unique dataset ID.
			id?: string

			// Public ID of the account or zone that owns this dataset.
			object_id?: string

			// Whether this dataset belongs to an account or a zone.
			// Available values: "account", "zone".
			object_type?: string

			// RFC3339 timestamp recording when the API last updated this dataset.
			updated_at?: string
		}), [...close({
			// RFC3339 timestamp recording when the API created this dataset.
			created_at?: string

			// Dataset type name (e.g. `http_requests`).
			dataset?: string

			// Unique dataset ID.
			dataset_id?: string

			// Whether deletion is blocked. Set to `false` before deleting the dataset.
			deletion_protection?: bool

			// Whether log ingest is currently active for this dataset.
			enabled?: bool

			// Unique dataset ID.
			id?: string

			// Public ID of the account or zone that owns this dataset.
			object_id?: string

			// Whether this dataset belongs to an account or a zone.
			// Available values: "account", "zone".
			object_type?: string

			// RFC3339 timestamp recording when the API last updated this dataset.
			updated_at?: string
		})]])

		// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
		zone_id?: string
	})
}
