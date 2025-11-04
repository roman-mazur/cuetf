package res

import "list"

#google_apigee_keystores_aliases_self_signed_cert: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_keystores_aliases_self_signed_cert")
	close({
		// Alias for the key/certificate pair. Values must match the
		// regular expression [\w\s-.]{1,255}.
		// This must be provided for all formats except selfsignedcert;
		// self-signed certs may specify the alias in either
		// this parameter or the JSON body.
		alias!: string

		// Validity duration of certificate, in days. Accepts positive
		// non-zero value. Defaults to 365.
		cert_validity_in_days?: number

		// Chain of certificates under this alias.
		certs_info?: [...close({
			cert_info?: [...close({
				basic_constraints?: string
				expiry_date?:       string
				is_valid?:          string
				issuer?:            string
				public_key?:        string
				serial_number?:     string
				sig_alg_name?:      string
				subject?:           string
				subject_alternative_names?: [...string]
				valid_from?: string
				version?:    number
			})]
		})]

		// The Apigee environment name
		environment!: string
		id?:          string

		// Key size. Default and maximum value is 2048 bits.
		key_size?: string

		// The Apigee keystore name associated in an Apigee environment
		keystore!: string
		subject!: matchN(1, [#subject, list.MaxItems(1) & [_, ...] & [...#subject]])
		subject_alternative_dns_names?: matchN(1, [#subject_alternative_dns_names, list.MaxItems(1) & [...#subject_alternative_dns_names]])
		timeouts?: #timeouts

		// The Apigee Organization name associated with the Apigee
		// environment
		org_id!: string

		// Signature algorithm to generate private key. Valid values are
		// SHA512withRSA, SHA384withRSA, and SHA256withRSA
		sig_alg!: string

		// Optional.Type of Alias
		type?: string
	})

	#subject: close({
		// Common name of the organization. Maximum length is 64
		// characters.
		common_name?: string

		// Two-letter country code. Example, IN for India, US for United
		// States of America.
		country_code?: string

		// Email address. Max 255 characters.
		email?: string

		// City or town name. Maximum length is 128 characters.
		locality?: string

		// Organization name. Maximum length is 64 characters.
		org?: string

		// Organization team name. Maximum length is 64 characters.
		org_unit?: string

		// State or district name. Maximum length is 128 characters.
		state?: string
	})

	#subject_alternative_dns_names: close({
		// Subject Alternative Name
		subject_alternative_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
