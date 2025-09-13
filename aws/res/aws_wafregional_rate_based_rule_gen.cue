package res

#aws_wafregional_rate_based_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_rate_based_rule")
	close({
		arn?:         string
		id?:          string
		metric_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		name!:       string
		rate_key!:   string
		rate_limit!: number
		tags?: [string]:     string
		tags_all?: [string]: string
		predicate?: matchN(1, [#predicate, [...#predicate]])
	})

	#predicate: close({
		data_id!: string
		negated!: bool
		type!:    string
	})
}
