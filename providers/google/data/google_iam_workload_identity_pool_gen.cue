package data

#google_iam_workload_identity_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_iam_workload_identity_pool")
	close({
		// Defines which workloads can receive an identity within a pool.
		// When an AttestationRule is
		// defined under a managed identity, matching workloads may
		// receive that identity. A maximum of
		// 50 AttestationRules can be set.
		attestation_rules?: [...close({
			google_cloud_resource?: string
		})]

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

		// Represents configuration for generating mutual TLS (mTLS)
		// certificates for the identities
		// within this pool. Defines the Certificate Authority (CA) pool
		// resources and configurations
		// required for issuance and rotation of mTLS workload
		// certificates.
		inline_certificate_issuance_config?: [...close({
			ca_pools?: [string]: string
			key_algorithm?:              string
			lifetime?:                   string
			rotation_window_percentage?: number
			use_default_shared_ca?:      bool
		})]

		// Represents config to add additional trusted trust domains.
		// Defines configuration for extending
		// trust to additional trust domains. By establishing trust with
		// another domain, the current
		// domain will recognize and accept certificates issued by
		// entities within the trusted domains.
		// Note that a trust domain automatically trusts itself,
		// eliminating the need for explicit
		// configuration.
		inline_trust_config?: [...close({
			additional_trust_bundles?: [...close({
				trust_anchors?: [...close({
					pem_certificate?: string
				})]
				trust_default_shared_ca?: bool
				trust_domain?:            string
			})]
		})]

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
}
