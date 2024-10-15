package res

import "list"

#aws_appautoscaling_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appautoscaling_target")
	arn?:                string
	id?:                 string
	max_capacity!:       number
	min_capacity!:       number
	resource_id!:        string
	role_arn?:           string
	scalable_dimension!: string
	service_namespace!:  string
	tags?: [string]:     string
	tags_all?: [string]: string
	suspended_state?: #suspended_state | list.MaxItems(1) & [...#suspended_state]

	#suspended_state: {
		dynamic_scaling_in_suspended?:  bool
		dynamic_scaling_out_suspended?: bool
		scheduled_scaling_suspended?:   bool
	}
}
