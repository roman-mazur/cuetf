package res

import "list"

#aws_oam_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_oam_link")
	close({
		arn?:            string
		id?:             string
		label?:          string
		label_template!: string
		link_id?:        string
		region?:         string
		link_configuration?: matchN(1, [#link_configuration, list.MaxItems(1) & [...#link_configuration]])
		resource_types!: [...string]
		sink_arn?:        string
		timeouts?:        #timeouts
		sink_identifier!: string
		tags?: [string]:     string
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
