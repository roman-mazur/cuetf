package res

import "list"

#aws_amplify_domain_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_amplify_domain_association")
	close({
		certificate_settings?: matchN(1, [#certificate_settings, list.MaxItems(1) & [...#certificate_settings]])
		app_id!:                              string
		arn?:                                 string
		certificate_verification_dns_record?: string
		domain_name!:                         string
		enable_auto_sub_domain?:              bool
		id?:                                  string
		region?:                              string
		wait_for_verification?:               bool
		sub_domain?: matchN(1, [#sub_domain, [_, ...] & [...#sub_domain]])
	})

	#certificate_settings: close({
		certificate_verification_dns_record?: string
		custom_certificate_arn?:              string
		type!:                                string
	})

	#sub_domain: close({
		branch_name!: string
		dns_record?:  string
		prefix!:      string
		verified?:    bool
	})
}
