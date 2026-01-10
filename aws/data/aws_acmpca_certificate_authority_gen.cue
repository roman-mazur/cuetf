package data

#aws_acmpca_certificate_authority: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_acmpca_certificate_authority")
	close({
		arn!:                           string
		certificate?:                   string
		certificate_chain?:             string
		certificate_signing_request?:   string
		id?:                            string
		key_storage_security_standard?: string
		not_after?:                     string
		not_before?:                    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
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
