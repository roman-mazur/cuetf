package res

#aws_sagemaker_image_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_image_version")
	arn?:             string
	base_image!:      string
	container_image?: string
	id?:              string
	image_arn?:       string
	image_name!:      string
	version?:         number
}
