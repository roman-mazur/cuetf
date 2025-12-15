package res

import "list"

#aws_oam_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_oam_link")
	close({
		arn?:            string
		id?:             string
		label?:          string
		label_template!: string
		link_configuration?: matchN(1, [#link_configuration, list.MaxItems(1) & [...#link_configuration]])
		link_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		resource_types!: [...string]
		sink_arn?:        string
		sink_identifier!: string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#link_configuration: close({
		log_group_configuration?: matchN(1, [_#defs."/$defs/link_configuration/$defs/log_group_configuration", list.MaxItems(1) & [..._#defs."/$defs/link_configuration/$defs/log_group_configuration"]])
		metric_configuration?: matchN(1, [_#defs."/$defs/link_configuration/$defs/metric_configuration", list.MaxItems(1) & [..._#defs."/$defs/link_configuration/$defs/metric_configuration"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/link_configuration/$defs/log_group_configuration": close({
		filter!: string
	})

	_#defs: "/$defs/link_configuration/$defs/metric_configuration": close({
		filter!: string
	})
}
