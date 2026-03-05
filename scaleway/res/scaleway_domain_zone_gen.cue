package res

#scaleway_domain_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_domain_zone")
	close({
		// The domain where the DNS zone will be created.
		domain!: string

		// Message
		message?:  string
		timeouts?: #timeouts
		id?:       string

		// NameServer list for zone.
		ns?: [...string]

		// NameServer default list for zone.
		ns_default?: [...string]

		// NameServer master list for zone.
		ns_master?: [...string]

		// The project_id you want to attach the resource to
		project_id?: string

		// The domain zone status.
		status?: string

		// The subdomain of the DNS zone to create.
		subdomain!: string

		// The date and time of the last update of the DNS zone.
		updated_at?: string
	})

	#timeouts: close({
		default?: string
	})
}
