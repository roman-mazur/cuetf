package data

#github_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_user")
	avatar_url?: string
	bio?:        string
	blog?:       string
	company?:    string
	created_at?: string
	email?:      string
	followers?:  number
	following?:  number
	gpg_keys?: [...string]
	gravatar_id?:  string
	id?:           string
	location?:     string
	login?:        string
	name?:         string
	node_id?:      string
	public_gists?: number
	public_repos?: number
	site_admin?:   bool
	ssh_keys?: [...string]
	suspended_at?: string
	updated_at?:   string
	username!:     string
}
