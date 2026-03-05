package res

#scaleway_mnq_nats_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mnq_nats_credentials")
	close({
		// ID of the nats account
		account_id!: string

		// The credentials file
		file?: string
		id?:   string

		// The nats credentials name
		name?: string

		// The region you want to attach the resource to
		region?: string
	})
}
