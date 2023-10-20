package data

#aws_location_route_calculator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_location_route_calculator")
	calculator_arn?: string
	calculator_name: string
	create_time?:    string
	data_source?:    string
	description?:    string
	id?:             string
	tags?: [string]: string
	update_time?: string
}
