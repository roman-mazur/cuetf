package res

#aws_resourceexplorer2_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_resourceexplorer2_view")
	close({
		arn?:          string
		default_view?: bool
		filters?: matchN(1, [#filters, [...#filters]])
		included_property?: matchN(1, [#included_property, [...#included_property]])
		id?:     string
		name!:   string
		region?: string
		scope?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#filters: close({
		filter_string!: string
	})

	#included_property: close({
		name!: string
	})
}
