package res

#aws_controltower_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_controltower_control")
	close({
		arn?:                string
		control_identifier!: string
		id?:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		target_identifier!: string
		parameters?: matchN(1, [#parameters, [...#parameters]])
		timeouts?: #timeouts
	})

	#parameters: close({
		key!:   string
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
