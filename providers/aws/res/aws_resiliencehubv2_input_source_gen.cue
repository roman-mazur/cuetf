package res

aws_resiliencehubv2_input_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_resiliencehubv2_input_source")
	close({
		resource_configuration?: matchN(1, [#resource_configuration, [...#resource_configuration]])
		input_source_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		service_arn!: string
	})

	#resource_configuration: close({
		eks?: matchN(1, [_#defs."/$defs/resource_configuration/$defs/eks", [..._#defs."/$defs/resource_configuration/$defs/eks"]])
		resource_tag?: matchN(1, [_#defs."/$defs/resource_configuration/$defs/resource_tag", [..._#defs."/$defs/resource_configuration/$defs/resource_tag"]])
		cfn_stack_arn?:      string
		design_file_s3_url?: string
		tf_state_file_url?:  string
	})

	_#defs: "/$defs/resource_configuration/$defs/eks": close({
		cluster_arn!: string
		namespaces!: [...string]
	})

	_#defs: "/$defs/resource_configuration/$defs/resource_tag": close({
		key!: string
		values!: [...string]
	})
}
