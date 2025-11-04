package res

import "list"

#google_certificate_manager_certificate_issuance_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_certificate_manager_certificate_issuance_config")
	close({
		// The creation timestamp of a CertificateIssuanceConfig.
		// Timestamp is in RFC3339 UTC "Zulu" format,
		// accurate to nanoseconds with up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// One or more paragraphs of text description of a
		// CertificateIssuanceConfig.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Key algorithm to use when generating the private key. Possible
		// values: ["RSA_2048", "ECDSA_P256"]
		key_algorithm!: string

		// 'Set of label tags associated with the
		// CertificateIssuanceConfig resource.
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Lifetime of issued certificates. A duration in seconds with up
		// to nine fractional digits, ending with 's'.
		// Example: "1814400s". Valid values are from 21 days (1814400s)
		// to 30 days (2592000s)
		lifetime!: string

		// The Certificate Manager location. If not specified, "global" is
		// used.
		location?: string

		// A user-defined name of the certificate issuance config.
		// CertificateIssuanceConfig names must be unique globally.
		name!: string
		certificate_authority_config!: matchN(1, [#certificate_authority_config, list.MaxItems(1) & [_, ...] & [...#certificate_authority_config]])
		timeouts?: #timeouts
		project?:  string

		// It specifies the percentage of elapsed time of the certificate
		// lifetime to wait before renewing the certificate.
		// Must be a number between 1-99, inclusive.
		// You must set the rotation window percentage in relation to the
		// certificate lifetime so that certificate renewal occurs at
		// least 7 days after
		// the certificate has been issued and at least 7 days before it
		// expires.
		rotation_window_percentage!: number

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The last update timestamp of a CertificateIssuanceConfig.
		// Timestamp is in RFC3339 UTC "Zulu" format,
		// accurate to nanoseconds with up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#certificate_authority_config: close({
		certificate_authority_service_config?: matchN(1, [_#defs."/$defs/certificate_authority_config/$defs/certificate_authority_service_config", list.MaxItems(1) & [..._#defs."/$defs/certificate_authority_config/$defs/certificate_authority_service_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/certificate_authority_config/$defs/certificate_authority_service_config": close({
		// A CA pool resource used to issue a certificate.
		// The CA pool string has a relative resource path following the
		// form
		// "projects/{project}/locations/{location}/caPools/{caPool}".
		ca_pool!: string
	})
}
