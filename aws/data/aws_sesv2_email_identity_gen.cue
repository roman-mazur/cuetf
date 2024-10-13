package data

#aws_sesv2_email_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sesv2_email_identity")
	arn?:                    string
	configuration_set_name?: string
	dkim_signing_attributes?: [...{
		current_signing_key_length?:    string
		domain_signing_private_key?:    string
		domain_signing_selector?:       string
		last_key_generation_timestamp?: string
		next_signing_key_length?:       string
		signing_attributes_origin?:     string
		status?:                        string
		tokens?: [...string]
	}]
	email_identity!: string
	id?:             string
	identity_type?:  string
	tags?: [string]: string
	verified_for_sending_status?: bool
}
