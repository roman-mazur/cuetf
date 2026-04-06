package data

#scaleway_interlink_partner: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_interlink_partner")
	close({
		// Contact email address of the partner
		contact_email?: string

		// Creation date of the partner
		created_at?: string
		id?:         string

		// URL of the partner's logo
		logo_url?: string

		// The name of the partner to filter for
		name?: string

		// The ID of the partner
		partner_id?: string

		// URL of the partner's portal
		portal_url?: string

		// The region you want to attach the resource to
		region?: string

		// Last update date of the partner
		updated_at?: string
	})
}
