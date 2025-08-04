package res

import "list"

#github_repository_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_environment")
	close({
		// Can Admins bypass deployment protections
		can_admins_bypass?: bool

		// The name of the environment.
		environment!: string
		id?:          string

		// Prevent users from approving workflows runs that they
		// triggered.
		prevent_self_review?: bool
		deployment_branch_policy?: matchN(1, [#deployment_branch_policy, list.MaxItems(1) & [...#deployment_branch_policy]])

		// The repository of the environment.
		repository!: string

		// Amount of time to delay a job after the job is initially
		// triggered.
		wait_timer?: number
		reviewers?: matchN(1, [#reviewers, list.MaxItems(6) & [...#reviewers]])
	})

	#deployment_branch_policy: close({
		// Whether only branches that match the specified name patterns
		// can deploy to this environment.
		custom_branch_policies!: bool

		// Whether only branches with branch protection rules can deploy
		// to this environment.
		protected_branches!: bool
	})

	#reviewers: close({
		// Up to 6 IDs for teams who may review jobs that reference the
		// environment. Reviewers must have at least read access to the
		// repository. Only one of the required reviewers needs to
		// approve the job for it to proceed.
		teams?: [...number]

		// Up to 6 IDs for users who may review jobs that reference the
		// environment. Reviewers must have at least read access to the
		// repository. Only one of the required reviewers needs to
		// approve the job for it to proceed.
		users?: [...number]
	})
}
