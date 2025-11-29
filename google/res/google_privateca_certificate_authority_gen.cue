package res

import "list"

#google_privateca_certificate_authority: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_privateca_certificate_authority")
	close({
		// URLs for accessing content published by this CA, such as the CA
		// certificate and CRLs.
		access_urls?: [...close({
			ca_certificate_access_url?: string
			crl_access_urls?: [...string]
		})]

		// The user provided Resource ID for this Certificate Authority.
		certificate_authority_id!: string

		// The time at which this CertificateAuthority was created.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// CertificateAuthority.
		// When the field is set to true or unset in Terraform state, a
		// 'terraform apply'
		// or 'terraform destroy' that would delete the
		// CertificateAuthority will fail.
		// When the field is set to false, deleting the
		// CertificateAuthority is allowed.
		deletion_protection?: bool

		// Desired state of the CertificateAuthority. Set this field to
		// 'STAGED' to create a 'STAGED' root CA.
		// Possible values: ENABLED, DISABLED, STAGED.
		desired_state?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The name of a Cloud Storage bucket where this
		// CertificateAuthority will publish content,
		// such as the CA certificate and CRLs. This must be a bucket
		// name, without any prefixes
		// (such as 'gs://') or suffixes (such as '.googleapis.com'). For
		// example, to use a bucket named
		// my-bucket, you would simply specify 'my-bucket'. If not
		// specified, a managed bucket will be
		// created.
		gcs_bucket?: string

		// This field allows the CA to be deleted even if the CA has
		// active certs. Active certs include both unrevoked and
		// unexpired certs.
		// Use with care. Defaults to 'false'.
		ignore_active_certificates_on_deletion?: bool
		id?:                                     string

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

		// The desired lifetime of the CA certificate. Used to create the
		// "notBeforeTime" and
		// "notAfterTime" fields inside an X.509 certificate. A duration
		// in seconds with up to nine
		// fractional digits, terminated by 's'. Example: "3.5s".
		lifetime?: string

		// Location of the CertificateAuthority. A full list of valid
		// locations can be found by
		// running 'gcloud privateca locations list'.
		location!: string

		// The resource name for this CertificateAuthority in the format
		// projects/*/locations/*/certificateAuthorities/*.
		name?: string

		// The signed CA certificate issued from the subordinated CA's
		// CSR. This is needed when activating the subordiante CA with a
		// third party issuer.
		pem_ca_certificate?: string
		config!: matchN(1, [#config, list.MaxItems(1) & [_, ...] & [...#config]])
		key_spec!: matchN(1, [#key_spec, list.MaxItems(1) & [_, ...] & [...#key_spec]])
		subordinate_config?: matchN(1, [#subordinate_config, list.MaxItems(1) & [...#subordinate_config]])
		timeouts?: #timeouts

		// This CertificateAuthority's certificate chain, including the
		// current
		// CertificateAuthority's certificate. Ordered such that the root
		// issuer is the final
		// element (consistent with RFC 5246). For a self-signed CA, this
		// will only list the current
		// CertificateAuthority's certificate.
		pem_ca_certificates?: [...string]

		// The name of the CaPool this Certificate Authority belongs to.
		pool!:    string
		project?: string
		user_defined_access_urls?: matchN(1, [#user_defined_access_urls, list.MaxItems(1) & [...#user_defined_access_urls]])

		// If this flag is set, the Certificate Authority will be deleted
		// as soon as
		// possible without a 30-day grace period where undeletion would
		// have been
		// allowed. If you proceed, there will be no way to recover this
		// CA.
		// Use with care. Defaults to 'false'.
		skip_grace_period?: bool

		// The State for this CertificateAuthority.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The Type of this CertificateAuthority.
		//
		// ~> **Note:** For 'SUBORDINATE' Certificate Authorities, they
		// need to
		// be activated before they can issue certificates. Default value:
		// "SELF_SIGNED" Possible values: ["SELF_SIGNED", "SUBORDINATE"]
		type?: string

		// The time at which this CertificateAuthority was updated.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#config: close({
		subject_config!: matchN(1, [_#defs."/$defs/config/$defs/subject_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/subject_config"]])
		subject_key_id?: matchN(1, [_#defs."/$defs/config/$defs/subject_key_id", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/subject_key_id"]])
		x509_config!: matchN(1, [_#defs."/$defs/config/$defs/x509_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/x509_config"]])
	})

	#key_spec: close({
		// The algorithm to use for creating a managed Cloud KMS key for a
		// for a simplified
		// experience. All managed keys will be have their ProtectionLevel
		// as HSM. Possible values: ["SIGN_HASH_ALGORITHM_UNSPECIFIED",
		// "RSA_PSS_2048_SHA256", "RSA_PSS_3072_SHA256",
		// "RSA_PSS_4096_SHA256", "RSA_PKCS1_2048_SHA256",
		// "RSA_PKCS1_3072_SHA256", "RSA_PKCS1_4096_SHA256",
		// "EC_P256_SHA256", "EC_P384_SHA384"]
		algorithm?: string

		// The resource name for an existing Cloud KMS CryptoKeyVersion in
		// the format
		// 'projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*'.
		cloud_kms_key_version?: string
	})

	#subordinate_config: close({
		pem_issuer_chain?: matchN(1, [_#defs."/$defs/subordinate_config/$defs/pem_issuer_chain", list.MaxItems(1) & [..._#defs."/$defs/subordinate_config/$defs/pem_issuer_chain"]])

		// This can refer to a CertificateAuthority that was used to
		// create a
		// subordinate CertificateAuthority. This field is used for
		// information
		// and usability purposes only. The resource name is in the format
		// 'projects/*/locations/*/caPools/*/certificateAuthorities/*'.
		certificate_authority?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#user_defined_access_urls: close({
		// A list of URLs where this CertificateAuthority's CA certificate
		// is published that is specified by users.
		aia_issuing_certificate_urls?: [...string]

		// A list of URLs where this CertificateAuthority's CRLs are
		// published that is specified by users.
		crl_access_urls?: [...string]
	})

	_#defs: "/$defs/config/$defs/subject_config": close({
		subject!: matchN(1, [_#defs."/$defs/config/$defs/subject_config/$defs/subject", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/subject_config/$defs/subject"]])
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
		organization?: string

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
		ca_options!: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/ca_options", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/x509_config/$defs/ca_options"]])
		key_usage!: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/key_usage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/x509_config/$defs/key_usage"]])
		name_constraints?: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/name_constraints", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/x509_config/$defs/name_constraints"]])
		policy_ids?: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/policy_ids", [..._#defs."/$defs/config/$defs/x509_config/$defs/policy_ids"]])

		// Describes Online Certificate Status Protocol (OCSP) endpoint
		// addresses that appear in the
		// "Authority Information Access" extension in the certificate.
		aia_ocsp_servers?: [...string]
	})

	_#defs: "/$defs/config/$defs/x509_config/$defs/additional_extensions": close({
		object_id!: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/additional_extensions/$defs/object_id", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/x509_config/$defs/additional_extensions/$defs/object_id"]])

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
		is_ca!: bool

		// Refers to the "path length constraint" in Basic Constraints
		// extension. For a CA certificate, this value describes the
		// depth of
		// subordinate CA certificates that are allowed. If this value is
		// less than 0, the request will fail. Setting the value to 0
		// requires setting 'zero_max_issuer_path_length = true'.
		max_issuer_path_length?: number

		// When true, the "CA" in Basic Constraints extension will be set
		// to false.
		// If both 'is_ca' and 'non_ca' are unset, the extension will be
		// omitted from the CA certificate.
		non_ca?: bool

		// When true, the "path length constraint" in Basic Constraints
		// extension will be set to 0.
		// If both 'max_issuer_path_length' and
		// 'zero_max_issuer_path_length' are unset,
		// the max path length will be omitted from the CA certificate.
		zero_max_issuer_path_length?: bool
	})

	_#defs: "/$defs/config/$defs/x509_config/$defs/key_usage": close({
		base_key_usage!: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/key_usage/$defs/base_key_usage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/x509_config/$defs/key_usage/$defs/base_key_usage"]])
		extended_key_usage!: matchN(1, [_#defs."/$defs/config/$defs/x509_config/$defs/key_usage/$defs/extended_key_usage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/x509_config/$defs/key_usage/$defs/extended_key_usage"]])
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

	_#defs: "/$defs/subordinate_config/$defs/pem_issuer_chain": close({
		// Expected to be in leaf-to-root order according to RFC 5246.
		pem_certificates?: [...string]
	})
}
