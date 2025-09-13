package res

#google_apigee_nat_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_nat_address")
	close({
		// Flag that specifies whether the reserved NAT address should be
		// activate.
		activate?: bool

		// The Apigee instance associated with the Apigee environment,
		// in the format
		// 'organizations/{{org_name}}/instances/{{instance_name}}'.
		instance_id!: string
		id?:          string

		// The allocated NAT IP address.
		ip_address?: string

		// Resource ID of the NAT address.
		name!:     string
		timeouts?: #timeouts

		// State of the NAT IP address.
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
