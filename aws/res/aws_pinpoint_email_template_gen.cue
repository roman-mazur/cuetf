package res

#aws_pinpoint_email_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_pinpoint_email_template")
	arn?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	template_name!: string
	email_template?: #email_template | [...#email_template]

	#email_template: {
		default_substitutions?: string
		description?:           string
		html_part?:             string
		recommender_id?:        string
		subject?:               string
		text_part?:             string
		header?: #email_template.#header | [...#email_template.#header]

		#header: {
			name?:  string
			value?: string
		}
	}
}
