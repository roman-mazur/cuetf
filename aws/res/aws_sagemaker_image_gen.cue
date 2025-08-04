package res

#aws_sagemaker_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_image")
	close({
		arn?:          string
		description?:  string
		display_name?: string
		id?:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		image_name!: string
		role_arn!:   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
