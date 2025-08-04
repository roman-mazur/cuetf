package res

import "list"

#aws_cloudwatch_event_bus: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_event_bus")
	close({
		arn?:               string
		description?:       string
		event_source_name?: string
		id?:                string
		dead_letter_config?: matchN(1, [#dead_letter_config, list.MaxItems(1) & [...#dead_letter_config]])
		kms_key_identifier?: string
		name!:               string
		region?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
	})

	#dead_letter_config: close({
		arn?: string
	})

	#log_config: close({
		include_detail?: string
		level?:          string
	})
}
