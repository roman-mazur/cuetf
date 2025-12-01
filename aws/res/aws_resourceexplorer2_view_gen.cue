package res

#aws_resourceexplorer2_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_resourceexplorer2_view")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		arn?:          string
		default_view?: bool
		id?:           string
		name!:         string
		scope?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		filters?: matchN(1, [#filters, [...#filters]])
		included_property?: matchN(1, [#included_property, [...#included_property]])
	})

	#filters: close({
		filter_string!: string
	})

	#included_property: close({
		name!: string
	})
}
