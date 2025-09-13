package res

import "list"

#aws_acmpca_certificate_authority: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_acmpca_certificate_authority")
	close({
		arn?:                           string
		certificate?:                   string
		certificate_chain?:             string
		certificate_signing_request?:   string
		enabled?:                       bool
		id?:                            string
		key_storage_security_standard?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		not_after?:  string
		not_before?: string
		certificate_authority_configuration?: matchN(1, [#certificate_authority_configuration, list.MaxItems(1) & [_, ...] & [...#certificate_authority_configuration]])
		permanent_deletion_time_in_days?: number
		revocation_configuration?: matchN(1, [#revocation_configuration, list.MaxItems(1) & [...#revocation_configuration]])
		serial?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:       string
		usage_mode?: string
		timeouts?:   #timeouts
	})

	#certificate_authority_configuration: close({
		subject?: matchN(1, [_#defs."/$defs/certificate_authority_configuration/$defs/subject", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/certificate_authority_configuration/$defs/subject"]])
		key_algorithm!:     string
		signing_algorithm!: string
	})

	#revocation_configuration: close({
		crl_configuration?: matchN(1, [_#defs."/$defs/revocation_configuration/$defs/crl_configuration", list.MaxItems(1) & [..._#defs."/$defs/revocation_configuration/$defs/crl_configuration"]])
		ocsp_configuration?: matchN(1, [_#defs."/$defs/revocation_configuration/$defs/ocsp_configuration", list.MaxItems(1) & [..._#defs."/$defs/revocation_configuration/$defs/ocsp_configuration"]])
	})

	#timeouts: close({
		create?: string
	})

	_#defs: "/$defs/certificate_authority_configuration/$defs/subject": close({
		common_name?:                  string
		country?:                      string
		distinguished_name_qualifier?: string
		generation_qualifier?:         string
		given_name?:                   string
		initials?:                     string
		locality?:                     string
		organization?:                 string
		organizational_unit?:          string
		pseudonym?:                    string
		state?:                        string
		surname?:                      string
		title?:                        string
	})

	_#defs: "/$defs/revocation_configuration/$defs/crl_configuration": close({
		custom_cname?:       string
		enabled?:            bool
		expiration_in_days?: number
		s3_bucket_name?:     string
		s3_object_acl?:      string
	})

	_#defs: "/$defs/revocation_configuration/$defs/ocsp_configuration": close({
		enabled!:           bool
		ocsp_custom_cname?: string
	})
}
