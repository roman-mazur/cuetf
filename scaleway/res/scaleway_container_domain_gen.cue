package res

#scaleway_container_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_container_domain")
	close({
		timeouts?: #timeouts

		// Container the domain will be bound to
		container_id!: string

		// Domain's hostname
		hostname!: string
		id?:       string

		// The region you want to attach the resource to
		region?: string

		// URL used to query the container
		url?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
	})
}
