package res

#aws_amplify_domain_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_amplify_domain_association")
	app_id:                               string
	arn?:                                 string
	certificate_verification_dns_record?: string
	domain_name:                          string
	enable_auto_sub_domain?:              bool
	id?:                                  string
	wait_for_verification?:               bool
	sub_domain?:                          #sub_domain | [_, ...] & [...#sub_domain]

	#sub_domain: {
		branch_name: string
		dns_record?: string
		prefix:      string
		verified?:   bool
	}
}
