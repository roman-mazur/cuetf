package data

#aws_dx_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_location")
	available_macsec_port_speeds?: [...string]
	available_port_speeds?: [...string]
	available_providers?: [...string]
	id?:            string
	location_code!: string
	location_name?: string
}
