package res

#aws_waf_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_waf_rule")
	close({
		predicates?: matchN(1, [#predicates, [...#predicates]])
		arn?:         string
		id?:          string
		metric_name!: string
		name!:        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#predicates: close({
		data_id!: string
		negated!: bool
		type!:    string
	})
}
