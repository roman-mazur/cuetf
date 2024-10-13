package data

#github_collaborators: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_collaborators")
	affiliation?: string
	collaborator?: [...{
		events_url?:          string
		followers_url?:       string
		following_url?:       string
		gists_url?:           string
		html_url?:            string
		id?:                  number
		login?:               string
		organizations_url?:   string
		permission?:          string
		received_events_url?: string
		repos_url?:           string
		site_admin?:          bool
		starred_url?:         string
		subscriptions_url?:   string
		type?:                string
		url?:                 string
	}]
	id?:         string
	owner!:      string
	permission?: string
	repository!: string
}
