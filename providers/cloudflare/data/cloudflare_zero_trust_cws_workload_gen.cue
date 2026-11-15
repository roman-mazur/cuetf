package data

cloudflare_zero_trust_cws_workload: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_workload")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// Optional free-form description.
		description?: string

		// Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
		filter?: string
		find_one_by?: close({
			// Sort direction (default: asc)
			// Available values: "asc", "desc".
			direction?: string

			// Filter by workload name (case-insensitive substring match)
			name?: string

			// Field to order results by (default: created_at)
			// Available values: "name", "created_at", "updated_at".
			order?: string

			// Filter to workloads attached to this policy set
			policy_set_id?: string
		})

		// ID of the workload to retrieve
		id?: string

		// Human-readable handle; unique per account.
		name?: string

		// Tags attached to this workload
		tags?: [string]: string
		updated_at?: string

		// ID of the workload to retrieve
		workload_id?: string
	})
}
