package data

#aws_ecs_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecs_service")
	arn?:                 string
	cluster_arn!:         string
	desired_count?:       number
	id?:                  string
	launch_type?:         string
	scheduling_strategy?: string
	service_name!:        string
	tags?: [string]: string
	task_definition?: string
}
