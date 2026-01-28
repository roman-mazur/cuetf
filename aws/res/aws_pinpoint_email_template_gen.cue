package res

#aws_pinpoint_email_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_pinpoint_email_template")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		template_name!: string
		email_template?: matchN(1, [#email_template, [...#email_template]])
	})

	#email_template: close({
		header?: matchN(1, [_#defs."/$defs/email_template/$defs/header", [..._#defs."/$defs/email_template/$defs/header"]])
		default_substitutions?: string
		description?:           string
		html_part?:             string
		recommender_id?:        string
		subject?:               string
		text_part?:             string
	})

	_#defs: "/$defs/email_template/$defs/header": close({
		name?:  string
		value?: string
	})
}
