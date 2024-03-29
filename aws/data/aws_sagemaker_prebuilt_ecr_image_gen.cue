package data

#aws_sagemaker_prebuilt_ecr_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_prebuilt_ecr_image")
	dns_suffix?:     string
	id?:             string
	image_tag?:      string
	region?:         string
	registry_id?:    string
	registry_path?:  string
	repository_name: string
}
