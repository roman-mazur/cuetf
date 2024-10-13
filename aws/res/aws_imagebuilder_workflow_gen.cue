package res

#aws_imagebuilder_workflow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_imagebuilder_workflow")
	arn?:                string
	change_description?: string
	data?:               string
	date_created?:       string
	description?:        string
	id?:                 string
	kms_key_id?:         string
	name!:               string
	owner?:              string
	tags?: [string]: string
	tags_all?: [string]: string
	type!:    string
	uri?:     string
	version!: string
}
