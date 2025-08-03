package res

#aws_medialive_input_security_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_medialive_input_security_group")
	close({
		arn?:      string
		id?:       string
		timeouts?: #timeouts
		whitelist_rules?: matchN(1, [#whitelist_rules, [_, ...] & [...#whitelist_rules]])
		inputs?: [...string]
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#whitelist_rules: close({
		cidr!: string
	})
}
