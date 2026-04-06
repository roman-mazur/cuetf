package data

#scaleway_interlink_partners: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_interlink_partners")
	close({
		id?: string

		// List of partners
		partners?: [...close({
			contact_email?: string
			created_at?:    string
			id?:            string
			logo_url?:      string
			name?:          string
			portal_url?:    string
			updated_at?:    string
		})]

		// Filter for partners present in one of these PoPs
		pop_ids?: [...string]

		// The region you want to attach the resource to
		region?: string
	})
}
