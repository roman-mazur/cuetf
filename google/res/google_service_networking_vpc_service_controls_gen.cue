package res

#google_service_networking_vpc_service_controls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_service_networking_vpc_service_controls")
	close({
		// Desired VPC Service Controls state service producer VPC
		// network, as
		// described at the top of this page.
		enabled!: bool

		// The network that the consumer is using to connect with
		// services.
		network!: string
		id?:      string

		// The id of the Google Cloud project containing the consumer
		// network.
		project?:  string
		timeouts?: #timeouts

		// The service that is managing peering connectivity for a service
		// producer's organization. For Google services that support this
		// functionality, this value is
		// 'servicenetworking.googleapis.com'.
		service!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
