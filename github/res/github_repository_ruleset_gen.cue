package res

import "list"

#github_repository_ruleset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_ruleset")
	close({
		// Possible values for Enforcement are `disabled`, `active`,
		// `evaluate`. Note: `evaluate` is currently only supported for
		// owners of type `organization`.
		enforcement!: string

		// The name of the ruleset.
		name!: string

		// GraphQL global node id for use with v4 API.
		node_id?: string
		etag?:    string

		// Name of the repository to apply rulset to.
		repository?: string
		id?:         string
		bypass_actors?: matchN(1, [#bypass_actors, [...#bypass_actors]])
		conditions?: matchN(1, [#conditions, list.MaxItems(1) & [...#conditions]])
		rules!: matchN(1, [#rules, list.MaxItems(1) & [_, ...] & [...#rules]])

		// GitHub ID for the ruleset.
		ruleset_id?: number

		// Possible values are `branch`, `push` and `tag`.
		target!: string
	})

	#bypass_actors: close({
		// The ID of the actor that can bypass a ruleset. When
		// `actor_type` is `OrganizationAdmin`, this should be set to
		// `1`. Some resources such as DeployKey do not have an ID and
		// this should be omitted.
		actor_id?: number

		// The type of actor that can bypass a ruleset. See
		// https://docs.github.com/en/rest/repos/rules for more
		// information.
		actor_type!: string

		// When the specified actor can bypass the ruleset. pull_request
		// means that an actor can only bypass rules on pull requests.
		// Can be one of: `always`, `pull_request`, `exempt`.
		bypass_mode!: string
	})

	#conditions: close({
		ref_name!: matchN(1, [_#defs."/$defs/conditions/$defs/ref_name", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/conditions/$defs/ref_name"]])
	})

	#rules: close({
		// Only allow users with bypass permission to create matching
		// refs.
		creation?: bool
		branch_name_pattern?: matchN(1, [_#defs."/$defs/rules/$defs/branch_name_pattern", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/branch_name_pattern"]])

		// Only allow users with bypass permissions to delete matching
		// refs.
		deletion?: bool

		// Prevent users with push access from force pushing to branches.
		non_fast_forward?: bool

		// Prevent merge commits from being pushed to matching branches.
		required_linear_history?: bool

		// Commits pushed to matching branches must have verified
		// signatures.
		required_signatures?: bool
		commit_author_email_pattern?: matchN(1, [_#defs."/$defs/rules/$defs/commit_author_email_pattern", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/commit_author_email_pattern"]])
		commit_message_pattern?: matchN(1, [_#defs."/$defs/rules/$defs/commit_message_pattern", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/commit_message_pattern"]])
		committer_email_pattern?: matchN(1, [_#defs."/$defs/rules/$defs/committer_email_pattern", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/committer_email_pattern"]])
		file_extension_restriction?: matchN(1, [_#defs."/$defs/rules/$defs/file_extension_restriction", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/file_extension_restriction"]])
		file_path_restriction?: matchN(1, [_#defs."/$defs/rules/$defs/file_path_restriction", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/file_path_restriction"]])
		max_file_path_length?: matchN(1, [_#defs."/$defs/rules/$defs/max_file_path_length", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/max_file_path_length"]])
		max_file_size?: matchN(1, [_#defs."/$defs/rules/$defs/max_file_size", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/max_file_size"]])
		merge_queue?: matchN(1, [_#defs."/$defs/rules/$defs/merge_queue", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/merge_queue"]])
		pull_request?: matchN(1, [_#defs."/$defs/rules/$defs/pull_request", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/pull_request"]])
		required_code_scanning?: matchN(1, [_#defs."/$defs/rules/$defs/required_code_scanning", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/required_code_scanning"]])

		// Only allow users with bypass permission to update matching
		// refs.
		update?: bool
		required_deployments?: matchN(1, [_#defs."/$defs/rules/$defs/required_deployments", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/required_deployments"]])
		required_status_checks?: matchN(1, [_#defs."/$defs/rules/$defs/required_status_checks", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/required_status_checks"]])
		tag_name_pattern?: matchN(1, [_#defs."/$defs/rules/$defs/tag_name_pattern", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/tag_name_pattern"]])

		// Branch can pull changes from its upstream repository. This is
		// only applicable to forked repositories. Requires `update` to
		// be set to `true`.
		update_allows_fetch_and_merge?: bool
	})

	_#defs: "/$defs/conditions/$defs/ref_name": close({
		// Array of ref names or patterns to exclude. The condition will
		// not pass if any of these patterns match.
		exclude!: [...string]

		// Array of ref names or patterns to include. One of these
		// patterns must match for the condition to pass. Also accepts
		// `~DEFAULT_BRANCH` to include the default branch or `~ALL` to
		// include all branches.
		include!: [...string]
	})

	_#defs: "/$defs/rules/$defs/branch_name_pattern": close({
		// How this rule will appear to users.
		name?: string

		// If true, the rule will fail if the pattern matches.
		negate?: bool

		// The operator to use for matching. Can be one of: `starts_with`,
		// `ends_with`, `contains`, `regex`.
		operator!: string

		// The pattern to match with.
		pattern!: string
	})

	_#defs: "/$defs/rules/$defs/commit_author_email_pattern": close({
		// How this rule will appear to users.
		name?: string

		// If true, the rule will fail if the pattern matches.
		negate?: bool

		// The operator to use for matching. Can be one of: `starts_with`,
		// `ends_with`, `contains`, `regex`.
		operator!: string

		// The pattern to match with.
		pattern!: string
	})

	_#defs: "/$defs/rules/$defs/commit_message_pattern": close({
		// How this rule will appear to users.
		name?: string

		// If true, the rule will fail if the pattern matches.
		negate?: bool

		// The operator to use for matching. Can be one of: `starts_with`,
		// `ends_with`, `contains`, `regex`.
		operator!: string

		// The pattern to match with.
		pattern!: string
	})

	_#defs: "/$defs/rules/$defs/committer_email_pattern": close({
		// How this rule will appear to users.
		name?: string

		// If true, the rule will fail if the pattern matches.
		negate?: bool

		// The operator to use for matching. Can be one of: `starts_with`,
		// `ends_with`, `contains`, `regex`.
		operator!: string

		// The pattern to match with.
		pattern!: string
	})

	_#defs: "/$defs/rules/$defs/file_extension_restriction": close({
		// A list of file extensions.
		restricted_file_extensions!: [...string]
	})

	_#defs: "/$defs/rules/$defs/file_path_restriction": close({
		// The file paths that are restricted from being pushed to the
		// commit graph.
		restricted_file_paths!: [...string]
	})

	_#defs: "/$defs/rules/$defs/max_file_path_length": close({
		// The maximum allowed length of a file path.
		max_file_path_length!: number
	})

	_#defs: "/$defs/rules/$defs/max_file_size": close({
		// The maximum allowed size of a file in bytes.
		max_file_size!: number
	})

	_#defs: "/$defs/rules/$defs/merge_queue": close({
		// Maximum time for a required status check to report a
		// conclusion. After this much time has elapsed, checks that have
		// not reported a conclusion will be assumed to have failed.
		// Defaults to `60`.
		check_response_timeout_minutes?: number

		// When set to ALLGREEN, the merge commit created by merge queue
		// for each PR in the group must pass all required checks to
		// merge. When set to HEADGREEN, only the commit at the head of
		// the merge group, i.e. the commit containing changes from all
		// of the PRs in the group, must pass its required checks to
		// merge. Can be one of: ALLGREEN, HEADGREEN. Defaults to
		// `ALLGREEN`.
		grouping_strategy?: string

		// Limit the number of queued pull requests requesting checks and
		// workflow runs at the same time. Defaults to `5`.
		max_entries_to_build?: number

		// The maximum number of PRs that will be merged together in a
		// group. Defaults to `5`.
		max_entries_to_merge?: number

		// Method to use when merging changes from queued pull requests.
		// Can be one of: MERGE, SQUASH, REBASE. Defaults to `MERGE`.
		merge_method?: string

		// The minimum number of PRs that will be merged together in a
		// group. Defaults to `1`.
		min_entries_to_merge?: number

		// The time merge queue should wait after the first PR is added to
		// the queue for the minimum group size to be met. After this
		// time has elapsed, the minimum group size will be ignored and a
		// smaller group will be merged. Defaults to `5`.
		min_entries_to_merge_wait_minutes?: number
	})

	_#defs: "/$defs/rules/$defs/pull_request": close({
		// New, reviewable commits pushed will dismiss previous pull
		// request review approvals. Defaults to `false`.
		dismiss_stale_reviews_on_push?: bool

		// Require an approving review in pull requests that modify files
		// that have a designated code owner. Defaults to `false`.
		require_code_owner_review?: bool

		// Whether the most recent reviewable push must be approved by
		// someone other than the person who pushed it. Defaults to
		// `false`.
		require_last_push_approval?: bool

		// The number of approving reviews that are required before a pull
		// request can be merged. Defaults to `0`.
		required_approving_review_count?: number

		// All conversations on code must be resolved before a pull
		// request can be merged. Defaults to `false`.
		required_review_thread_resolution?: bool
	})

	_#defs: "/$defs/rules/$defs/required_code_scanning": close({
		required_code_scanning_tool!: matchN(1, [_#defs."/$defs/rules/$defs/required_code_scanning/$defs/required_code_scanning_tool", [_, ...] & [..._#defs."/$defs/rules/$defs/required_code_scanning/$defs/required_code_scanning_tool"]])
	})

	_#defs: "/$defs/rules/$defs/required_code_scanning/$defs/required_code_scanning_tool": close({
		// The severity level at which code scanning results that raise
		// alerts block a reference update. Can be one of: `none`,
		// `errors`, `errors_and_warnings`, `all`.
		alerts_threshold!: string

		// The severity level at which code scanning results that raise
		// security alerts block a reference update. Can be one of:
		// `none`, `critical`, `high_or_higher`, `medium_or_higher`,
		// `all`.
		security_alerts_threshold!: string

		// The name of a code scanning tool
		tool!: string
	})

	_#defs: "/$defs/rules/$defs/required_deployments": close({
		// The environments that must be successfully deployed to before
		// branches can be merged.
		required_deployment_environments!: [...string]
	})

	_#defs: "/$defs/rules/$defs/required_status_checks": close({
		required_check!: matchN(1, [_#defs."/$defs/rules/$defs/required_status_checks/$defs/required_check", [_, ...] & [..._#defs."/$defs/rules/$defs/required_status_checks/$defs/required_check"]])

		// Allow repositories and branches to be created if a check would
		// otherwise prohibit it.
		do_not_enforce_on_create?: bool

		// Whether pull requests targeting a matching branch must be
		// tested with the latest code. This setting will not take effect
		// unless at least one status check is enabled. Defaults to
		// `false`.
		strict_required_status_checks_policy?: bool
	})

	_#defs: "/$defs/rules/$defs/required_status_checks/$defs/required_check": close({
		// The status check context name that must be present on the
		// commit.
		context!: string

		// The optional integration ID that this status check must
		// originate from.
		integration_id?: number
	})

	_#defs: "/$defs/rules/$defs/tag_name_pattern": close({
		// How this rule will appear to users.
		name?: string

		// If true, the rule will fail if the pattern matches.
		negate?: bool

		// The operator to use for matching. Can be one of: `starts_with`,
		// `ends_with`, `contains`, `regex`.
		operator!: string

		// The pattern to match with.
		pattern!: string
	})
}
