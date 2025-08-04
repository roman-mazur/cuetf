package res

import "list"

#github_team_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_team_settings")
	close({
		review_request_delegation?: matchN(1, [#review_request_delegation, list.MaxItems(1) & [...#review_request_delegation]])
		id?:        string
		team_id!:   string
		team_slug?: string
		team_uid?:  string
	})

	#review_request_delegation: close({
		algorithm?:    string
		member_count?: number
		notify?:       bool
	})
}
