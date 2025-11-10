package res

import "list"

#aws_rbin_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rbin_rule")
	close({
		arn?:           string
		description?:   string
		id?:            string
		lock_end_time?: string
		lock_state?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		resource_type!: string
		exclude_resource_tags?: matchN(1, [#exclude_resource_tags, list.MaxItems(5) & [...#exclude_resource_tags]])
		status?: string
		lock_configuration?: matchN(1, [#lock_configuration, list.MaxItems(1) & [...#lock_configuration]])
		tags?: [string]: string
		resource_tags?: matchN(1, [#resource_tags, list.MaxItems(50) & [...#resource_tags]])
		retention_period!: matchN(1, [#retention_period, list.MaxItems(1) & [_, ...] & [...#retention_period]])
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#exclude_resource_tags: close({
		resource_tag_key!:   string
		resource_tag_value?: string
	})

	#lock_configuration: close({
		unlock_delay!: matchN(1, [_#defs."/$defs/lock_configuration/$defs/unlock_delay", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/lock_configuration/$defs/unlock_delay"]])
	})

	#resource_tags: close({
		resource_tag_key!:   string
		resource_tag_value?: string
	})

	#retention_period: close({
		retention_period_unit!:  string
		retention_period_value!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/lock_configuration/$defs/unlock_delay": close({
		unlock_delay_unit!:  string
		unlock_delay_value!: number
	})
}
