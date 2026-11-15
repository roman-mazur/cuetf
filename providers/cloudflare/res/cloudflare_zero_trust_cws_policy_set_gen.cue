package res

cloudflare_zero_trust_cws_policy_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_cws_policy_set")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// Optional free-form description.
		description?: string

		// Workload IDs that exclude matching requests. Exclusions take precedence.
		exclude_workload_ids?: [...string]

		// Server-assigned UUID
		id?: string

		// Workload IDs that include matching requests. Empty or omitted includes all
		// requests before exclusions.
		include_workload_ids?: [...string]

		// Name of the policy set
		name!: string

		// Policies to include with per-membership enforcement mode
		policies!: matchN(1, [close({
			// Whether this policy should enforce when it matches. Defaults to true; false
			// keeps the policy attached for non-enforcing evaluation.
			enforce?: bool

			// ID of the member policy
			policy_id!: string
		}), [...close({
			// Whether this policy should enforce when it matches. Defaults to true; false
			// keeps the policy attached for non-enforcing evaluation.
			enforce?: bool

			// ID of the member policy
			policy_id!: string
		})]])

		// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
		tags?: [string]: string
		updated_at?: string
	})
}
