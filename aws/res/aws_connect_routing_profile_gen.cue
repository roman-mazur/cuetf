package res

#aws_connect_routing_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_routing_profile")
	close({
		arn?:                       string
		default_outbound_queue_id!: string
		description!:               string
		id?:                        string
		instance_id!:               string
		name!:                      string
		region?:                    string
		media_concurrencies?: matchN(1, [#media_concurrencies, [_, ...] & [...#media_concurrencies]])
		routing_profile_id?: string
		queue_configs?: matchN(1, [#queue_configs, [...#queue_configs]])
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#media_concurrencies: close({
		channel!:     string
		concurrency!: number
	})

	#queue_configs: close({
		channel!:    string
		delay!:      number
		priority!:   number
		queue_arn?:  string
		queue_id!:   string
		queue_name?: string
	})
}
