package res

#aws_devicefarm_upload: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_devicefarm_upload")
	arn?:          string
	category?:     string
	content_type?: string
	id?:           string
	metadata?:     string
	name!:         string
	project_arn!:  string
	type!:         string
	url?:          string
}
