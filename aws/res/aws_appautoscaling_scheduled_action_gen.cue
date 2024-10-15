package res

import "list"

#aws_appautoscaling_scheduled_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appautoscaling_scheduled_action")
	arn?:                string
	end_time?:           string
	id?:                 string
	name!:               string
	resource_id!:        string
	scalable_dimension!: string
	schedule!:           string
	service_namespace!:  string
	start_time?:         string
	timezone?:           string
	scalable_target_action?: #scalable_target_action | list.MaxItems(1) & [_, ...] & [...#scalable_target_action]

	#scalable_target_action: {
		max_capacity?: string
		min_capacity?: string
	}
}
