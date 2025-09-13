package res

import "list"

#github_branch_protection_v3: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_branch_protection_v3")
	close({
		// The Git branch to protect.
		branch!: string

		// Setting this to 'true' enforces status checks for repository
		// administrators.
		enforce_admins?: bool
		etag?:           string
		id?:             string

		// The GitHub repository name.
		repository!: string

		// Setting this to 'true' requires all conversations on code must
		// be resolved before a pull request can be merged.
		require_conversation_resolution?: bool

		// Setting this to 'true' requires all commits to be signed with
		// GPG.
		require_signed_commits?: bool
		required_pull_request_reviews?: matchN(1, [#required_pull_request_reviews, list.MaxItems(1) & [...#required_pull_request_reviews]])
		required_status_checks?: matchN(1, [#required_status_checks, list.MaxItems(1) & [...#required_status_checks]])
		restrictions?: matchN(1, [#restrictions, list.MaxItems(1) & [...#restrictions]])
	})

	#required_pull_request_reviews: close({
		// Dismiss approved reviews automatically when a new commit is
		// pushed.
		dismiss_stale_reviews?: bool

		// The list of apps slugs with dismissal access. Always use slug
		// of the app, not its name. Each app already has to have access
		// to the repository.
		dismissal_apps?: [...string]

		// The list of team slugs with dismissal access. Always use slug
		// of the team, not its name. Each team already has to have
		// access to the repository.
		dismissal_teams?: [...string]

		// The list of user logins with dismissal access.
		dismissal_users?: [...string]

		// Require an approved review in pull requests including files
		// with a designated code owner.
		require_code_owner_reviews?: bool

		// Require that the most recent push must be approved by someone
		// other than the last pusher.
		require_last_push_approval?: bool
		bypass_pull_request_allowances?: matchN(1, [_#defs."/$defs/required_pull_request_reviews/$defs/bypass_pull_request_allowances", list.MaxItems(1) & [..._#defs."/$defs/required_pull_request_reviews/$defs/bypass_pull_request_allowances"]])

		// Require 'x' number of approvals to satisfy branch protection
		// requirements. If this is specified it must be a number between
		// 0-6.
		required_approving_review_count?: number
	})

	#required_status_checks: close({
		// The list of status checks to require in order to merge into
		// this branch. No status checks are required by default. Checks
		// should be strings containing the 'context' and 'app_id' like
		// so 'context:app_id'
		checks?: [...string]

		// Require branches to be up to date before merging.
		strict?: bool
	})

	#restrictions: close({
		// The list of app slugs with push access.
		apps?: [...string]

		// The list of team slugs with push access. Always use slug of the
		// team, not its name. Each team already has to have access to
		// the repository.
		teams?: [...string]

		// The list of user logins with push access.
		users?: [...string]
	})

	_#defs: "/$defs/required_pull_request_reviews/$defs/bypass_pull_request_allowances": close({
		apps?: [...string]
		teams?: [...string]
		users?: [...string]
	})
}
