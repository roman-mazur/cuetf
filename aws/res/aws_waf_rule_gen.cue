package res

#aws_waf_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_waf_rule")
	arn?:        string
	id?:         string
	metric_name: string
	name:        string
	tags?: [string]: string
	tags_all?: [string]: string
	predicates?: #predicates | [...#predicates]

	#predicates: {
		data_id: string
		negated: bool
		type:    string
	}
}
