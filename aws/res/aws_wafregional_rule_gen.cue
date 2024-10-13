package res

#aws_wafregional_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_wafregional_rule")
	arn?:         string
	id?:          string
	metric_name!: string
	name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	predicate?: #predicate | [...#predicate]

	#predicate: {
		data_id!: string
		negated!: bool
		type!:    string
	}
}
