package res

#aws_sagemaker_image_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_image_version")
	close({
		aliases?: [...string]
		arn?:             string
		base_image!:      string
		container_image?: string
		horovod?:         bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		id?:               string
		image_arn?:        string
		image_name!:       string
		job_type?:         string
		ml_framework?:     string
		processor?:        string
		programming_lang?: string
		release_notes?:    string
		vendor_guidance?:  string
		version?:          number
	})
}
