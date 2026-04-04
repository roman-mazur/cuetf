package res

#aws_securitylake_aws_log_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_securitylake_aws_log_source")
	close({
		source?: matchN(1, [#source, [...#source]])
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#source: close({
		accounts?: [...string]
		regions!: [...string]
		source_name!:    string
		source_version?: string
	})
}
