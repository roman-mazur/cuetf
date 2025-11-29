package data

#google_iam_workload_identity_pool_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_iam_workload_identity_pool_provider")
	close({
		// [A Common Expression
		// Language](https://opensource.google/projects/cel) expression,
		// in
		// plain text, to restrict what otherwise valid authentication
		// credentials issued by the
		// provider should not be accepted.
		//
		// The expression must output a boolean representing whether to
		// allow the federation.
		//
		// The following keywords may be referenced in the expressions:
		// * 'assertion': JSON representing the authentication credential
		// issued by the provider.
		// * 'google': The Google attributes mapped from the assertion in
		// the 'attribute_mappings'.
		// * 'attribute': The custom attributes mapped from the assertion
		// in the 'attribute_mappings'.
		//
		// The maximum length of the attribute condition expression is
		// 4096 characters. If
		// unspecified, all valid authentication credential are accepted.
		//
		// The following example shows how to only allow credentials with
		// a mapped 'google.groups'
		// value of 'admins':
		// '''
		// "'admins' in google.groups"
		// '''
		attribute_condition?: string

		// Maps attributes from authentication credentials issued by an
		// external identity provider
		// to Google Cloud attributes, such as 'subject' and 'segment'.
		//
		// Each key must be a string specifying the Google Cloud IAM
		// attribute to map to.
		//
		// The following keys are supported:
		// * 'google.subject': The principal IAM is authenticating. You
		// can reference this value
		// in IAM bindings. This is also the subject that appears in Cloud
		// Logging logs.
		// Cannot exceed 127 characters.
		// * 'google.groups': Groups the external identity belongs to. You
		// can grant groups
		// access to resources using an IAM 'principalSet' binding; access
		// applies to all
		// members of the group.
		//
		// You can also provide custom attributes by specifying
		// 'attribute.{custom_attribute}',
		// where '{custom_attribute}' is the name of the custom attribute
		// to be mapped. You can
		// define a maximum of 50 custom attributes. The maximum length of
		// a mapped attribute key
		// is 100 characters, and the key may only contain the characters
		// [a-z0-9_].
		//
		// You can reference these attributes in IAM policies to define
		// fine-grained access for a
		// workload to Google Cloud resources. For example:
		// * 'google.subject':
		// 'principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}'
		// * 'google.groups':
		// 'principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}'
		// * 'attribute.{custom_attribute}':
		// 'principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}'
		//
		// Each value must be a [Common Expression
		// Language](https://opensource.google/projects/cel)
		// function that maps an identity provider credential to the
		// normalized attribute specified
		// by the corresponding map key.
		//
		// You can use the 'assertion' keyword in the expression to access
		// a JSON representation of
		// the authentication credential issued by the provider.
		//
		// The maximum length of an attribute mapping expression is 2048
		// characters. When evaluated,
		// the total size of all mapped attributes must not exceed 8KB.
		//
		// For AWS providers, the following rules apply:
		// - If no attribute mapping is defined, the following default
		// mapping applies:
		// '''
		// {
		// "google.subject":"assertion.arn",
		// "attribute.aws_role":
		// "assertion.arn.contains('assumed-role')"
		// " ? assertion.arn.extract('{account_arn}assumed-role/')"
		// " + 'assumed-role/'"
		// " + assertion.arn.extract('assumed-role/{role_name}/')"
		// " : assertion.arn",
		// }
		// '''
		// - If any custom attribute mappings are defined, they must
		// include a mapping to the
		// 'google.subject' attribute.
		//
		// For OIDC providers, the following rules apply:
		// - Custom attribute mappings must be defined, and must include a
		// mapping to the
		// 'google.subject' attribute. For example, the following maps the
		// 'sub' claim of the
		// incoming credential to the 'subject' attribute on a Google
		// token.
		// '''
		// {"google.subject": "assertion.sub"}
		// '''
		attribute_mapping?: [string]: string

		// An Amazon Web Services identity provider. Not compatible with
		// the property oidc or saml.
		aws?: [...close({
			account_id?: string
		})]

		// A description for the provider. Cannot exceed 256 characters.
		description?: string

		// Whether the provider is disabled. You cannot use a disabled
		// provider to exchange tokens.
		// However, existing tokens still grant access.
		disabled?: bool

		// A display name for the provider. Cannot exceed 32 characters.
		display_name?: string

		// The resource name of the provider as
		// 'projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/providers/{workload_identity_pool_provider_id}'.
		name?: string

		// An OpenId Connect 1.0 identity provider. Not compatible with
		// the property aws or saml.
		oidc?: [...close({
			allowed_audiences?: [...string]
			issuer_uri?: string
			jwks_json?:  string
		})]
		id?:      string
		project?: string

		// An SAML 2.0 identity provider. Not compatible with the property
		// oidc or aws.
		saml?: [...close({
			idp_metadata_xml?: string
		})]

		// The state of the provider.
		// * STATE_UNSPECIFIED: State unspecified.
		// * ACTIVE: The provider is active, and may be used to validate
		// authentication credentials.
		// * DELETED: The provider is soft-deleted. Soft-deleted providers
		// are permanently deleted
		// after approximately 30 days. You can restore a soft-deleted
		// provider using
		// UndeleteWorkloadIdentityPoolProvider. You cannot reuse the ID
		// of a soft-deleted provider
		// until it is permanently deleted.
		state?: string

		// The ID used for the pool, which is the final component of the
		// pool resource name. This
		// value should be 4-32 characters, and may contain the characters
		// [a-z0-9-]. The prefix
		// 'gcp-' is reserved for use by Google, and may not be specified.
		workload_identity_pool_id!: string

		// The ID for the provider, which becomes the final component of
		// the resource name. This
		// value must be 4-32 characters, and may contain the characters
		// [a-z0-9-]. The prefix
		// 'gcp-' is reserved for use by Google, and may not be specified.
		workload_identity_pool_provider_id!: string

		// An X.509-type identity provider represents a CA. It is trusted
		// to assert a
		// client identity if the client has a certificate that chains up
		// to this CA.
		x509?: [...close({
			trust_store?: [...close({
				intermediate_cas?: [...close({
					pem_certificate?: string
				})]
				trust_anchors?: [...close({
					pem_certificate?: string
				})]
			})]
		})]
	})
}
