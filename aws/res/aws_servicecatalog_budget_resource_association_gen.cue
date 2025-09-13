package res

#aws_servicecatalog_budget_resource_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_budget_resource_association")
	close({
		budget_name!: string
		id?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		resource_id!: string
		timeouts?:    #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
