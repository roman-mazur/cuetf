package res

import "list"

#github_repository_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_environment")
	can_admins_bypass?:   bool
	environment!:         string
	id?:                  string
	prevent_self_review?: bool
	repository!:          string
	wait_timer?:          number
	deployment_branch_policy?: #deployment_branch_policy | list.MaxItems(1) & [...#deployment_branch_policy]
	reviewers?: #reviewers | list.MaxItems(6) & [...#reviewers]

	#deployment_branch_policy: {
		custom_branch_policies!: bool
		protected_branches!:     bool
	}

	#reviewers: {
		teams?: [...number]
		users?: [...number]
	}
}
