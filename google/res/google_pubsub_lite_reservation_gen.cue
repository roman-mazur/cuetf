package res

#google_pubsub_lite_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_pubsub_lite_reservation")
	close({
		id?: string

		// Name of the reservation.
		name!:    string
		project?: string

		// The region of the pubsub lite reservation.
		region?: string

		// The reserved throughput capacity. Every unit of throughput
		// capacity is
		// equivalent to 1 MiB/s of published messages or 2 MiB/s of
		// subscribed
		// messages.
		throughput_capacity!: number
		timeouts?:            #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
