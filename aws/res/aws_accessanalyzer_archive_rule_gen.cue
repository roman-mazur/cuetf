package res

#aws_accessanalyzer_archive_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_accessanalyzer_archive_rule")
	close({
		filter?: matchN(1, [#filter, [_, ...] & [...#filter]])
		analyzer_name!: string
		id?:            string
		region?:        string
		rule_name!:     string
	})

	#filter: close({
		contains?: [...string]
		criteria!: string
		eq?: [...string]
		exists?: string
		neq?: [...string]
	})
}
