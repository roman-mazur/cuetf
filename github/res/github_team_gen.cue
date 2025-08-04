package res

#github_team: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_team")
	close({
		create_default_maintainer?: bool
		description?:               string
		etag?:                      string
		id?:                        string
		ldap_dn?:                   string
		members_count?:             number
		name!:                      string
		node_id?:                   string
		parent_team_id?:            string
		parent_team_read_id?:       string
		parent_team_read_slug?:     string
		privacy?:                   string
		slug?:                      string
	})
}
