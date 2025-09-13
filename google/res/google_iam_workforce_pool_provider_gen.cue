package res

import "list"

#google_iam_workforce_pool_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_iam_workforce_pool_provider")
	close({
		// A [Common Expression
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
		// 'google.profile_photo' and 'google.display_name' are not
		// supported.
		// * 'attribute': The custom attributes mapped from the assertion
		// in the 'attribute_mappings'.
		//
		// The maximum length of the attribute condition expression is
		// 4096 characters.
		// If unspecified, all valid authentication credentials will be
		// accepted.
		//
		// The following example shows how to only allow credentials with
		// a mapped 'google.groups' value of 'admins':
		// '''
		// "'admins' in google.groups"
		// '''
		attribute_condition?: string

		// Maps attributes from the authentication credentials issued by
		// an external identity provider
		// to Google Cloud attributes, such as 'subject' and 'segment'.
		//
		// Each key must be a string specifying the Google Cloud IAM
		// attribute to map to.
		//
		// The following keys are supported:
		// * 'google.subject': The principal IAM is authenticating. You
		// can reference this value in IAM bindings.
		// This is also the subject that appears in Cloud Logging logs.
		// This is a required field and
		// the mapped subject cannot exceed 127 bytes.
		// * 'google.groups': Groups the authenticating user belongs to.
		// You can grant groups access to
		// resources using an IAM 'principalSet' binding; access applies
		// to all members of the group.
		// * 'google.display_name': The name of the authenticated user.
		// This is an optional field and
		// the mapped display name cannot exceed 100 bytes. If not set,
		// 'google.subject' will be displayed instead.
		// This attribute cannot be referenced in IAM bindings.
		// * 'google.profile_photo': The URL that specifies the
		// authenticated user's thumbnail photo.
		// This is an optional field. When set, the image will be visible
		// as the user's profile picture.
		// If not set, a generic user icon will be displayed instead.
		// This attribute cannot be referenced in IAM bindings.
		//
		// You can also provide custom attributes by specifying
		// 'attribute.{custom_attribute}', where {custom_attribute}
		// is the name of the custom attribute to be mapped. You can
		// define a maximum of 50 custom attributes.
		// The maximum length of a mapped attribute key is 100 characters,
		// and the key may only contain the characters [a-z0-9_].
		//
		// You can reference these attributes in IAM policies to define
		// fine-grained access for a workforce pool
		// to Google Cloud resources. For example:
		// * 'google.subject':
		// 'principal://iam.googleapis.com/locations/{location}/workforcePools/{pool}/subject/{value}'
		// * 'google.groups':
		// 'principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/group/{value}'
		// * 'attribute.{custom_attribute}':
		// 'principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/attribute.{custom_attribute}/{value}'
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
		// For OIDC providers, you must supply a custom mapping that
		// includes the 'google.subject' attribute.
		// For example, the following maps the sub claim of the incoming
		// credential to the 'subject' attribute
		// on a Google token:
		// '''
		// {"google.subject": "assertion.sub"}
		// '''
		//
		// An object containing a list of '"key": value' pairs.
		// Example: '{ "name": "wrench", "mass": "1.3kg", "count": "3" }'.
		attribute_mapping?: [string]: string

		// A user-specified description of the provider. Cannot exceed 256
		// characters.
		description?: string

		// Whether the provider is disabled. You cannot use a disabled
		// provider to exchange tokens.
		// However, existing tokens still grant access.
		disabled?: bool

		// A user-specified display name for the provider. Cannot exceed
		// 32 characters.
		display_name?: string

		// The location for the resource.
		location!: string
		id?:       string

		// Output only. The resource name of the provider.
		// Format:
		// 'locations/{location}/workforcePools/{workforcePoolId}/providers/{providerId}'
		name?: string
		extra_attributes_oauth2_client?: matchN(1, [#extra_attributes_oauth2_client, list.MaxItems(1) & [...#extra_attributes_oauth2_client]])
		oidc?: matchN(1, [#oidc, list.MaxItems(1) & [...#oidc]])
		saml?: matchN(1, [#saml, list.MaxItems(1) & [...#saml]])

		// The ID for the provider, which becomes the final component of
		// the resource name.
		// This value must be 4-32 characters, and may contain the
		// characters [a-z0-9-].
		// The prefix 'gcp-' is reserved for use by Google, and may not be
		// specified.
		provider_id!: string
		timeouts?:    #timeouts

		// The current state of the provider.
		// * STATE_UNSPECIFIED: State unspecified.
		// * ACTIVE: The provider is active and may be used to validate
		// authentication credentials.
		// * DELETED: The provider is soft-deleted. Soft-deleted providers
		// are permanently
		// deleted after approximately 30 days. You can restore a
		// soft-deleted provider using
		// [providers.undelete](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools.providers/undelete#google.iam.admin.v1.WorkforcePools.UndeleteWorkforcePoolProvider).
		state?: string

		// The ID to use for the pool, which becomes the final component
		// of the resource name.
		// The IDs must be a globally unique string of 6 to 63 lowercase
		// letters, digits, or hyphens.
		// It must start with a letter, and cannot have a trailing hyphen.
		// The prefix 'gcp-' is reserved for use by Google, and may not be
		// specified.
		workforce_pool_id!: string
	})

	#extra_attributes_oauth2_client: close({
		// Represents the IdP and type of claims that should be fetched.
		// * AZURE_AD_GROUPS_MAIL: Used to get the user's group claims
		// from the Azure AD identity provider using configuration
		// provided
		// in ExtraAttributesOAuth2Client and 'mail' property of the
		// 'microsoft.graph.group' object is used for claim mapping.
		// See
		// https://learn.microsoft.com/en-us/graph/api/resources/group?view=graph-rest-1.0#properties
		// for more details on
		// 'microsoft.graph.group' properties. The attributes obtained
		// from idntity provider are mapped to 'assertion.groups'.
		// * AZURE_AD_GROUPS_ID: Used to get the user's group claims from
		// the Azure AD identity provider
		// using configuration provided in ExtraAttributesOAuth2Client and
		// 'id'
		// property of the 'microsoft.graph.group' object is used for
		// claim mapping. See
		// https://learn.microsoft.com/en-us/graph/api/resources/group?view=graph-rest-1.0#properties
		// for more details on 'microsoft.graph.group' properties. The
		// group IDs obtained from Azure AD are present in
		// 'assertion.groups' for
		// OIDC providers and 'assertion.attributes.groups' for SAML
		// providers for
		// attribute mapping. Possible values: ["AZURE_AD_GROUPS_MAIL",
		// "AZURE_AD_GROUPS_ID"]
		attributes_type!: string

		// The OAuth 2.0 client ID for retrieving extra attributes from
		// the identity provider. Required to get the Access Token using
		// client credentials grant flow.
		client_id!: string
		client_secret?: matchN(1, [_#defs."/$defs/extra_attributes_oauth2_client/$defs/client_secret", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/extra_attributes_oauth2_client/$defs/client_secret"]])

		// The OIDC identity provider's issuer URI. Must be a valid URI
		// using the 'https' scheme. Required to get the OIDC discovery
		// document.
		issuer_uri!: string
		query_parameters?: matchN(1, [_#defs."/$defs/extra_attributes_oauth2_client/$defs/query_parameters", list.MaxItems(1) & [..._#defs."/$defs/extra_attributes_oauth2_client/$defs/query_parameters"]])
	})

	#oidc: close({
		// The client ID. Must match the audience claim of the JWT issued
		// by the identity provider.
		client_id!: string

		// The OIDC issuer URI. Must be a valid URI using the 'https'
		// scheme.
		issuer_uri!: string
		client_secret?: matchN(1, [_#defs."/$defs/oidc/$defs/client_secret", list.MaxItems(1) & [..._#defs."/$defs/oidc/$defs/client_secret"]])

		// OIDC JWKs in JSON String format. For details on definition of a
		// JWK, see https:tools.ietf.org/html/rfc7517. If not set, then we
		// use the 'jwks_uri' from the discovery document fetched from the
		// .well-known path for the 'issuer_uri'. Currently, RSA and EC
		// asymmetric
		// keys are supported. The JWK must use following format and
		// include only
		// the following fields:
		// '''
		// {
		// "keys": [
		// {
		// "kty": "RSA/EC",
		// "alg": "<algorithm>",
		// "use": "sig",
		// "kid": "<key-id>",
		// "n": "",
		// "e": "",
		// "x": "",
		// "y": "",
		// "crv": ""
		// }
		// ]
		// }
		// '''
		jwks_json?: string
		web_sso_config?: matchN(1, [_#defs."/$defs/oidc/$defs/web_sso_config", list.MaxItems(1) & [..._#defs."/$defs/oidc/$defs/web_sso_config"]])
	})

	#saml: close({
		// SAML Identity provider configuration metadata xml doc.
		// The xml document should comply with [SAML 2.0
		// specification](https://docs.oasis-open.org/security/saml/v2.0/saml-metadata-2.0-os.pdf).
		// The max size of the acceptable xml document will be bounded to
		// 128k characters.
		//
		// The metadata xml document should satisfy the following
		// constraints:
		// 1) Must contain an Identity Provider Entity ID.
		// 2) Must contain at least one non-expired signing key
		// certificate.
		// 3) For each signing key:
		// a) Valid from should be no more than 7 days from now.
		// b) Valid to should be no more than 10 years in the future.
		// 4) Up to 3 IdP signing keys are allowed in the metadata xml.
		//
		// When updating the provider's metadata xml, at least one
		// non-expired signing key
		// must overlap with the existing metadata. This requirement is
		// skipped if there are
		// no non-expired signing keys present in the existing metadata.
		idp_metadata_xml!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/extra_attributes_oauth2_client/$defs/client_secret": close({
		value?: matchN(1, [_#defs."/$defs/extra_attributes_oauth2_client/$defs/client_secret/$defs/value", list.MaxItems(1) & [..._#defs."/$defs/extra_attributes_oauth2_client/$defs/client_secret/$defs/value"]])
	})

	_#defs: "/$defs/extra_attributes_oauth2_client/$defs/client_secret/$defs/value": close({
		// The plain text of the client secret value.
		plain_text!: string

		// A thumbprint to represent the current client secret value.
		thumbprint?: string
	})

	_#defs: "/$defs/extra_attributes_oauth2_client/$defs/query_parameters": close({
		// The filter used to request specific records from IdP. In case
		// of attributes type as AZURE_AD_GROUPS_MAIL and
		// AZURE_AD_GROUPS_ID, it represents the
		// filter used to request specific groups for users from IdP. By
		// default, all of the groups associated with the user are
		// fetched. The
		// groups should be security enabled. See
		// https://learn.microsoft.com/en-us/graph/search-query-parameter
		// for more details.
		filter?: string
	})

	_#defs: "/$defs/oidc/$defs/client_secret": close({
		value?: matchN(1, [_#defs."/$defs/oidc/$defs/client_secret/$defs/value", list.MaxItems(1) & [..._#defs."/$defs/oidc/$defs/client_secret/$defs/value"]])
	})

	_#defs: "/$defs/oidc/$defs/client_secret/$defs/value": close({
		// The plain text of the client secret value.
		plain_text!: string

		// A thumbprint to represent the current client secret value.
		thumbprint?: string
	})

	_#defs: "/$defs/oidc/$defs/web_sso_config": close({
		// Additional scopes to request for in the OIDC authentication
		// request on top of scopes requested by default. By default, the
		// 'openid', 'profile' and 'email' scopes that are supported by
		// the identity provider are requested.
		// Each additional scope may be at most 256 characters. A maximum
		// of 10 additional scopes may be configured.
		additional_scopes?: [...string]

		// The behavior for how OIDC Claims are included in the
		// 'assertion' object used for attribute mapping and attribute
		// condition.
		// * MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS: Merge the UserInfo
		// Endpoint Claims with ID Token Claims, preferring UserInfo
		// Claim Values for the same Claim Name. This option is available
		// only for the Authorization Code Flow.
		// * ONLY_ID_TOKEN_CLAIMS: Only include ID Token Claims. Possible
		// values: ["MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
		// "ONLY_ID_TOKEN_CLAIMS"]
		assertion_claims_behavior!: string

		// The Response Type to request for in the OIDC Authorization
		// Request for web sign-in.
		//
		// The 'CODE' Response Type is recommended to avoid the Implicit
		// Flow, for security reasons.
		// * CODE: The 'response_type=code' selection uses the
		// Authorization Code Flow for web sign-in. Requires a configured
		// client secret.
		// * ID_TOKEN: The 'response_type=id_token' selection uses the
		// Implicit Flow for web sign-in. Possible values: ["CODE",
		// "ID_TOKEN"]
		response_type!: string
	})
}
