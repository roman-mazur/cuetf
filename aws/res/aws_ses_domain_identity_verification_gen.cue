package res

#aws_ses_domain_identity_verification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_domain_identity_verification")
	close({
		arn?:      string
		domain!:   string
		id?:       string
		region?:   string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
	})
}
