package res

import "list"

#github_team_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_team_settings")
	close({
		// The GitHub team id or the GitHub team slug.
		team_id!: string

		// The slug of the Team within the Organization.
		team_slug?: string
		id?:        string

		// The unique ID of the Team on GitHub. Corresponds to the ID of
		// the 'github_team_settings' resource.
		team_uid?: string
		review_request_delegation?: matchN(1, [#review_request_delegation, list.MaxItems(1) & [...#review_request_delegation]])
	})

	#review_request_delegation: close({
		// The algorithm to use when assigning pull requests to team
		// members. Supported values are 'ROUND_ROBIN' and
		// 'LOAD_BALANCE'.
		algorithm?: string

		// The number of team members to assign to a pull request.
		member_count?: number

		// whether to notify the entire team when at least one member is
		// also assigned to the pull request.
		notify?: bool
	})
}
