package data

#google_network_security_address_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_network_security_address_groups")
	close({
		address_groups?: [...close({
			capacity?: number
			items?: [...string]
			location?: string
			name?:     string
		})]
		id?:       string
		location!: string

		// The parent of the Address Group. Use
		// "organizations/{organization_id}" for organization-level
		// address groups or "projects/{project_id}" for project-level
		// address groups.
		parent?:  string
		project?: string
	})
}
