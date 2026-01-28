package res

#aws_athena_data_catalog: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_athena_data_catalog")
	close({
		arn?:         string
		description!: string
		id?:          string
		name!:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		parameters!: [string]: string
		tags?: [string]:       string
		tags_all?: [string]:   string
		type!: string
	})
}
