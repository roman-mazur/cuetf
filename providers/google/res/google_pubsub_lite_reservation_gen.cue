package res

google_pubsub_lite_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_pubsub_lite_reservation")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// Name of the reservation.
		name!: string

		// The region of the pubsub lite reservation.
		region?:  string
		project?: string

		// The reserved throughput capacity. Every unit of throughput capacity is
		// equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed
		// messages.
		throughput_capacity!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
