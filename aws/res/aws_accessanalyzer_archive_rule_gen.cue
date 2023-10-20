package res

#aws_accessanalyzer_archive_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_accessanalyzer_archive_rule")
	analyzer_name: string
	id?:           string
	rule_name:     string
	filter?:       #filter | [_, ...] & [...#filter]

	#filter: {
		contains?: [...string]
		criteria: string
		eq?: [...string]
		exists?: string
		neq?: [...string]
	}
}
