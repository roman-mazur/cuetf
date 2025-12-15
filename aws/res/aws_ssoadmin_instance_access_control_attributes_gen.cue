package res

#aws_ssoadmin_instance_access_control_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ssoadmin_instance_access_control_attributes")
	close({
		id?:           string
		instance_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		status?:        string
		status_reason?: string
		attribute!: matchN(1, [#attribute, [_, ...] & [...#attribute]])
	})

	#attribute: close({
		value!: matchN(1, [_#defs."/$defs/attribute/$defs/value", [_, ...] & [..._#defs."/$defs/attribute/$defs/value"]])
		key!: string
	})

	_#defs: "/$defs/attribute/$defs/value": close({
		source!: [...string]
	})
}
