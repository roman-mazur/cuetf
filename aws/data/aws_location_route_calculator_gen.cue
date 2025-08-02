package data

#aws_location_route_calculator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_location_route_calculator")
	close({
		calculator_arn?:  string
		calculator_name!: string
		create_time?:     string
		data_source?:     string
		description?:     string
		id?:              string
		region?:          string
		tags?: [string]: string
		update_time?: string
	})
}
