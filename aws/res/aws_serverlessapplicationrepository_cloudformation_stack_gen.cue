package res

#aws_serverlessapplicationrepository_cloudformation_stack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_serverlessapplicationrepository_cloudformation_stack")
	close({
		application_id!: string
		capabilities!: [...string] | _#expression
		id?:   string
		name!: string
		outputs?: [string]: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		parameters?: [string]: string
		timeouts?:         #timeouts
		semantic_version?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}

// TODO: generalize this manual fix.
// All values can be also terraform expressions.
_#expression: =~#"\$\{.+\}"#
