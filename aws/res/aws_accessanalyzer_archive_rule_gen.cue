package res

#aws_accessanalyzer_archive_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_accessanalyzer_archive_rule")
	close({
		analyzer_name!: string
		id?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		rule_name!: string
		filter?: matchN(1, [#filter, [_, ...] & [...#filter]])
	})

	#filter: close({
		contains?: [...string]
		criteria!: string
		eq?: [...string]
		exists?: string
		neq?: [...string]
	})
}
