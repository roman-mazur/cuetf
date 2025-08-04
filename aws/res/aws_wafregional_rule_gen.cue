package res

#aws_wafregional_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_rule")
	close({
		predicate?: matchN(1, [#predicate, [...#predicate]])
		arn?:         string
		id?:          string
		metric_name!: string
		name!:        string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#predicate: close({
		data_id!: string
		negated!: bool
		type!:    string
	})
}
