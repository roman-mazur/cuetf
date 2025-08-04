package res

#elasticstack_kibana_synthetics_private_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_synthetics_private_location")
	close({
		// The ID of the agent policy associated with the private
		// location. To create a private location for synthetics monitor
		// you need to create an agent policy in fleet and use its
		// agentPolicyId
		agent_policy_id!: string

		// Geographic coordinates (WGS84) for the location
		geo?: close({
			// The latitude of the location.
			lat!: number

			// The longitude of the location.
			lon!: number
		})

		// Generated id for the private location. For monitor setup please
		// use private location label.
		id?: string

		// A label for the private location, used as unique identifier
		label!: string

		// An array of tags to categorize the private location.
		tags?: [...string]
	})
}
