package res

cloudflare_log_explorer_dataset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_log_explorer_dataset")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
		account_id?: string

		// RFC3339 timestamp recording when the API created this dataset.
		created_at?: string

		// Dataset type name to create (e.g. `http_requests`).
		dataset!: string

		// Unique dataset ID.
		dataset_id?: string

		// Set to `false` to allow deletion of this dataset.
		deletion_protection?: bool

		// Whether to enable or disable log ingest for this dataset.
		enabled?: bool

		// Controls which fields the API ingests. Defaults to all available
		// fields when absent.
		// Each dataset requires its own timestamp field to remain enabled (the
		// field name varies per dataset type); omitting it from an explicit
		// selection is rejected by the API.
		fields?: matchN(1, [close({
			// Whether the API includes this field in log ingest.
			enabled!: bool

			// Field name. Names are matched without regard to case.
			name!: string
		}), [...close({
			// Whether the API includes this field in log ingest.
			enabled!: bool

			// Field name. Names are matched without regard to case.
			name!: string
		})]])

		// Optional Logpush filter predicate to restrict which events are ingested.
		// Omitting this attribute means no filter. An empty string also means no filter.
		// Removing a configured filter sends an empty string to clear it in the API.
		// The provider stores missing or null API filters as empty strings in state.
		// See [Logpush filters](https://developers.cloudflare.com/logs/reference/filters/)
		// for syntax and examples.
		filter?: string

		// Whether to filter attack traffic from the Logpush job. The API defaults to
		// true on creation for http_requests, firewall_events, and
		// network_analytics_logs. If omitted on update, the existing setting is kept.
		// The API omits this setting for datasets that do not support it.
		filter_attack_traffic?: bool

		// Unique dataset ID.
		id?: string

		// Public ID of the account or zone that owns this dataset.
		object_id?: string

		// Whether this dataset belongs to an account or a zone.
		// Available values: "account", "zone".
		object_type?: string

		// RFC3339 timestamp recording when the API last updated this dataset.
		updated_at?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
		zone_id?: string
	})
}
