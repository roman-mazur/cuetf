package data

#aws_dx_locations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dx_locations")
	id?: string
	location_codes?: [...string]
}
