package res

#aws_iam_signing_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iam_signing_certificate")
	close({
		certificate_body!: string
		certificate_id?:   string
		id?:               string
		status?:           string
		user_name!:        string
	})
}
