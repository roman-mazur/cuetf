package res

#aws_ssoadmin_permission_set_inline_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_permission_set_inline_policy")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		inline_policy!:      string
		instance_arn!:       string
		permission_set_arn!: string
		timeouts?:           #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
