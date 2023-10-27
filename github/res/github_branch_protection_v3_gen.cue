package res

import "list"

#github_branch_protection_v3: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_branch_protection_v3")
	branch:                           string
	enforce_admins?:                  bool
	etag?:                            string
	id?:                              string
	repository:                       string
	require_conversation_resolution?: bool
	require_signed_commits?:          bool
	required_pull_request_reviews?:   #required_pull_request_reviews | list.MaxItems(1) & [...#required_pull_request_reviews]
	required_status_checks?:          #required_status_checks | list.MaxItems(1) & [...#required_status_checks]
	restrictions?:                    #restrictions | list.MaxItems(1) & [...#restrictions]

	#required_pull_request_reviews: {
		dismiss_stale_reviews?: bool
		dismissal_teams?: [...string]
		dismissal_users?: [...string]
		require_code_owner_reviews?:      bool
		required_approving_review_count?: number
		bypass_pull_request_allowances?:  #required_pull_request_reviews.#bypass_pull_request_allowances | list.MaxItems(1) & [...#required_pull_request_reviews.#bypass_pull_request_allowances]

		#bypass_pull_request_allowances: {
			apps?: [...string]
			teams?: [...string]
			users?: [...string]
		}
	}

	#required_status_checks: {
		checks?: [...string]
		strict?: bool
	}

	#restrictions: {
		apps?: [...string]
		teams?: [...string]
		users?: [...string]
	}
}
