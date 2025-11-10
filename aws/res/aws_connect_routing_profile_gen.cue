package res

import "list"

#aws_connect_routing_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_routing_profile")
	close({
		arn?:                       string
		default_outbound_queue_id!: string
		description!:               string
		id?:                        string
		instance_id!:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		media_concurrencies!: matchN(1, [#media_concurrencies, [_, ...] & [...#media_concurrencies]])
		name!: string
		queue_configs?: matchN(1, [#queue_configs, [...#queue_configs]])
		routing_profile_id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#media_concurrencies: close({
		cross_channel_behavior?: matchN(1, [_#defs."/$defs/media_concurrencies/$defs/cross_channel_behavior", list.MaxItems(1) & [..._#defs."/$defs/media_concurrencies/$defs/cross_channel_behavior"]])
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

	_#defs: "/$defs/media_concurrencies/$defs/cross_channel_behavior": close({
		behavior_type!: string
	})
}
