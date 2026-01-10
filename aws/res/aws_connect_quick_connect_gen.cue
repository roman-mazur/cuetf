package res

import "list"

#aws_connect_quick_connect: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_connect_quick_connect")
	close({
		arn?:         string
		description?: string
		id?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		instance_id!:      string
		name!:             string
		quick_connect_id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		quick_connect_config!: matchN(1, [#quick_connect_config, list.MaxItems(1) & [_, ...] & [...#quick_connect_config]])
	})

	#quick_connect_config: close({
		phone_config?: matchN(1, [_#defs."/$defs/quick_connect_config/$defs/phone_config", [..._#defs."/$defs/quick_connect_config/$defs/phone_config"]])
		queue_config?: matchN(1, [_#defs."/$defs/quick_connect_config/$defs/queue_config", [..._#defs."/$defs/quick_connect_config/$defs/queue_config"]])
		user_config?: matchN(1, [_#defs."/$defs/quick_connect_config/$defs/user_config", [..._#defs."/$defs/quick_connect_config/$defs/user_config"]])
		quick_connect_type!: string
	})

	_#defs: "/$defs/quick_connect_config/$defs/phone_config": close({
		phone_number!: string
	})

	_#defs: "/$defs/quick_connect_config/$defs/queue_config": close({
		contact_flow_id!: string
		queue_id!:        string
	})

	_#defs: "/$defs/quick_connect_config/$defs/user_config": close({
		contact_flow_id!: string
		user_id!:         string
	})
}
