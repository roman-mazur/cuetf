package res

#aws_ssoadmin_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_application")
	close({
		application_account?: string
		portal_options?: matchN(1, [#portal_options, [...#portal_options]])
		application_provider_arn!: string
		arn?:                      string
		client_token?:             string
		description?:              string
		instance_arn!:             string
		name!:                     string
		region?:                   string
		status?:                   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#portal_options: close({
		visibility?: string
		sign_in_options?: matchN(1, [_#defs."/$defs/portal_options/$defs/sign_in_options", [..._#defs."/$defs/portal_options/$defs/sign_in_options"]])
	})

	_#defs: "/$defs/portal_options/$defs/sign_in_options": close({
		application_url?: string
		origin!:          string
	})
}
