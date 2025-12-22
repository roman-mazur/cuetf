package res

#aws_bedrockagentcore_code_interpreter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_code_interpreter")
	close({
		code_interpreter_arn?: string
		code_interpreter_id?:  string
		description?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		execution_role_arn?: string
		name!:               string
		tags?: [string]:     string
		tags_all?: [string]: string
		network_configuration?: matchN(1, [#network_configuration, [...#network_configuration]])
		timeouts?: #timeouts
	})

	#network_configuration: close({
		vpc_config?: matchN(1, [_#defs."/$defs/network_configuration/$defs/vpc_config", [..._#defs."/$defs/network_configuration/$defs/vpc_config"]])
		network_mode!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string
	})

	_#defs: "/$defs/network_configuration/$defs/vpc_config": close({
		security_groups!: [...string]
		subnets!: [...string]
	})
}
