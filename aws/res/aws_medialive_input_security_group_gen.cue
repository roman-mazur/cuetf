package res

#aws_medialive_input_security_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_medialive_input_security_group")
	arn?: string
	id?:  string
	inputs?: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?:        #timeouts
	whitelist_rules?: #whitelist_rules | [_, ...] & [...#whitelist_rules]

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#whitelist_rules: cidr: string
}
