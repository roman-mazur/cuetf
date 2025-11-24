package res

#google_secure_source_manager_branch_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_secure_source_manager_branch_rule")
	close({
		// Determines if allow stale reviews or approvals before merging
		// to the branch.
		allow_stale_reviews?: bool

		// The ID for the BranchRule.
		branch_rule_id!: string

		// Time the BranchRule was created in UTC.
		create_time?: string

		// Determines if the branch rule is disabled or not.
		disabled?: bool

		// The BranchRule matches branches based on the specified regular
		// expression. Use .* to match all branches.
		include_pattern!: string
		id?:              string

		// The location for the Repository.
		location!: string

		// The minimum number of approvals required for the branch rule to
		// be matched.
		minimum_approvals_count?: number

		// The minimum number of reviews required for the branch rule to
		// be matched.
		minimum_reviews_count?: number

		// The resource name for the BranchRule.
		name?: string

		// The ID for the Repository.
		repository_id!: string
		timeouts?:      #timeouts

		// Determines if require comments resolved before merging to the
		// branch.
		require_comments_resolved?: bool

		// Determines if require linear history before merging to the
		// branch.
		require_linear_history?: bool
		project?:                string

		// Determines if the branch rule requires a pull request or not.
		require_pull_request?: bool

		// Unique identifier of the BranchRule.
		uid?: string

		// Time the BranchRule was updated in UTC.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
