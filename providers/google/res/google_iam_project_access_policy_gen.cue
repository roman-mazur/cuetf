package res

import "list"

google_iam_project_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iam_project_access_policy")
	close({
		details?: matchN(1, [#details, list.MaxItems(1) & [...#details]])
		timeouts?: #timeouts

		// The ID to use for the access policy, which
		// will become the final component of the access policy's
		// resource name.
		// This value must start with a lowercase letter followed by up to 62
		// lowercase letters, numbers, hyphens, or dots. Pattern,
		// /a-z{2,62}/.
		// This value must be unique among all access policies with the same parent.
		access_policy_id!: string

		// User defined annotations. See https://google.aip.dev/148#annotations for
		// more details such as format and size limitations
		//
		// **Note**: This field is non-authoritative, and will only manage the
		// annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of the annotations
		// present on the resource.
		annotations?: [string]: string

		// The time when the access policy was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The description of the access policy. Must be less than
		// or equal to 63 characters.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in GCP,
		// including the annotations configured through Terraform, other clients and
		// services.
		effective_annotations?: [string]: string

		// The etag for the access policy.
		// If this is provided on update, it must match the server's etag.
		etag?: string
		id?:   string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. The resource name of the access policy.
		// The following formats are supported:
		// * 'projects/{project_id}/locations/{location}/accessPolicies/{policy_id}'
		// * 'projects/{project_number}/locations/{location}/accessPolicies/{policy_id}'
		// * 'folders/{folder_id}/locations/{location}/accessPolicies/{policy_id}'
		// * 'organizations/{organization_id}/locations/{location}/accessPolicies/{policy_id}'
		name?: string

		// The globally unique ID of the access policy.
		uid?:     string
		project?: string

		// The time when the access policy was most recently
		// updated.
		update_time?: string
	})

	#details: close({
		rules!: matchN(1, [_#defs."/$defs/details/$defs/rules", [_, ...] & [..._#defs."/$defs/details/$defs/rules"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/details/$defs/rules": close({
		conditions?: matchN(1, [_#defs."/$defs/details/$defs/rules/$defs/conditions", [..._#defs."/$defs/details/$defs/rules/$defs/conditions"]])
		operation!: matchN(1, [_#defs."/$defs/details/$defs/rules/$defs/operation", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/details/$defs/rules/$defs/operation"]])

		// Customer specified description of the rule. Must be less than or equal to
		// 256 characters.
		description?: string

		// The effect of the rule.
		// Possible values:
		// DENY
		// ALLOW Possible values: ["DENY", "ALLOW"]
		effect!: string

		// The identities that are excluded from the access policy rule, even if they
		// are listed in the 'principals'. For example, you could add a Google
		// group to the 'principals', then exclude specific users who belong to
		// that group.
		excluded_principals?: [...string]

		// The identities for which this rule's effect governs using one or more
		// permissions on Google Cloud resources. This field can contain the
		// following values:
		// * 'principal://goog/subject/{email_id}': A specific Google Account.
		// Includes Gmail, Cloud Identity, and Google Workspace user accounts. For
		// example, 'principal://goog/subject/alice@example.com'.
		// * 'principal://iam.googleapis.com/projects/-/serviceAccounts/{service_account_id}':
		// A Google Cloud service account. For example,
		// 'principal://iam.googleapis.com/projects/-/serviceAccounts/my-service-account@iam.gserviceaccount.com'.
		// * 'principalSet://goog/group/{group_id}': A Google group. For example,
		// 'principalSet://goog/group/admins@example.com'.
		// * 'principalSet://goog/cloudIdentityCustomerId/{customer_id}': All of the
		// principals associated with the specified Google Workspace or Cloud
		// Identity customer ID. For example,
		// 'principalSet://goog/cloudIdentityCustomerId/C01Abc35'.
		// If an identifier that was previously set on a policy is soft deleted, then
		// calls to read that policy will return the identifier with a deleted
		// prefix. Users cannot set identifiers with this syntax.
		// * 'deleted:principal://goog/subject/{email_id}?uid={uid}': A specific
		// Google Account that was deleted recently. For example,
		// 'deleted:principal://goog/subject/alice@example.com?uid=1234567890'. If
		// the Google Account is recovered, this identifier reverts to the standard
		// identifier for a Google Account.
		// * 'deleted:principalSet://goog/group/{group_id}?uid={uid}': A Google group
		// that was deleted recently. For example,
		// 'deleted:principalSet://goog/group/admins@example.com?uid=1234567890'.
		// If the Google group is restored, this identifier reverts to the standard
		// identifier for a Google group.
		// *
		// 'deleted:principal://iam.googleapis.com/projects/-/serviceAccounts/{service_account_id}?uid={uid}':
		// A Google Cloud service account that was deleted recently. For example,
		// 'deleted:principal://iam.googleapis.com/projects/-/serviceAccounts/my-service-account@iam.gserviceaccount.com?uid=1234567890'.
		// If the service account is undeleted, this identifier reverts to the
		// standard identifier for a service account.
		principals!: [...string]
	})

	_#defs: "/$defs/details/$defs/rules/$defs/conditions": close({
		// Textual representation of an expression in Common Expression Language
		// syntax.
		expression?: string
		service!:    string
	})

	_#defs: "/$defs/details/$defs/rules/$defs/operation": close({
		// Specifies the permissions that this rule excludes from the set of
		// affected permissions given by 'permissions'. If a permission appears in
		// 'permissions' _and_ in 'excluded_permissions' then it will _not_ be
		// subject to the policy effect.
		// The excluded permissions can be specified using the same syntax as
		// 'permissions'.
		excluded_permissions?: [...string]

		// The permissions that are explicitly affected by this rule. Each
		// permission uses the format '{service_fqdn}/{resource}.{verb}', where
		// '{service_fqdn}' is the fully qualified domain name for the service.
		// Currently supported permissions are as follows:
		// * 'eventarc.googleapis.com/messageBuses.publish'.
		permissions!: [...string]
	})
}
