package res

#aws_sfn_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sfn_alias")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		creation_date?: string
		description?:   string
		id?:            string
		name!:          string
		routing_configuration!: matchN(1, [#routing_configuration, [_, ...] & [...#routing_configuration]])
		timeouts?: #timeouts
	})

	#routing_configuration: close({
		state_machine_version_arn!: string
		weight!:                    number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
