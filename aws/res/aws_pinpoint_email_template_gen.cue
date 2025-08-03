package res

#aws_pinpoint_email_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_pinpoint_email_template")
	close({
		arn?: string
		email_template?: matchN(1, [#email_template, [...#email_template]])
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		template_name!: string
	})

	#email_template: close({
		default_substitutions?: string
		header?: matchN(1, [_#defs."/$defs/email_template/$defs/header", [..._#defs."/$defs/email_template/$defs/header"]])
		description?:    string
		html_part?:      string
		recommender_id?: string
		subject?:        string
		text_part?:      string
	})

	_#defs: "/$defs/email_template/$defs/header": close({
		name?:  string
		value?: string
	})
}
