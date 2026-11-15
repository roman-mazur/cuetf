package data

cloudflare_zero_trust_cws_workloads: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_workloads")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// Sort direction (default: asc)
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter by workload name (case-insensitive substring match)
		name?: string

		// Field to order results by (default: created_at)
		// Available values: "name", "created_at", "updated_at".
		order?: string

		// Filter to workloads attached to this policy set
		policy_set_id?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Optional free-form description.
			description?: string

			// Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
			filter?: string

			// Server-assigned UUID
			id?: string

			// Human-readable handle; unique per account.
			name?: string

			// Tags attached to this workload
			tags?: [string]: string
			updated_at?: string
		}), [...close({
			created_at?: string

			// Optional free-form description.
			description?: string

			// Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
			filter?: string

			// Server-assigned UUID
			id?: string

			// Human-readable handle; unique per account.
			name?: string

			// Tags attached to this workload
			tags?: [string]: string
			updated_at?: string
		})]])
	})
}
