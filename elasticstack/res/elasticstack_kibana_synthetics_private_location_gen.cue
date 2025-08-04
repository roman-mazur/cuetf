package res

#elasticstack_kibana_synthetics_private_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_synthetics_private_location")
	close({
		agent_policy_id!: string
		geo?: close({
			lat!: number
			lon!: number
		})
		id?:    string
		label!: string
		tags?: [...string]
	})
}
