package res

#github_team: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_team")
	close({
		// A description of the team.
		description?: string

		// The LDAP Distinguished Name of the group where membership will
		// be synchronized. Only available in GitHub Enterprise Server.
		ldap_dn?: string
		etag?:    string

		// The name of the team.
		name!: string
		id?:   string

		// The Node ID of the created team.
		node_id?: string

		// The notification setting for the team. Must be one of
		// 'notifications_enabled' or 'notifications_disabled'.
		notification_setting?: string

		// The ID or slug of the parent team, if this is a nested team.
		parent_team_id?: string
		members_count?:  number

		// The id of the parent team read in Github.
		parent_team_read_id?: string

		// The id of the parent team read in Github.
		parent_team_read_slug?: string

		// The level of privacy for the team. Must be one of 'secret' or
		// 'closed'.
		privacy?: string

		// The slug of the created team.
		slug?: string
	})
}
