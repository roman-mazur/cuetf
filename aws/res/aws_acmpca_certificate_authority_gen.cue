package res

import "list"

#aws_acmpca_certificate_authority: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_acmpca_certificate_authority")
	arn?:                             string
	certificate?:                     string
	certificate_chain?:               string
	certificate_signing_request?:     string
	enabled?:                         bool
	id?:                              string
	key_storage_security_standard?:   string
	not_after?:                       string
	not_before?:                      string
	permanent_deletion_time_in_days?: number
	serial?:                          string
	tags?: [string]:     string
	tags_all?: [string]: string
	type?:       string
	usage_mode?: string
	certificate_authority_configuration?: #certificate_authority_configuration | list.MaxItems(1) & [_, ...] & [...#certificate_authority_configuration]
	revocation_configuration?: #revocation_configuration | list.MaxItems(1) & [...#revocation_configuration]
	timeouts?: #timeouts

	#certificate_authority_configuration: {
		key_algorithm!:     string
		signing_algorithm!: string
		subject?: #certificate_authority_configuration.#subject | list.MaxItems(1) & [_, ...] & [...#certificate_authority_configuration.#subject]

		#subject: {
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
		}
	}

	#revocation_configuration: {
		crl_configuration?: #revocation_configuration.#crl_configuration | list.MaxItems(1) & [...#revocation_configuration.#crl_configuration]
		ocsp_configuration?: #revocation_configuration.#ocsp_configuration | list.MaxItems(1) & [...#revocation_configuration.#ocsp_configuration]

		#crl_configuration: {
			custom_cname?:       string
			enabled?:            bool
			expiration_in_days?: number
			s3_bucket_name?:     string
			s3_object_acl?:      string
		}

		#ocsp_configuration: {
			enabled!:           bool
			ocsp_custom_cname?: string
		}
	}

	#timeouts: create?: string
}
