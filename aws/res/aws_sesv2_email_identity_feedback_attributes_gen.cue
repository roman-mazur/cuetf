package res

#aws_sesv2_email_identity_feedback_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sesv2_email_identity_feedback_attributes")
	email_forwarding_enabled?: bool
	email_identity!:           string
	id?:                       string
}
