package res

#aws_ssoadmin_instance_access_control_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_instance_access_control_attributes")
	close({
		id?: string
		attribute?: matchN(1, [#attribute, [_, ...] & [...#attribute]])
		instance_arn!:  string
		region?:        string
		status?:        string
		status_reason?: string
	})

	#attribute: close({
		key!: string
		value?: matchN(1, [_#defs."/$defs/attribute/$defs/value", [_, ...] & [..._#defs."/$defs/attribute/$defs/value"]])
	})

	_#defs: "/$defs/attribute/$defs/value": close({
		source!: [...string]
	})
}
