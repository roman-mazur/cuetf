package data

#google_privateca_certificate_authority: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_privateca_certificate_authority")
	close({
		// URLs for accessing content published by this CA, such as the CA
		// certificate and CRLs.
		access_urls?: [...close({
			ca_certificate_access_url?: string
			crl_access_urls?: [...string]
		})]

		// The user provided Resource ID for this Certificate Authority.
		certificate_authority_id?: string

		// The config used to create a self-signed X.509 certificate or
		// CSR.
		config?: [...close({
			subject_config?: [...close({
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
					dns_names?: [...string]
					email_addresses?: [...string]
					ip_addresses?: [...string]
					uris?: [...string]
				})]
			})]
			subject_key_id?: [...close({
				key_id?: string
			})]
			x509_config?: [...close({
				additional_extensions?: [...close({
					critical?: bool
					object_id?: [...close({
						object_id_path?: [...number]
					})]
					value?: string
				})]
				aia_ocsp_servers?: [...string]
				ca_options?: [...close({
					is_ca?:                       bool
					max_issuer_path_length?:      number
					non_ca?:                      bool
					zero_max_issuer_path_length?: bool
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

		// Used when issuing certificates for this CertificateAuthority.
		// If this CertificateAuthority
		// is a self-signed CertificateAuthority, this key is also used to
		// sign the self-signed CA
		// certificate. Otherwise, it is used to sign a CSR.
		key_spec?: [...close({
			algorithm?:             string
			cloud_kms_key_version?: string
		})]

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
		location?: string

		// The resource name for this CertificateAuthority in the format
		// projects/*/locations/*/certificateAuthorities/*.
		name?: string

		// The signed CA certificate issued from the subordinated CA's
		// CSR. This is needed when activating the subordiante CA with a
		// third party issuer.
		pem_ca_certificate?: string

		// This CertificateAuthority's certificate chain, including the
		// current
		// CertificateAuthority's certificate. Ordered such that the root
		// issuer is the final
		// element (consistent with RFC 5246). For a self-signed CA, this
		// will only list the current
		// CertificateAuthority's certificate.
		pem_ca_certificates?: [...string]

		// The name of the CaPool this Certificate Authority belongs to.
		pool?: string

		// If this flag is set, the Certificate Authority will be deleted
		// as soon as
		// possible without a 30-day grace period where undeletion would
		// have been
		// allowed. If you proceed, there will be no way to recover this
		// CA.
		// Use with care. Defaults to 'false'.
		skip_grace_period?: bool
		pem_csr?:           string

		// The State for this CertificateAuthority.
		state?: string

		// If this is a subordinate CertificateAuthority, this field will
		// be set
		// with the subordinate configuration, which describes its
		// issuers.
		subordinate_config?: [...close({
			certificate_authority?: string
			pem_issuer_chain?: [...close({
				pem_certificates?: [...string]
			})]
		})]
		project?: string

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

		// Custom URLs for accessing content published by this CA, such as
		// the CA certificate and CRLs,
		// that can be specified by users.
		user_defined_access_urls?: [...close({
			aia_issuing_certificate_urls?: [...string]
			crl_access_urls?: [...string]
		})]
	})
}
