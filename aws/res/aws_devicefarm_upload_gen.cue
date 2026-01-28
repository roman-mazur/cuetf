package res

#aws_devicefarm_upload: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_devicefarm_upload")
	close({
		arn?:          string
		category?:     string
		content_type?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		id?:          string
		metadata?:    string
		name!:        string
		project_arn!: string
		type!:        string
		url?:         string
	})
}
