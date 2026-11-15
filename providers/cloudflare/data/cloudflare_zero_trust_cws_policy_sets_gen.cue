package data

cloudflare_zero_trust_cws_policy_sets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_policy_sets")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// Filter to policy sets attached to this deployment
		deployment_id?: string

		// Sort direction (default: asc)
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter by policy set name (case-insensitive substring match)
		name?: string

		// Field to order results by (default: created_at)
		// Available values: "name", "created_at", "updated_at".
		order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Optional free-form description.
			description?: string

			// Member policies and their per-membership enforcement mode
			policies?: matchN(1, [close({
				// Whether this policy should enforce when it matches. False keeps the policy
				// attached for non-enforcing evaluation.
				enforce?: bool

				// ID of the member policy
				policy_id?: string
			}), [...close({
				// Whether this policy should enforce when it matches. False keeps the policy
				// attached for non-enforcing evaluation.
				enforce?: bool

				// ID of the member policy
				policy_id?: string
			})]])

			// IDs of workloads that exclude matching requests. Exclusions take precedence.
			exclude_workload_ids?: [...string]

			// Server-assigned UUID
			id?: string

			// IDs of workloads that include matching requests. Empty includes all requests before exclusions.
			include_workload_ids?: [...string]

			// Human-readable name; unique per account
			name?: string

			// Tags attached to this policy set
			tags?: [string]: string
			updated_at?: string
		}), [...close({
			created_at?: string

			// Optional free-form description.
			description?: string

			// Member policies and their per-membership enforcement mode
			policies?: matchN(1, [close({
				// Whether this policy should enforce when it matches. False keeps the policy
				// attached for non-enforcing evaluation.
				enforce?: bool

				// ID of the member policy
				policy_id?: string
			}), [...close({
				// Whether this policy should enforce when it matches. False keeps the policy
				// attached for non-enforcing evaluation.
				enforce?: bool

				// ID of the member policy
				policy_id?: string
			})]])

			// IDs of workloads that exclude matching requests. Exclusions take precedence.
			exclude_workload_ids?: [...string]

			// Server-assigned UUID
			id?: string

			// IDs of workloads that include matching requests. Empty includes all requests before exclusions.
			include_workload_ids?: [...string]

			// Human-readable name; unique per account
			name?: string

			// Tags attached to this policy set
			tags?: [string]: string
			updated_at?: string
		})]])
	})
}
