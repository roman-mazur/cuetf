package res

import "list"

#google_iam_workload_identity_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iam_workload_identity_pool")
	close({
		attestation_rules?: matchN(1, [#attestation_rules, [...#attestation_rules]])
		inline_certificate_issuance_config?: matchN(1, [#inline_certificate_issuance_config, list.MaxItems(1) & [...#inline_certificate_issuance_config]])
		inline_trust_config?: matchN(1, [#inline_trust_config, list.MaxItems(1) & [...#inline_trust_config]])
		timeouts?: #timeouts

		// A description of the pool. Cannot exceed 256 characters.
		description?: string

		// Whether the pool is disabled. You cannot use a disabled pool to
		// exchange tokens, or use
		// existing tokens to access resources. If the pool is re-enabled,
		// existing tokens grant
		// access again.
		disabled?: bool

		// A display name for the pool. Cannot exceed 32 characters.
		display_name?: string
		id?:           string

		// The mode for the pool is operating in. Pools with an
		// unspecified mode will operate as if they
		// are in 'FEDERATION_ONLY' mode.
		//
		//
		// ~> **Note** This field cannot be changed after the Workload
		// Identity Pool is created. While
		// 'terraform plan' may show an update if you change this field's
		// value, 'terraform apply'
		// **will fail with an API error** (such as 'Error 400: Attempted
		// to update an immutable field.').
		// To specify a different 'mode', please create a new Workload
		// Identity Pool resource.
		//
		// * 'FEDERATION_ONLY': Pools can only be used for federating
		// external workload identities into
		// Google Cloud. Unless otherwise noted, no structure or format
		// constraints are applied to
		// workload identities in a 'FEDERATION_ONLY' mode pool, and you
		// may not create any resources
		// within the pool besides providers.
		// * 'TRUST_DOMAIN': Pools can be used to assign identities to
		// Google Cloud workloads. All
		// identities within a 'TRUST_DOMAIN' mode pool must consist of a
		// single namespace and individual
		// workload identifier. The subject identifier for all identities
		// must conform to the following
		// format: 'ns/<namespace>/sa/<workload_identifier>'.
		// 'google_iam_workload_identity_pool_provider's cannot be created
		// within 'TRUST_DOMAIN'
		// mode pools.
		// * 'SYSTEM_TRUST_DOMAIN': Pools are managed by Google Cloud
		// services. Neither
		// 'google_iam_workload_identity_pool_namespace's nor
		// 'google_iam_workload_identity_pool_provider's
		// can be created within 'SYSTEM_TRUST_DOMAIN' mode pools. All
		// identities within a
		// 'SYSTEM_TRUST_DOMAIN' mode pool are in one of the following
		// formats:
		//
		// *
		// 'spiffe://<trust-domain>/ns/<kubernetes-namespace>/sa/<kubernetes-service-account>'
		// *
		// 'spiffe://<trust-domain>/resources/<resource-scope>/<resource-name>'
		// Possible values: ["FEDERATION_ONLY", "TRUST_DOMAIN",
		// "SYSTEM_TRUST_DOMAIN"]
		mode?: string

		// The resource name of the pool as
		// 'projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}'.
		name?:    string
		project?: string

		// The state of the pool.
		// * 'STATE_UNSPECIFIED': State unspecified.
		// * 'ACTIVE': The pool is active, and may be used in Google Cloud
		// policies.
		// * 'DELETED': The pool is soft-deleted. Soft-deleted pools are
		// permanently deleted after
		// approximately 30 days. You can restore a soft-deleted pool
		// using
		// 'UndeleteWorkloadIdentityPool'. You cannot reuse the ID of a
		// soft-deleted pool until it is
		// permanently deleted. While a pool is deleted, you cannot use it
		// to exchange tokens, or
		// use existing tokens to access resources. If the pool is
		// undeleted, existing tokens grant
		// access again.
		state?: string

		// The ID to use for the pool, which becomes the final component
		// of the resource name. This
		// value should be 4-32 characters, and may contain the characters
		// [a-z0-9-]. The prefix
		// 'gcp-' is reserved for use by Google, and may not be specified.
		workload_identity_pool_id!: string
	})

	#attestation_rules: close({
		// A single workload operating on Google Cloud. For example:
		// '//run.googleapis.com/projects/123/type/Service/*'.
		google_cloud_resource!: string
	})

	#inline_certificate_issuance_config: close({
		// A required mapping of a cloud region to the CA pool resource
		// located in that region used
		// for certificate issuance, adhering to these constraints:
		//
		// * **Key format:** A supported cloud region name equivalent to
		// the location identifier in
		// the corresponding map entry's value.
		// * **Value format:** A valid CA pool resource path format like:
		// 'projects/{project}/locations/{location}/caPools/{ca_pool}'
		// * **Region Matching:** Workloads are ONLY issued certificates
		// from CA pools within the
		// same region. Also the CA pool region (in value) must match the
		// workload's region (key).
		ca_pools?: [string]: string

		// Key algorithm to use when generating the key pair. This key
		// pair will be used to create
		// the certificate. If unspecified, this will default to
		// 'ECDSA_P256'.
		//
		// * 'RSA_2048': Specifies RSA with a 2048-bit modulus.
		// * 'RSA_3072': Specifies RSA with a 3072-bit modulus.
		// * 'RSA_4096': Specifies RSA with a 4096-bit modulus.
		// * 'ECDSA_P256': Specifies ECDSA with curve P256.
		// * 'ECDSA_P384': Specifies ECDSA with curve P384. Possible
		// values: ["RSA_2048", "RSA_3072", "RSA_4096", "ECDSA_P256",
		// "ECDSA_P384"]
		key_algorithm?: string

		// Lifetime of the workload certificates issued by the CA pool in
		// seconds. Must be between
		// '86400s' (24 hours) to '2592000s' (30 days), ends in the suffix
		// "'s'" (indicating seconds)
		// and is preceded by the number of seconds. If unspecified, this
		// will be defaulted to
		// '86400s' (24 hours).
		lifetime?: string

		// Rotation window percentage indicating when certificate rotation
		// should be initiated based
		// on remaining lifetime. Must be between '50' - '80'. If
		// unspecified, this will be defaulted
		// to '50'.
		rotation_window_percentage?: number

		// If set to true, the trust domain will utilize the
		// GCP-provisioned default CA. A default
		// CA in the same region as the workload will be selected to issue
		// the certificate. Enabling
		// this will clear any existing 'ca_pools' configuration to
		// provision the certificates.
		//
		//
		// ~> **Note** This field is mutually exclusive with 'ca_pools'.
		// If this flag is enabled,
		// certificates will be automatically provisioned from the default
		// shared CAs. This flag should
		// not be set if you want to use your own CA pools to provision
		// the certificates.
		use_default_shared_ca?: bool
	})

	#inline_trust_config: close({
		additional_trust_bundles?: matchN(1, [_#defs."/$defs/inline_trust_config/$defs/additional_trust_bundles", [..._#defs."/$defs/inline_trust_config/$defs/additional_trust_bundles"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/inline_trust_config/$defs/additional_trust_bundles": close({
		trust_anchors!: matchN(1, [_#defs."/$defs/inline_trust_config/$defs/additional_trust_bundles/$defs/trust_anchors", [_, ...] & [..._#defs."/$defs/inline_trust_config/$defs/additional_trust_bundles/$defs/trust_anchors"]])
		trust_domain!: string
	})

	_#defs: "/$defs/inline_trust_config/$defs/additional_trust_bundles/$defs/trust_anchors": close({
		// PEM certificate of the PKI used for validation. Must only
		// contain one ca
		// certificate(either root or intermediate cert).
		pem_certificate!: string
	})
}
