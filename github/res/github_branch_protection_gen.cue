package res

#github_branch_protection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_branch_protection")
	allows_deletions?:    bool
	allows_force_pushes?: bool
	blocks_creations?:    bool
	enforce_admins?:      bool
	force_push_bypassers?: [...string]
	id?:          string
	lock_branch?: bool
	pattern:      string
	push_restrictions?: [...string]
	repository_id:                    string
	require_conversation_resolution?: bool
	require_signed_commits?:          bool
	required_linear_history?:         bool
	required_pull_request_reviews?:   #required_pull_request_reviews | [...#required_pull_request_reviews]
	required_status_checks?:          #required_status_checks | [...#required_status_checks]

	#required_pull_request_reviews: {
		dismiss_stale_reviews?: bool
		dismissal_restrictions?: [...string]
		pull_request_bypassers?: [...string]
		require_code_owner_reviews?:      bool
		require_last_push_approval?:      bool
		required_approving_review_count?: number
		restrict_dismissals?:             bool
	}

	#required_status_checks: {
		contexts?: [...string]
		strict?: bool
	}
}
