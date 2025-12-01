package data

#aws_serverlessapplicationrepository_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_serverlessapplicationrepository_application")
	close({
		application_id!: string
		id?:             string
		name?:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		required_capabilities?: [...string]
		semantic_version?: string
		source_code_url?:  string
		template_url?:     string
	})
}
