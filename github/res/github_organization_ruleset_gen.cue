package res

import "list"

#github_organization_ruleset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_ruleset")
	close({
		enforcement!: string
		bypass_actors?: matchN(1, [#bypass_actors, [...#bypass_actors]])
		etag?:       string
		id?:         string
		name!:       string
		node_id?:    string
		ruleset_id?: number
		target!:     string
		conditions?: matchN(1, [#conditions, list.MaxItems(1) & [...#conditions]])
		rules?: matchN(1, [#rules, list.MaxItems(1) & [_, ...] & [...#rules]])
	})

	#bypass_actors: close({
		actor_id!:    number
		actor_type!:  string
		bypass_mode!: string
	})

	#conditions: close({
		ref_name?: matchN(1, [_#defs."/$defs/conditions/$defs/ref_name", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/conditions/$defs/ref_name"]])
		repository_name?: matchN(1, [_#defs."/$defs/conditions/$defs/repository_name", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/repository_name"]])
		repository_id?: [...number]
	})

	#rules: close({
		creation?: bool
		branch_name_pattern?: matchN(1, [_#defs."/$defs/rules/$defs/branch_name_pattern", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/branch_name_pattern"]])
		deletion?:                bool
		non_fast_forward?:        bool
		required_linear_history?: bool
		required_signatures?:     bool
		commit_author_email_pattern?: matchN(1, [_#defs."/$defs/rules/$defs/commit_author_email_pattern", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/commit_author_email_pattern"]])
		update?: bool
		commit_message_pattern?: matchN(1, [_#defs."/$defs/rules/$defs/commit_message_pattern", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/commit_message_pattern"]])
		committer_email_pattern?: matchN(1, [_#defs."/$defs/rules/$defs/committer_email_pattern", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/committer_email_pattern"]])
		pull_request?: matchN(1, [_#defs."/$defs/rules/$defs/pull_request", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/pull_request"]])
		required_code_scanning?: matchN(1, [_#defs."/$defs/rules/$defs/required_code_scanning", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/required_code_scanning"]])
		required_status_checks?: matchN(1, [_#defs."/$defs/rules/$defs/required_status_checks", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/required_status_checks"]])
		required_workflows?: matchN(1, [_#defs."/$defs/rules/$defs/required_workflows", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/required_workflows"]])
		tag_name_pattern?: matchN(1, [_#defs."/$defs/rules/$defs/tag_name_pattern", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/tag_name_pattern"]])
	})

	_#defs: "/$defs/conditions/$defs/ref_name": close({
		exclude!: [...string]
		include!: [...string]
	})

	_#defs: "/$defs/conditions/$defs/repository_name": close({
		exclude!: [...string]
		include!: [...string]
		protected?: bool
	})

	_#defs: "/$defs/rules/$defs/branch_name_pattern": close({
		name?:     string
		negate?:   bool
		operator!: string
		pattern!:  string
	})

	_#defs: "/$defs/rules/$defs/commit_author_email_pattern": close({
		name?:     string
		negate?:   bool
		operator!: string
		pattern!:  string
	})

	_#defs: "/$defs/rules/$defs/commit_message_pattern": close({
		name?:     string
		negate?:   bool
		operator!: string
		pattern!:  string
	})

	_#defs: "/$defs/rules/$defs/committer_email_pattern": close({
		name?:     string
		negate?:   bool
		operator!: string
		pattern!:  string
	})

	_#defs: "/$defs/rules/$defs/pull_request": close({
		dismiss_stale_reviews_on_push?:     bool
		require_code_owner_review?:         bool
		require_last_push_approval?:        bool
		required_approving_review_count?:   number
		required_review_thread_resolution?: bool
	})

	_#defs: "/$defs/rules/$defs/required_code_scanning": close({
		required_code_scanning_tool?: matchN(1, [_#defs."/$defs/rules/$defs/required_code_scanning/$defs/required_code_scanning_tool", [_, ...] & [..._#defs."/$defs/rules/$defs/required_code_scanning/$defs/required_code_scanning_tool"]])
	})

	_#defs: "/$defs/rules/$defs/required_code_scanning/$defs/required_code_scanning_tool": close({
		alerts_threshold!:          string
		security_alerts_threshold!: string
		tool!:                      string
	})

	_#defs: "/$defs/rules/$defs/required_status_checks": close({
		required_check?: matchN(1, [_#defs."/$defs/rules/$defs/required_status_checks/$defs/required_check", [_, ...] & [..._#defs."/$defs/rules/$defs/required_status_checks/$defs/required_check"]])
		strict_required_status_checks_policy?: bool
	})

	_#defs: "/$defs/rules/$defs/required_status_checks/$defs/required_check": close({
		context!:        string
		integration_id?: number
	})

	_#defs: "/$defs/rules/$defs/required_workflows": close({
		required_workflow?: matchN(1, [_#defs."/$defs/rules/$defs/required_workflows/$defs/required_workflow", [_, ...] & [..._#defs."/$defs/rules/$defs/required_workflows/$defs/required_workflow"]])
	})

	_#defs: "/$defs/rules/$defs/required_workflows/$defs/required_workflow": close({
		path!:          string
		ref?:           string
		repository_id!: number
	})

	_#defs: "/$defs/rules/$defs/tag_name_pattern": close({
		name?:     string
		negate?:   bool
		operator!: string
		pattern!:  string
	})
}
