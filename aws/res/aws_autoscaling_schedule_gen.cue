package res

#aws_autoscaling_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_autoscaling_schedule")
	arn?:                    string
	autoscaling_group_name!: string
	desired_capacity?:       number
	end_time?:               string
	id?:                     string
	max_size?:               number
	min_size?:               number
	recurrence?:             string
	scheduled_action_name!:  string
	start_time?:             string
	time_zone?:              string
}
