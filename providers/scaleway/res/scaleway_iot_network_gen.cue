package res

#scaleway_iot_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iot_network")
	close({
		timeouts?: #timeouts

		// The date and time of the creation of the network
		created_at?: string

		// The endpoint to use when interacting with the network
		endpoint?: string

		// The ID of the hub on which this network will be created
		hub_id!: string
		id?:     string

		// The name of the network
		name!: string

		// The region you want to attach the resource to
		region?: string

		// The endpoint key to keep secret
		secret?: string

		// The prefix that will be prepended to all topics for this
		// Network
		topic_prefix?: string

		// The type of the network
		type!: string
	})

	#timeouts: close({
		default?: string
		delete?:  string
	})
}
