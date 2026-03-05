package res

#scaleway_mnq_nats_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mnq_nats_account")
	close({
		// The endpoint for interact with Nats
		endpoint?: string
		id?:       string

		// The nats account name
		name?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string
	})
}
