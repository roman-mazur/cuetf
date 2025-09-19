package res

import "list"

#google_privateca_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_privateca_certificate")
	close({
		// The Certificate Authority ID that should issue the certificate.
		// For example, to issue a Certificate from
		// a Certificate Authority with resource name
		// 'projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca',
		// argument 'pool' should be set to
		// 'projects/my-project/locations/us-central1/caPools/my-pool',
		// argument 'certificate_authority'
		// should be set to 'my-ca'.
		certificate_authority?: string

		// Output only. Details regarding the revocation of this
		// Certificate. This Certificate is considered revoked if and
		// only if this field is present.
		certificate_description?: [...close({
			aia_issuing_certificate_urls?: [...string]
			authority_key_id?: [...close({
				key_id?: string
			})]
			cert_fingerprint?: [...close({
				sha256_hash?: string
			})]
			crl_distribution_points?: [...string]
			public_key?: [...close({
				format?: string
				key?:    string
			})]
			subject_description?: [...close({
				hex_serial_number?: string
				lifetime?:          string
				not_after_time?:    string
				not_before_time?:   string
				subject?: [...close({
					common_name?:         string
					country_code?:        string
					locality?:            string
					organization?:        string
					organizational_unit?: string
					postal_code?:         string
					province?:            string
					street_address?:      string
				})]
				subject_alt_name?: [...close({
					custom_sans?: [...close({
						critical?: bool
						obect_id?: [...close({
							object_id_path?: [...number]
						})]
						value?: string
					})]
					dns_names?: [...string]
					email_addresses?: [...string]
					ip_addresses?: [...string]
					uris?: [...string]
				})]
			})]
			subject_key_id?: [...close({
				key_id?: string
			})]
			x509_description?: [...close({
				additional_extensions?: [...close({
					critical?: bool
					object_id?: [...close({
						object_id_path?: [...number]
					})]
					value?: string
				})]
				aia_ocsp_servers?: [...string]
				ca_options?: [...close({
					is_ca?:                  bool
					max_issuer_path_length?: number
				})]
				key_usage?: [...close({
					base_key_usage?: [...close({
						cert_sign?:          bool
						content_commitment?: bool
						crl_sign?:           bool
						data_encipherment?:  bool
						decipher_only?:      bool
						digital_signature?:  bool
						encipher_only?:      bool
						key_agreement?:      bool
						key_encipherment?:   bool
					})]
					extended_key_usage?: [...close({
						client_auth?:      bool
						code_signing?:     bool
						email_protection?: bool
						ocsp_signing?:     bool
						server_auth?:      bool
						time_stamping?:    bool
					})]
					unknown_extended_key_usages?: [...close({
						object_id_path?: [...number]
					})]
				})]
				name_constraints?: [...close({
					critical?: bool
					excluded_dns_names?: [...string]
					excluded_email_addresses?: [...string]
					excluded_ip_ranges?: [...string]
					excluded_uris?: [...string]
					permitted_dns_names?: [...string]
					permitted_email_addresses?: [...string]
					permitted_ip_ranges?: [...string]
					permitted_uris?: [...string]
				})]
				policy_ids?: [...close({
					object_id_path?: [...number]
				})]
			})]
		})]

		// The resource name for a CertificateTemplate used to issue this
		// certificate,
		// in the format 'projects/*/locations/*/certificateTemplates/*'.
		// If this is specified,
		// the caller must have the necessary permission to use this
		// template. If this is
		// omitted, no template will be used. This template must be in the
		// same location
		// as the Certificate.
		certificate_template?: string

		// The time that this resource was created on the server.
		// This is in RFC3339 text format.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// The resource name of the issuing CertificateAuthority in the
		// format
		// 'projects/*/locations/*/caPools/*/certificateAuthorities/*'.
		issuer_certificate_authority?: string

		// Labels with user-defined metadata to apply to this resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The desired lifetime of the CA certificate. Used to create the
		// "notBeforeTime" and
		// "notAfterTime" fields inside an X.509 certificate. A duration
		// in seconds with up to nine
		// fractional digits, terminated by 's'. Example: "3.5s".
		lifetime?: string

		// Location of the Certificate. A full list of valid locations can
		// be found by
		// running 'gcloud privateca locations list'.
		location!: string

		// The name for this Certificate.
		name!: string

		// Output only. The pem-encoded, signed X.509 certificate.
		pem_certificate?: string
		config?: matchN(1, [#config, list.MaxItems(1) & [...#config]])
		timeouts?: #timeouts

		// The chain that may be used to verify the X.509 certificate.
		// Expected to be in issuer-to-root order according to RFC 5246.
		pem_certificate_chain?: [...string]

		// Immutable. A pem-encoded X.509 certificate signing request
		// (CSR).
		pem_csr?: string

		// The name of the CaPool this Certificate belongs to.
		pool!: string

		// Output only. Details regarding the revocation of this
		// Certificate. This Certificate is
		// considered revoked if and only if this field is present.
		revocation_details?: [...close({
			revocation_state?: string
			revocation_time?:  string
		})]
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. The time at which this CertificateAuthority was
		// updated.
		// This is in RFC3339 text format.
		update_time?: string
	})

	#config: close({
		public_key?: matchN(1, [_#defs."/$defs/config/$defs/public_key", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/public_key"]])
		subject_config?: matchN(1, [_#defs."/$defs/config/$defs/subject_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/subject_config"]])
		subject_key_id?: matchN(1, [_#defs."/$defs/config/$defs/subject_key_id", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/subject_key_id"]])
		x509_config?: matchN(1, [_#defs."/$defs/config/$defs/x509_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/x509_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/config/$defs/public_key": close({
		// The format of the public key. Currently, only PEM format is
		// supported. Possible values: ["KEY_TYPE_UNSPECIFIED", "PEM"]
		format!: string

		// Required. A public key. When this is specified in a request,
		// the padding and encoding can be any of the options described
		// by the respective 'KeyType' value. When this is generated by
		// the service, it will always be an RFC 5280
		// SubjectPublicKeyInfo structure containing an algorithm
		// identifier and a key. A base64-encoded string.
		key?: string
	})

	_#defs: "/$defs/config/$defs/subject_config": close({
		subject?: matchN(1, [_#defs."/$defs/config/$defs/subject_config/$defs/subject", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/subject_config/$defs/subject"]])
		subject_alt_name?: matchN(1, [_#defs."/$defs/config/$defs/subject_config/$defs/subject_alt_name", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/subject_config/$defs/subject_alt_name"]])
	})

	_#defs: "/$defs/config/$defs/subject_config/$defs/subject": close({
		// The common name of the distinguished name.
		common_name!: string

		// The country code of the subject.
		country_code?: string

		// The locality or city of the subject.
		locality?: string

		// The organization of the subject.
		organization!: string

		// The organizational unit of the subject.
		organizational_unit?: string

		// The postal code of the subject.
		postal_code?: string

		// The province, territory, or regional state of the subject.
		province?: string

		// The street address of the subject.
		street_address?: string
	})

	_#defs: "/$defs/config/$defs/subject_config/$defs/subject_alt_name": close({
		// Contains only valid, fully-qualified host names.
		dns_names?: [...string]

		// Contains only valid RFC 2822 E-mail addresses.
		email_addresses?: [...string]

		// Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6
		// addresses.
		ip_addresses?: [...string]

		// Contains only valid RFC 3986 URIs.
		uris?: [...string]
	})

	_#defs: "/$defs/config/$defs/subject_key_id": close({
		// The value of the KeyId in lowercase hexadecimal.
		key_id?: string
	})

	_#defs: "/$defs/config/$defs/x509_config": close({
		additional_extensions?: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/additional_extensions", [..._#defs."/$defs/config/$defs/x509_config/$defs/additional_extensions"]])
		ca_options?: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/ca_options", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/x509_config/$defs/ca_options"]])
		key_usage?: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/key_usage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/x509_config/$defs/key_usage"]])
		name_constraints?: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/name_constraints", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/x509_config/$defs/name_constraints"]])
		policy_ids?: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/policy_ids", [..._#defs."/$defs/config/$defs/x509_config/$defs/policy_ids"]])

		// Describes Online Certificate Status Protocol (OCSP) endpoint
		// addresses that appear in the
		// "Authority Information Access" extension in the certificate.
		aia_ocsp_servers?: [...string]
	})

	_#defs: "/$defs/config/$defs/x509_config/$defs/additional_extensions": close({
		object_id?: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/additional_extensions/$defs/object_id", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/x509_config/$defs/additional_extensions/$defs/object_id"]])

		// Indicates whether or not this extension is critical (i.e., if
		// the client does not know how to
		// handle this extension, the client should consider this to be an
		// error).
		critical!: bool

		// The value of this X.509 extension. A base64-encoded string.
		value!: string
	})

	_#defs: "/$defs/config/$defs/x509_config/$defs/additional_extensions/$defs/object_id": close({
		// An ObjectId specifies an object identifier (OID). These provide
		// context and describe types in ASN.1 messages.
		object_id_path!: [...number]
	})

	_#defs: "/$defs/config/$defs/x509_config/$defs/ca_options": close({
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

	_#defs: "/$defs/config/$defs/x509_config/$defs/key_usage": close({
		base_key_usage?: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/key_usage/$defs/base_key_usage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/x509_config/$defs/key_usage/$defs/base_key_usage"]])
		extended_key_usage?: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/key_usage/$defs/extended_key_usage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/x509_config/$defs/key_usage/$defs/extended_key_usage"]])
		unknown_extended_key_usages?: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/key_usage/$defs/unknown_extended_key_usages", [..._#defs."/$defs/config/$defs/x509_config/$defs/key_usage/$defs/unknown_extended_key_usages"]])
	})

	_#defs: "/$defs/config/$defs/x509_config/$defs/key_usage/$defs/base_key_usage": close({
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

	_#defs: "/$defs/config/$defs/x509_config/$defs/key_usage/$defs/extended_key_usage": close({
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

	_#defs: "/$defs/config/$defs/x509_config/$defs/key_usage/$defs/unknown_extended_key_usages": close({
		// An ObjectId specifies an object identifier (OID). These provide
		// context and describe types in ASN.1 messages.
		object_id_path!: [...number]
	})

	_#defs: "/$defs/config/$defs/x509_config/$defs/name_constraints": close({
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

	_#defs: "/$defs/config/$defs/x509_config/$defs/policy_ids": close({
		// An ObjectId specifies an object identifier (OID). These provide
		// context and describe types in ASN.1 messages.
		object_id_path!: [...number]
	})
}
