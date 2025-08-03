package res

import "list"

#aws_sesv2_email_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sesv2_email_identity")
	close({
		arn?: string
		dkim_signing_attributes?: matchN(1, [#dkim_signing_attributes, list.MaxItems(1) & [...#dkim_signing_attributes]])
		configuration_set_name?: string
		email_identity!:         string
		id?:                     string
		identity_type?:          string
		region?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
		verified_for_sending_status?: bool
	})

	#dkim_signing_attributes: close({
		current_signing_key_length?:    string
		domain_signing_private_key?:    string
		domain_signing_selector?:       string
		last_key_generation_timestamp?: string
		next_signing_key_length?:       string
		signing_attributes_origin?:     string
		status?:                        string
		tokens?: [...string]
	})
}
