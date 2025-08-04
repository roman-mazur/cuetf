package res

import "list"

#github_branch_protection_v3: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_branch_protection_v3")
	close({
		branch!: string
		required_pull_request_reviews?: matchN(1, [#required_pull_request_reviews, list.MaxItems(1) & [...#required_pull_request_reviews]])
		enforce_admins?:                  bool
		etag?:                            string
		id?:                              string
		repository!:                      string
		require_conversation_resolution?: bool
		require_signed_commits?:          bool
		required_status_checks?: matchN(1, [#required_status_checks, list.MaxItems(1) & [...#required_status_checks]])
		restrictions?: matchN(1, [#restrictions, list.MaxItems(1) & [...#restrictions]])
	})

	#required_pull_request_reviews: close({
		bypass_pull_request_allowances?: matchN(1, [_#defs."/$defs/required_pull_request_reviews/$defs/bypass_pull_request_allowances", list.MaxItems(1) & [..._#defs."/$defs/required_pull_request_reviews/$defs/bypass_pull_request_allowances"]])
		dismiss_stale_reviews?: bool
		dismissal_apps?: [...string]
		dismissal_teams?: [...string]
		dismissal_users?: [...string]
		require_code_owner_reviews?:      bool
		require_last_push_approval?:      bool
		required_approving_review_count?: number
	})

	#required_status_checks: close({
		checks?: [...string]
		strict?: bool
	})

	#restrictions: close({
		apps?: [...string]
		teams?: [...string]
		users?: [...string]
	})

	_#defs: "/$defs/required_pull_request_reviews/$defs/bypass_pull_request_allowances": close({
		apps?: [...string]
		teams?: [...string]
		users?: [...string]
	})
}
