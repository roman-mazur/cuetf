package res

import "list"

#google_privateca_certificate_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_privateca_certificate_template")
	close({
		// Output only. The time at which this CertificateTemplate was
		// created.
		create_time?: string

		// Optional. A human-readable description of scenarios this
		// template is intended for.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Optional. Labels with user-defined metadata.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the resource
		location!: string

		// Optional. The maximum lifetime allowed for all issued
		// certificates that use this template. If the issuing CaPool's
		// IssuancePolicy specifies a maximum lifetime the minimum of the
		// two durations will be the maximum lifetime for issued. Note
		// that if the issuing CertificateAuthority expires before a
		// Certificate's requested maximum_lifetime, the effective
		// lifetime will be explicitly truncated to match it.
		maximum_lifetime?: string

		// The resource name for this CertificateTemplate in the format
		// 'projects/*/locations/*/certificateTemplates/*'.
		name!: string
		identity_constraints?: matchN(1, [#identity_constraints, list.MaxItems(1) & [...#identity_constraints]])
		passthrough_extensions?: matchN(1, [#passthrough_extensions, list.MaxItems(1) & [...#passthrough_extensions]])
		predefined_values?: matchN(1, [#predefined_values, list.MaxItems(1) & [...#predefined_values]])
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. The time at which this CertificateTemplate was
		// updated.
		update_time?: string
	})

	#identity_constraints: close({
		cel_expression?: matchN(1, [_#defs."/$defs/identity_constraints/$defs/cel_expression", list.MaxItems(1) & [..._#defs."/$defs/identity_constraints/$defs/cel_expression"]])

		// Required. If this is true, the SubjectAltNames extension may be
		// copied from a certificate request into the signed certificate.
		// Otherwise, the requested SubjectAltNames will be discarded.
		allow_subject_alt_names_passthrough!: bool

		// Required. If this is true, the Subject field may be copied from
		// a certificate request into the signed certificate. Otherwise,
		// the requested Subject will be discarded.
		allow_subject_passthrough!: bool
	})

	#passthrough_extensions: close({
		additional_extensions?: matchN(1, [_#defs."/$defs/passthrough_extensions/$defs/additional_extensions", [..._#defs."/$defs/passthrough_extensions/$defs/additional_extensions"]])

		// Optional. A set of named X.509 extensions. Will be combined
		// with additional_extensions to determine the full set of X.509
		// extensions.
		known_extensions?: [...string]
	})

	#predefined_values: close({
		additional_extensions?: matchN(1, [_#defs."/$defs/predefined_values/$defs/additional_extensions", [..._#defs."/$defs/predefined_values/$defs/additional_extensions"]])
		ca_options?: matchN(1, [_#defs."/$defs/predefined_values/$defs/ca_options", list.MaxItems(1) & [..._#defs."/$defs/predefined_values/$defs/ca_options"]])
		key_usage?: matchN(1, [_#defs."/$defs/predefined_values/$defs/key_usage", list.MaxItems(1) & [..._#defs."/$defs/predefined_values/$defs/key_usage"]])
		name_constraints?: matchN(1, [_#defs."/$defs/predefined_values/$defs/name_constraints", list.MaxItems(1) & [..._#defs."/$defs/predefined_values/$defs/name_constraints"]])
		policy_ids?: matchN(1, [_#defs."/$defs/predefined_values/$defs/policy_ids", [..._#defs."/$defs/predefined_values/$defs/policy_ids"]])

		// Optional. Describes Online Certificate Status Protocol (OCSP)
		// endpoint addresses that appear in the "Authority Information
		// Access" extension in the certificate.
		aia_ocsp_servers?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/identity_constraints/$defs/cel_expression": close({
		// Optional. Description of the expression. This is a longer text
		// which describes the expression, e.g. when hovered over it in a
		// UI.
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression?: string

		// Optional. String indicating the location of the expression for
		// error reporting, e.g. a file name and a position in the file.
		location?: string

		// Optional. Title for the expression, i.e. a short string
		// describing its purpose. This can be used e.g. in UIs which
		// allow to enter the expression.
		title?: string
	})

	_#defs: "/$defs/passthrough_extensions/$defs/additional_extensions": close({
		// Required. The parts of an OID path. The most significant parts
		// of the path come first.
		object_id_path!: [...number]
	})

	_#defs: "/$defs/predefined_values/$defs/additional_extensions": close({
		object_id!: matchN(1, [_#defs."/$defs/predefined_values/$defs/additional_extensions/$defs/object_id", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/predefined_values/$defs/additional_extensions/$defs/object_id"]])

		// Optional. Indicates whether or not this extension is critical
		// (i.e., if the client does not know how to handle this
		// extension, the client should consider this to be an error).
		critical?: bool

		// Required. The value of this X.509 extension.
		value!: string
	})

	_#defs: "/$defs/predefined_values/$defs/additional_extensions/$defs/object_id": close({
		// Required. The parts of an OID path. The most significant parts
		// of the path come first.
		object_id_path!: [...number]
	})

	_#defs: "/$defs/predefined_values/$defs/ca_options": close({
		// Optional. Refers to the "CA" X.509 extension, which is a
		// boolean value. When this value is true, the "CA" in Basic
		// Constraints extension will be set to true.
		is_ca?: bool

		// Optional. Refers to the "path length constraint" in Basic
		// Constraints extension. For a CA certificate, this value
		// describes the depth of
		// subordinate CA certificates that are allowed. If this value is
		// less than 0, the request will fail.
		max_issuer_path_length?: number

		// Optional. When true, the "CA" in Basic Constraints extension
		// will be set to null and omitted from the CA certificate.
		// If both 'is_ca' and 'null_ca' are unset, the "CA" in Basic
		// Constraints extension will be set to false.
		// Note that the behavior when 'is_ca = false' for this resource
		// is different from the behavior in the Certificate Authority,
		// Certificate and CaPool resources.
		null_ca?: bool

		// Optional. When true, the "path length constraint" in Basic
		// Constraints extension will be set to 0.
		// if both 'max_issuer_path_length' and
		// 'zero_max_issuer_path_length' are unset,
		// the max path length will be omitted from the CA certificate.
		zero_max_issuer_path_length?: bool
	})

	_#defs: "/$defs/predefined_values/$defs/key_usage": close({
		base_key_usage?: matchN(1, [_#defs."/$defs/predefined_values/$defs/key_usage/$defs/base_key_usage", list.MaxItems(1) & [..._#defs."/$defs/predefined_values/$defs/key_usage/$defs/base_key_usage"]])
		extended_key_usage?: matchN(1, [_#defs."/$defs/predefined_values/$defs/key_usage/$defs/extended_key_usage", list.MaxItems(1) & [..._#defs."/$defs/predefined_values/$defs/key_usage/$defs/extended_key_usage"]])
		unknown_extended_key_usages?: matchN(1, [_#defs."/$defs/predefined_values/$defs/key_usage/$defs/unknown_extended_key_usages", [..._#defs."/$defs/predefined_values/$defs/key_usage/$defs/unknown_extended_key_usages"]])
	})

	_#defs: "/$defs/predefined_values/$defs/key_usage/$defs/base_key_usage": close({
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

	_#defs: "/$defs/predefined_values/$defs/key_usage/$defs/extended_key_usage": close({
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

	_#defs: "/$defs/predefined_values/$defs/key_usage/$defs/unknown_extended_key_usages": close({
		// Required. The parts of an OID path. The most significant parts
		// of the path come first.
		object_id_path!: [...number]
	})

	_#defs: "/$defs/predefined_values/$defs/name_constraints": close({
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

	_#defs: "/$defs/predefined_values/$defs/policy_ids": close({
		// Required. The parts of an OID path. The most significant parts
		// of the path come first.
		object_id_path!: [...number]
	})
}
