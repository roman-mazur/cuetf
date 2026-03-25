package res

#github_branch_protection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_branch_protection")
	close({
		// Setting this to 'true' to allow the branch to be deleted.
		allows_deletions?: bool

		// Setting this to 'true' to allow force pushes on the branch.
		allows_force_pushes?: bool

		// Setting this to 'true' enforces status checks for repository
		// administrators.
		enforce_admins?: bool

		// The list of actor Names/IDs that are allowed to bypass force
		// push restrictions. Actor names must either begin with a '/'
		// for users or the organization name followed by a '/' for
		// teams.
		force_push_bypassers?: [...string]

		// Setting this to 'true' will make the branch read-only and
		// preventing any pushes to it.
		lock_branch?: bool

		// Identifies the protection rule pattern.
		pattern!: string
		id?:      string

		// The name or node ID of the repository associated with this
		// branch protection rule.
		repository_id!: string

		// Setting this to 'true' requires all conversations on code must
		// be resolved before a pull request can be merged.
		require_conversation_resolution?: bool
		required_pull_request_reviews?: matchN(1, [#required_pull_request_reviews, [...#required_pull_request_reviews]])
		required_status_checks?: matchN(1, [#required_status_checks, [...#required_status_checks]])
		restrict_pushes?: matchN(1, [#restrict_pushes, [...#restrict_pushes]])

		// Setting this to 'true' requires all commits to be signed with
		// GPG.
		require_signed_commits?: bool

		// Setting this to 'true' enforces a linear commit Git history,
		// which prevents anyone from pushing merge commits to a branch.
		required_linear_history?: bool
	})

	#required_pull_request_reviews: close({
		// Dismiss approved reviews automatically when a new commit is
		// pushed.
		dismiss_stale_reviews?: bool

		// The list of actor Names/IDs with dismissal access. If not
		// empty, 'restrict_dismissals' is ignored. Actor names must
		// either begin with a '/' for users or the organization name
		// followed by a '/' for teams.
		dismissal_restrictions?: [...string]

		// The list of actor Names/IDs that are allowed to bypass pull
		// request requirements. Actor names must either begin with a '/'
		// for users or the organization name followed by a '/' for
		// teams.
		pull_request_bypassers?: [...string]

		// Require an approved review in pull requests including files
		// with a designated code owner.
		require_code_owner_reviews?: bool

		// Require that The most recent push must be approved by someone
		// other than the last pusher.
		require_last_push_approval?: bool

		// Require 'x' number of approvals to satisfy branch protection
		// requirements. If this is specified it must be a number between
		// 0-6.
		required_approving_review_count?: number

		// Restrict pull request review dismissals.
		restrict_dismissals?: bool
	})

	#required_status_checks: close({
		// The list of status checks to require in order to merge into
		// this branch. No status checks are required by default.
		contexts?: [...string]

		// Require branches to be up to date before merging.
		strict?: bool
	})

	#restrict_pushes: close({
		// Restrict pushes that create matching branches.
		blocks_creations?: bool

		// The list of actor Names/IDs that may push to the branch. Actor
		// names must either begin with a '/' for users or the
		// organization name followed by a '/' for teams.
		push_allowances?: [...string]
	})
}
