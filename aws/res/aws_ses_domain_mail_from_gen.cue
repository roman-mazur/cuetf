package res

#aws_ses_domain_mail_from: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ses_domain_mail_from")
	behavior_on_mx_failure?: string
	domain:                  string
	id?:                     string
	mail_from_domain:        string
}
