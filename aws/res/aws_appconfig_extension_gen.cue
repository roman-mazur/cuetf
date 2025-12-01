package res

#aws_appconfig_extension: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_appconfig_extension")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		arn?:         string
		description?: string
		id?:          string
		name!:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		version?: number
		action_point!: matchN(1, [#action_point, [_, ...] & [...#action_point]])
		parameter?: matchN(1, [#parameter, [...#parameter]])
	})

	#action_point: close({
		action!: matchN(1, [_#defs."/$defs/action_point/$defs/action", [_, ...] & [..._#defs."/$defs/action_point/$defs/action"]])
		point!: string
	})

	#parameter: close({
		description?: string
		name!:        string
		required?:    bool
	})

	_#defs: "/$defs/action_point/$defs/action": close({
		description?: string
		name!:        string
		role_arn?:    string
		uri!:         string
	})
}
