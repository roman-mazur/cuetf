package res

import "list"

#aws_ssm_maintenance_window_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssm_maintenance_window_target")
	description?:       string
	id?:                string
	name?:              string
	owner_information?: string
	resource_type:      string
	window_id:          string
	targets?:           #targets | list.MaxItems(5) & [_, ...] & [...#targets]

	#targets: {
		key: string
		values: [...string]
	}
}
