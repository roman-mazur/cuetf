package res

#aws_route53_key_signing_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_key_signing_key")
	close({
		digest_algorithm_mnemonic?:  string
		digest_algorithm_type?:      number
		digest_value?:               string
		dnskey_record?:              string
		ds_record?:                  string
		flag?:                       number
		hosted_zone_id!:             string
		id?:                         string
		timeouts?:                   #timeouts
		key_management_service_arn!: string
		key_tag?:                    number
		name!:                       string
		public_key?:                 string
		signing_algorithm_mnemonic?: string
		signing_algorithm_type?:     number
		status?:                     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
