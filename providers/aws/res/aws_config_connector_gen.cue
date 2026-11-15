package res

aws_config_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_config_connector")
	close({
		connector_configuration?: matchN(1, [#connector_configuration, [...#connector_configuration]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#connector_configuration: close({
		azure?: matchN(1, [_#defs."/$defs/connector_configuration/$defs/azure", [..._#defs."/$defs/connector_configuration/$defs/azure"]])
	})

	_#defs: "/$defs/connector_configuration/$defs/azure": close({
		client_identifier!: string
		tenant_identifier!: string
	})
}
