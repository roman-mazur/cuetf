package res

import "list"

#google_certificate_manager_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_certificate_manager_certificate")
	close({
		// A human-readable description of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Set of label tags associated with the Certificate resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The Certificate Manager location. If not specified, "global" is
		// used.
		location?: string

		// A user-defined name of the certificate. Certificate names must
		// be unique
		// The name must be 1-64 characters long, and match the regular
		// expression [a-zA-Z][a-zA-Z0-9_-]* which means the first
		// character must be a letter,
		// and all following characters must be a dash, underscore, letter
		// or digit.
		name!:    string
		project?: string

		// The list of Subject Alternative Names of dnsName type defined
		// in the certificate (see RFC 5280 4.2.1.6)
		san_dnsnames?: [...string]
		managed?: matchN(1, [#managed, list.MaxItems(1) & [...#managed]])
		self_managed?: matchN(1, [#self_managed, list.MaxItems(1) & [...#self_managed]])
		timeouts?: #timeouts

		// The scope of the certificate.
		//
		// DEFAULT: Certificates with default scope are served from core
		// Google data centers.
		// If unsure, choose this option.
		//
		// EDGE_CACHE: Certificates with scope EDGE_CACHE are
		// special-purposed certificates, served from Edge Points of
		// Presence.
		// See https://cloud.google.com/vpc/docs/edge-locations.
		//
		// ALL_REGIONS: Certificates with ALL_REGIONS scope are served
		// from all GCP regions (You can only use ALL_REGIONS with global
		// certs).
		// See https://cloud.google.com/compute/docs/regions-zones.
		//
		// CLIENT_AUTH: Certificates with CLIENT_AUTH scope are used by a
		// load balancer (TLS client) to be presented to the backend (TLS
		// server) when backend mTLS is configured.
		// See
		// https://cloud.google.com/load-balancing/docs/backend-authenticated-tls-backend-mtls#client-certificate.
		scope?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#managed: close({
		// Detailed state of the latest authorization attempt for each
		// domain
		// specified for this Managed Certificate.
		authorization_attempt_info?: [...close({
			details?:        string
			domain?:         string
			failure_reason?: string
			state?:          string
		})]

		// Authorizations that will be used for performing domain
		// authorization. Either issuanceConfig or dnsAuthorizations
		// should be specificed, but not both.
		dns_authorizations?: [...string]

		// The domains for which a managed SSL certificate will be
		// generated.
		// Wildcard domains are only supported with DNS challenge
		// resolution
		domains?: [...string]

		// The resource name for a CertificateIssuanceConfig used to
		// configure private PKI certificates in the format
		// projects/*/locations/*/certificateIssuanceConfigs/*.
		// If this field is not set, the certificates will instead be
		// publicly signed as documented at
		// https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
		// Either issuanceConfig or dnsAuthorizations should be
		// specificed, but not both.
		issuance_config?: string

		// Information about issues with provisioning this Managed
		// Certificate.
		provisioning_issue?: [...close({
			details?: string
			reason?:  string
		})]

		// A state of this Managed Certificate.
		state?: string
	})

	#self_managed: close({
		// The certificate chain in PEM-encoded form.
		//
		// Leaf certificate comes first, followed by intermediate ones if
		// any.
		pem_certificate?: string

		// The private key of the leaf certificate in PEM-encoded form.
		pem_private_key?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
