package data

#aws_acmpca_certificate_authority: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_acmpca_certificate_authority")
	close({
		arn!:                           string
		certificate?:                   string
		certificate_chain?:             string
		certificate_signing_request?:   string
		id?:                            string
		key_storage_security_standard?: string
		not_after?:                     string
		not_before?:                    string
		region?:                        string
		revocation_configuration?: [...close({
			crl_configuration?: [...close({
				custom_cname?:       string
				enabled?:            bool
				expiration_in_days?: number
				s3_bucket_name?:     string
				s3_object_acl?:      string
			})]
			ocsp_configuration?: [...close({
				enabled?:           bool
				ocsp_custom_cname?: string
			})]
		})]
		serial?: string
		status?: string
		tags?: [string]: string
		type?:       string
		usage_mode?: string
	})
}
