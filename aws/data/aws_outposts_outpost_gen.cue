package data

#aws_outposts_outpost: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_outposts_outpost")
	arn?:                     string
	availability_zone?:       string
	availability_zone_id?:    string
	description?:             string
	id?:                      string
	lifecycle_status?:        string
	name?:                    string
	owner_id?:                string
	site_arn?:                string
	site_id?:                 string
	supported_hardware_type?: string
	tags?: [string]: string
}