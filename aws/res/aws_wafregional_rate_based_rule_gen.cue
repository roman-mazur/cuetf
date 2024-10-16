package res

#aws_wafregional_rate_based_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_rate_based_rule")
	arn?:         string
	id?:          string
	metric_name!: string
	name!:        string
	rate_key!:    string
	rate_limit!:  number
	tags?: [string]:     string
	tags_all?: [string]: string
	predicate?: #predicate | [...#predicate]

	#predicate: {
		data_id!: string
		negated!: bool
		type!:    string
	}
}
