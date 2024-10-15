package res

#aws_route53domains_delegation_signer_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53domains_delegation_signer_record")
	dnssec_key_id?: string
	domain_name!:   string
	id?:            string
	signing_attributes?: #signing_attributes | [...#signing_attributes]
	timeouts?: #timeouts

	#signing_attributes: {
		algorithm!:  number
		flags!:      number
		public_key!: string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
