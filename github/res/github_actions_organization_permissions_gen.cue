package res

import "list"

#github_actions_organization_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_actions_organization_permissions")
	close({
		// The permissions policy that controls the actions that are
		// allowed to run. Can be one of: 'all', 'local_only', or
		// 'selected'.
		allowed_actions?: string

		// The policy that controls the repositories in the organization
		// that are allowed to run GitHub Actions. Can be one of: 'all',
		// 'none', or 'selected'.
		enabled_repositories!: string

		// Whether pinning to a specific SHA is required for all actions
		// and reusable workflows in an organization.
		sha_pinning_required?: bool
		id?:                   string
		allowed_actions_config?: matchN(1, [#allowed_actions_config, list.MaxItems(1) & [...#allowed_actions_config]])
		enabled_repositories_config?: matchN(1, [#enabled_repositories_config, list.MaxItems(1) & [...#enabled_repositories_config]])
	})

	#allowed_actions_config: close({
		// Whether GitHub-owned actions are allowed in the organization.
		github_owned_allowed!: bool

		// Specifies a list of string-matching patterns to allow specific
		// action(s). Wildcards, tags, and SHAs are allowed. For example,
		// 'monalisa/octocat@', 'monalisa/octocat@v2', 'monalisa/'.
		patterns_allowed?: [...string]

		// Whether actions in GitHub Marketplace from verified creators
		// are allowed. Set to 'true' to allow all GitHub Marketplace
		// actions by verified creators.
		verified_allowed?: bool
	})

	#enabled_repositories_config: close({
		// List of repository IDs to enable for GitHub Actions.
		repository_ids!: [...number]
	})
}
