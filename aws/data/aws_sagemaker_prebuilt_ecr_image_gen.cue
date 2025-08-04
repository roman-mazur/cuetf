package data

#aws_sagemaker_prebuilt_ecr_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_prebuilt_ecr_image")
	close({
		dns_suffix?: string
		id?:         string
		image_tag?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		registry_id?:     string
		registry_path?:   string
		repository_name!: string
	})
}
