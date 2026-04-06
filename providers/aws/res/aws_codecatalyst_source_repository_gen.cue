package res

#aws_codecatalyst_source_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_codecatalyst_source_repository")
	close({
		timeouts?:     #timeouts
		description?:  string
		id?:           string
		name!:         string
		project_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		space_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
