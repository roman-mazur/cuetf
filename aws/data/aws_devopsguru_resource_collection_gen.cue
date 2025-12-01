package data

#aws_devopsguru_resource_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_devopsguru_resource_collection")
	close({
		cloudformation?: [...close({
			stack_names?: [...string]
		})]
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [...close({
			app_boundary_key?: string
			tag_values?: [...string]
		})]
		type!: string
	})
}
