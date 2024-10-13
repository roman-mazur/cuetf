package data

#aws_imagebuilder_component: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_imagebuilder_component")
	arn!:                string
	change_description?: string
	data?:               string
	date_created?:       string
	description?:        string
	encrypted?:          bool
	id?:                 string
	kms_key_id?:         string
	name?:               string
	owner?:              string
	platform?:           string
	supported_os_versions?: [...string]
	tags?: [string]: string
	type?:    string
	version?: string
}
