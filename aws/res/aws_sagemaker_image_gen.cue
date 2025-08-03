package res

#aws_sagemaker_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_image")
	close({
		arn?:          string
		description?:  string
		display_name?: string
		id?:           string
		image_name!:   string
		region?:       string
		role_arn!:     string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
