package res

#aws_sesv2_email_identity_mail_from_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sesv2_email_identity_mail_from_attributes")
	behavior_on_mx_failure?: string
	email_identity!:         string
	id?:                     string
	mail_from_domain?:       string
}
