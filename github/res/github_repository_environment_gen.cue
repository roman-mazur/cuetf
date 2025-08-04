package res

import "list"

#github_repository_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_environment")
	close({
		deployment_branch_policy?: matchN(1, [#deployment_branch_policy, list.MaxItems(1) & [...#deployment_branch_policy]])
		can_admins_bypass?:   bool
		environment!:         string
		id?:                  string
		prevent_self_review?: bool
		repository!:          string
		wait_timer?:          number
		reviewers?: matchN(1, [#reviewers, list.MaxItems(6) & [...#reviewers]])
	})

	#deployment_branch_policy: close({
		custom_branch_policies!: bool
		protected_branches!:     bool
	})

	#reviewers: close({
		teams?: [...number]
		users?: [...number]
	})
}
