package res

#aws_appautoscaling_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appautoscaling_target")
	arn?:               string
	id?:                string
	max_capacity:       number
	min_capacity:       number
	resource_id:        string
	role_arn?:          string
	scalable_dimension: string
	service_namespace:  string
	tags?: [string]: string
	tags_all?: [string]: string
}
