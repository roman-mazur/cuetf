package res

import "list"

#google_privateca_ca_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_privateca_ca_pool")
	close({
		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Labels with user-defined metadata.
		//
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass":
		// "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Location of the CaPool. A full list of valid locations can be
		// found by
		// running 'gcloud privateca locations list'.
		location!: string

		// The name for this CaPool.
		name!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		issuance_policy?: matchN(1, [#issuance_policy, list.MaxItems(1) & [...#issuance_policy]])
		publishing_options?: matchN(1, [#publishing_options, list.MaxItems(1) & [...#publishing_options]])

		// The Tier of this CaPool. Possible values: ["ENTERPRISE",
		// "DEVOPS"]
		tier!:     string
		timeouts?: #timeouts
	})

	#encryption_spec: close({
		// The resource name for an existing Cloud KMS key in the format
		// 'projects/*/locations/*/keyRings/*/cryptoKeys/*'.
		cloud_kms_key?: string
	})

	#issuance_policy: close({
		// The duration to backdate all certificates issued from this
		// CaPool. If not set, the
		// certificates will be issued with a not_before_time of the
		// issuance time (i.e. the current
		// time). If set, the certificates will be issued with a
		// not_before_time of the issuance
		// time minus the backdate_duration. The not_after_time will be
		// adjusted to preserve the
		// requested lifetime. The backdate_duration must be less than or
		// equal to 48 hours.
		backdate_duration?: string
		allowed_issuance_modes?: matchN(1, [_#defs."/$defs/issuance_policy/$defs/allowed_issuance_modes", list.MaxItems(1) & [..._#defs."/$defs/issuance_policy/$defs/allowed_issuance_modes"]])
		allowed_key_types?: matchN(1, [_#defs."/$defs/issuance_policy/$defs/allowed_key_types", [..._#defs."/$defs/issuance_policy/$defs/allowed_key_types"]])
		baseline_values?: matchN(1, [_#defs."/$defs/issuance_policy/$defs/baseline_values", list.MaxItems(1) & [..._#defs."/$defs/issuance_policy/$defs/baseline_values"]])
		identity_constraints?: matchN(1, [_#defs."/$defs/issuance_policy/$defs/identity_constraints", list.MaxItems(1) & [..._#defs."/$defs/issuance_policy/$defs/identity_constraints"]])

		// The maximum lifetime allowed for issued Certificates. Note that
		// if the issuing CertificateAuthority
		// expires before a Certificate's requested maximumLifetime, the
		// effective lifetime will be explicitly truncated to match it.
		maximum_lifetime?: string
	})

	#publishing_options: close({
		// Specifies the encoding format of each CertificateAuthority's CA
		// certificate and CRLs. If this is omitted, CA certificates and
		// CRLs
		// will be published in PEM. Possible values: ["PEM", "DER"]
		encoding_format?: string

		// When true, publishes each CertificateAuthority's CA certificate
		// and includes its URL in the "Authority Information Access"
		// X.509 extension in all issued Certificates. If this is false,
		// the CA certificate will not be published and the corresponding
		// X.509 extension will not be written in issued certificates.
		publish_ca_cert!: bool

		// When true, publishes each CertificateAuthority's CRL and
		// includes its URL in the "CRL Distribution Points" X.509
		// extension
		// in all issued Certificates. If this is false, CRLs will not be
		// published and the corresponding X.509 extension will not
		// be written in issued certificates. CRLs will expire 7 days from
		// their creation. However, we will rebuild daily. CRLs are
		// also rebuilt shortly after a certificate is revoked.
		publish_crl!: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/issuance_policy/$defs/allowed_issuance_modes": close({
		// When true, allows callers to create Certificates by specifying
		// a CertificateConfig.
		allow_config_based_issuance!: bool

		// When true, allows callers to create Certificates by specifying
		// a CSR.
		allow_csr_based_issuance!: bool
	})

	_#defs: "/$defs/issuance_policy/$defs/allowed_key_types": close({
		elliptic_curve?: matchN(1, [_#defs."/$defs/issuance_policy/$defs/allowed_key_types/$defs/elliptic_curve", list.MaxItems(1) & [..._#defs."/$defs/issuance_policy/$defs/allowed_key_types/$defs/elliptic_curve"]])
		rsa?: matchN(1, [_#defs."/$defs/issuance_policy/$defs/allowed_key_types/$defs/rsa", list.MaxItems(1) & [..._#defs."/$defs/issuance_policy/$defs/allowed_key_types/$defs/rsa"]])
	})

	_#defs: "/$defs/issuance_policy/$defs/allowed_key_types/$defs/elliptic_curve": close({
		// The algorithm used. Possible values: ["ECDSA_P256",
		// "ECDSA_P384", "EDDSA_25519"]
		signature_algorithm!: string
	})

	_#defs: "/$defs/issuance_policy/$defs/allowed_key_types/$defs/rsa": close({
		// The maximum allowed RSA modulus size, in bits. If this is not
		// set, or if set to zero, the
		// service will not enforce an explicit upper bound on RSA modulus
		// sizes.
		max_modulus_size?: string

		// The minimum allowed RSA modulus size, in bits. If this is not
		// set, or if set to zero, the
		// service-level min RSA modulus size will continue to apply.
		min_modulus_size?: string
	})

	_#defs: "/$defs/issuance_policy/$defs/baseline_values": close({
		additional_extensions?: matchN(1, [_#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/additional_extensions", [..._#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/additional_extensions"]])
		ca_options!: matchN(1, [_#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/ca_options", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/ca_options"]])
		key_usage!: matchN(1, [_#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage"]])
		name_constraints?: matchN(1, [_#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/name_constraints", list.MaxItems(1) & [..._#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/name_constraints"]])
		policy_ids?: matchN(1, [_#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/policy_ids", [..._#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/policy_ids"]])

		// Describes Online Certificate Status Protocol (OCSP) endpoint
		// addresses that appear in the
		// "Authority Information Access" extension in the certificate.
		aia_ocsp_servers?: [...string]
	})

	_#defs: "/$defs/issuance_policy/$defs/baseline_values/$defs/additional_extensions": close({
		object_id!: matchN(1, [_#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/additional_extensions/$defs/object_id", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/additional_extensions/$defs/object_id"]])

		// Indicates whether or not this extension is critical (i.e., if
		// the client does not know how to
		// handle this extension, the client should consider this to be an
		// error).
		critical!: bool

		// The value of this X.509 extension. A base64-encoded string.
		value!: string
	})

	_#defs: "/$defs/issuance_policy/$defs/baseline_values/$defs/additional_extensions/$defs/object_id": close({
		// An ObjectId specifies an object identifier (OID). These provide
		// context and describe types in ASN.1 messages.
		object_id_path!: [...number]
	})

	_#defs: "/$defs/issuance_policy/$defs/baseline_values/$defs/ca_options": close({
		// When true, the "CA" in Basic Constraints extension will be set
		// to true.
		is_ca?: bool

		// Refers to the "path length constraint" in Basic Constraints
		// extension. For a CA certificate, this value describes the
		// depth of
		// subordinate CA certificates that are allowed. If this value is
		// less than 0, the request will fail.
		max_issuer_path_length?: number

		// When true, the "CA" in Basic Constraints extension will be set
		// to false.
		// If both 'is_ca' and 'non_ca' are unset, the extension will be
		// omitted from the CA certificate.
		non_ca?: bool

		// When true, the "path length constraint" in Basic Constraints
		// extension will be set to 0.
		// if both 'max_issuer_path_length' and
		// 'zero_max_issuer_path_length' are unset,
		// the max path length will be omitted from the CA certificate.
		zero_max_issuer_path_length?: bool
	})

	_#defs: "/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage": close({
		base_key_usage!: matchN(1, [_#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage/$defs/base_key_usage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage/$defs/base_key_usage"]])
		extended_key_usage!: matchN(1, [_#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage/$defs/extended_key_usage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage/$defs/extended_key_usage"]])
		unknown_extended_key_usages?: matchN(1, [_#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage/$defs/unknown_extended_key_usages", [..._#defs."/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage/$defs/unknown_extended_key_usages"]])
	})

	_#defs: "/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage/$defs/base_key_usage": close({
		// The key may be used to sign certificates.
		cert_sign?: bool

		// The key may be used for cryptographic commitments. Note that
		// this may also be referred to as "non-repudiation".
		content_commitment?: bool

		// The key may be used sign certificate revocation lists.
		crl_sign?: bool

		// The key may be used to encipher data.
		data_encipherment?: bool

		// The key may be used to decipher only.
		decipher_only?: bool

		// The key may be used for digital signatures.
		digital_signature?: bool

		// The key may be used to encipher only.
		encipher_only?: bool

		// The key may be used in a key agreement protocol.
		key_agreement?: bool

		// The key may be used to encipher other keys.
		key_encipherment?: bool
	})

	_#defs: "/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage/$defs/extended_key_usage": close({
		// Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as
		// "TLS WWW client authentication", though regularly used for
		// non-WWW TLS.
		client_auth?: bool

		// Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as
		// "Signing of downloadable executable code client
		// authentication".
		code_signing?: bool

		// Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as
		// "Email protection".
		email_protection?: bool

		// Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as
		// "Signing OCSP responses".
		ocsp_signing?: bool

		// Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as
		// "TLS WWW server authentication", though regularly used for
		// non-WWW TLS.
		server_auth?: bool

		// Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as
		// "Binding the hash of an object to a time".
		time_stamping?: bool
	})

	_#defs: "/$defs/issuance_policy/$defs/baseline_values/$defs/key_usage/$defs/unknown_extended_key_usages": close({
		// An ObjectId specifies an object identifier (OID). These provide
		// context and describe types in ASN.1 messages.
		object_id_path!: [...number]
	})

	_#defs: "/$defs/issuance_policy/$defs/baseline_values/$defs/name_constraints": close({
		// Indicates whether or not the name constraints are marked
		// critical.
		critical!: bool

		// Contains excluded DNS names. Any DNS name that can be
		// constructed by simply adding zero or more labels to
		// the left-hand side of the name satisfies the name constraint.
		// For example, 'example.com', 'www.example.com',
		// 'www.sub.example.com'
		// would satisfy 'example.com' while 'example1.com' does not.
		excluded_dns_names?: [...string]

		// Contains the excluded email addresses. The value can be a
		// particular
		// email address, a hostname to indicate all email addresses on
		// that host or
		// a domain with a leading period (e.g. '.example.com') to
		// indicate
		// all email addresses in that domain.
		excluded_email_addresses?: [...string]

		// Contains the excluded IP ranges. For IPv4 addresses, the ranges
		// are expressed using CIDR notation as specified in RFC 4632.
		// For IPv6 addresses, the ranges are expressed in similar
		// encoding as IPv4
		// addresses.
		excluded_ip_ranges?: [...string]

		// Contains the excluded URIs that apply to the host part of the
		// name.
		// The value can be a hostname or a domain with a
		// leading period (like '.example.com')
		excluded_uris?: [...string]

		// Contains permitted DNS names. Any DNS name that can be
		// constructed by simply adding zero or more labels to
		// the left-hand side of the name satisfies the name constraint.
		// For example, 'example.com', 'www.example.com',
		// 'www.sub.example.com'
		// would satisfy 'example.com' while 'example1.com' does not.
		permitted_dns_names?: [...string]

		// Contains the permitted email addresses. The value can be a
		// particular
		// email address, a hostname to indicate all email addresses on
		// that host or
		// a domain with a leading period (e.g. '.example.com') to
		// indicate
		// all email addresses in that domain.
		permitted_email_addresses?: [...string]

		// Contains the permitted IP ranges. For IPv4 addresses, the
		// ranges
		// are expressed using CIDR notation as specified in RFC 4632.
		// For IPv6 addresses, the ranges are expressed in similar
		// encoding as IPv4
		// addresses.
		permitted_ip_ranges?: [...string]

		// Contains the permitted URIs that apply to the host part of the
		// name.
		// The value can be a hostname or a domain with a
		// leading period (like '.example.com')
		permitted_uris?: [...string]
	})

	_#defs: "/$defs/issuance_policy/$defs/baseline_values/$defs/policy_ids": close({
		// An ObjectId specifies an object identifier (OID). These provide
		// context and describe types in ASN.1 messages.
		object_id_path!: [...number]
	})

	_#defs: "/$defs/issuance_policy/$defs/identity_constraints": close({
		cel_expression?: matchN(1, [_#defs."/$defs/issuance_policy/$defs/identity_constraints/$defs/cel_expression", list.MaxItems(1) & [..._#defs."/$defs/issuance_policy/$defs/identity_constraints/$defs/cel_expression"]])

		// If this is set, the SubjectAltNames extension may be copied
		// from a certificate request into the signed certificate.
		// Otherwise, the requested SubjectAltNames will be discarded.
		allow_subject_alt_names_passthrough!: bool

		// If this is set, the Subject field may be copied from a
		// certificate request into the signed certificate.
		// Otherwise, the requested Subject will be discarded.
		allow_subject_passthrough!: bool
	})

	_#defs: "/$defs/issuance_policy/$defs/identity_constraints/$defs/cel_expression": close({
		// Description of the expression. This is a longer text which
		// describes the expression, e.g. when hovered over it in a UI.
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting, e.g. a file name and a position in the file.
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose. This can be used e.g. in UIs which allow to enter the
		// expression.
		title?: string
	})
}
