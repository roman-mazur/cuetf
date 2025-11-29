package data

#google_iam_workload_identity_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_iam_workload_identity_pool")
	close({
		// A description of the pool. Cannot exceed 256 characters.
		description?: string

		// Whether the pool is disabled. You cannot use a disabled pool to
		// exchange tokens, or use
		// existing tokens to access resources. If the pool is re-enabled,
		// existing tokens grant
		// access again.
		disabled?: bool

		// A display name for the pool. Cannot exceed 32 characters.
		display_name?: string

		// The resource name of the pool as
		// 'projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}'.
		name?:    string
		id?:      string
		project?: string

		// The state of the pool.
		// * 'STATE_UNSPECIFIED': State unspecified.
		// * 'ACTIVE': The pool is active, and may be used in Google Cloud
		// policies.
		// * 'DELETED': The pool is soft-deleted. Soft-deleted pools are
		// permanently deleted after
		// approximately 30 days. You can restore a soft-deleted pool
		// using
		// 'UndeleteWorkloadIdentityPool'. You cannot reuse the ID of a
		// soft-deleted pool until it is
		// permanently deleted. While a pool is deleted, you cannot use it
		// to exchange tokens, or
		// use existing tokens to access resources. If the pool is
		// undeleted, existing tokens grant
		// access again.
		state?: string

		// The ID to use for the pool, which becomes the final component
		// of the resource name. This
		// value should be 4-32 characters, and may contain the characters
		// [a-z0-9-]. The prefix
		// 'gcp-' is reserved for use by Google, and may not be specified.
		workload_identity_pool_id!: string
	})
}
