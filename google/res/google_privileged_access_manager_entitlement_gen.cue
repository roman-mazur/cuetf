package res

import "list"

#google_privileged_access_manager_entitlement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_privileged_access_manager_entitlement")
	close({
		// Output only. Create time stamp. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z"
		create_time?: string

		// The ID to use for this Entitlement. This will become the last
		// part of the resource name.
		// This value should be 4-63 characters, and valid characters are
		// "[a-z]", "[0-9]", and "-". The first character should be from
		// [a-z].
		// This value should be unique among all other Entitlements under
		// the specified 'parent'.
		entitlement_id!: string

		// For Resource freshness validation (https://google.aip.dev/154)
		etag?: string

		// The region of the Entitlement resource.
		location!: string
		id?:       string

		// The maximum amount of time for which access would be granted
		// for a request.
		// A requester can choose to ask for access for less than this
		// duration but never more.
		// Format: calculate the time in seconds and concatenate it with
		// 's' i.e. 2 hours = "7200s", 45 minutes = "2700s"
		max_request_duration!: string

		// Output Only. The entitlement's name follows a hierarchical
		// structure, comprising the organization, folder, or project,
		// alongside the region and a unique entitlement ID.
		// Formats:
		// organizations/{organization-number}/locations/{region}/entitlements/{entitlement-id},
		// folders/{folder-number}/locations/{region}/entitlements/{entitlement-id},
		// and
		// projects/{project-id|project-number}/locations/{region}/entitlements/{entitlement-id}.
		name?: string

		// Format: projects/{project-id|project-number} or
		// organizations/{organization-number} or folders/{folder-number}
		parent!: string
		additional_notification_targets?: matchN(1, [#additional_notification_targets, list.MaxItems(1) & [...#additional_notification_targets]])
		approval_workflow?: matchN(1, [#approval_workflow, list.MaxItems(1) & [...#approval_workflow]])
		eligible_users?: matchN(1, [#eligible_users, [_, ...] & [...#eligible_users]])
		privileged_access?: matchN(1, [#privileged_access, list.MaxItems(1) & [_, ...] & [...#privileged_access]])
		requester_justification_config?: matchN(1, [#requester_justification_config, list.MaxItems(1) & [_, ...] & [...#requester_justification_config]])
		timeouts?: #timeouts

		// Output only. The current state of the Entitlement.
		state?: string

		// Output only. Update time stamp. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#additional_notification_targets: close({
		// Optional. Additional email addresses to be notified when a
		// principal(requester) is granted access.
		admin_email_recipients?: [...string]

		// Optional. Additional email address to be notified about an
		// eligible entitlement.
		requester_email_recipients?: [...string]
	})

	#approval_workflow: close({
		manual_approvals?: matchN(1, [_#defs."/$defs/approval_workflow/$defs/manual_approvals", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/approval_workflow/$defs/manual_approvals"]])
	})

	#eligible_users: close({
		// Users who are being allowed for the operation. Each entry
		// should be a valid v1 IAM Principal Identifier. Format for
		// these is documented at
		// "https://cloud.google.com/iam/docs/principal-identifiers#v1"
		principals!: [...string]
	})

	#privileged_access: close({
		gcp_iam_access?: matchN(1, [_#defs."/$defs/privileged_access/$defs/gcp_iam_access", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/privileged_access/$defs/gcp_iam_access"]])
	})

	#requester_justification_config: close({
		not_mandatory?: matchN(1, [_#defs."/$defs/requester_justification_config/$defs/not_mandatory", list.MaxItems(1) & [..._#defs."/$defs/requester_justification_config/$defs/not_mandatory"]])
		unstructured?: matchN(1, [_#defs."/$defs/requester_justification_config/$defs/unstructured", list.MaxItems(1) & [..._#defs."/$defs/requester_justification_config/$defs/unstructured"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/approval_workflow/$defs/manual_approvals": close({
		steps?: matchN(1, [_#defs."/$defs/approval_workflow/$defs/manual_approvals/$defs/steps", [_, ...] & [..._#defs."/$defs/approval_workflow/$defs/manual_approvals/$defs/steps"]])

		// Optional. Do the approvers need to provide a justification for
		// their actions?
		require_approver_justification?: bool
	})

	_#defs: "/$defs/approval_workflow/$defs/manual_approvals/$defs/steps": close({
		approvers?: matchN(1, [_#defs."/$defs/approval_workflow/$defs/manual_approvals/$defs/steps/$defs/approvers", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/approval_workflow/$defs/manual_approvals/$defs/steps/$defs/approvers"]])

		// How many users from the above list need to approve.
		// If there are not enough distinct users in the list above then
		// the workflow
		// will indefinitely block. Should always be greater than 0.
		// Currently 1 is the only
		// supported value.
		approvals_needed?: number

		// Optional. Additional email addresses to be notified when a
		// grant is pending approval.
		approver_email_recipients?: [...string]
	})

	_#defs: "/$defs/approval_workflow/$defs/manual_approvals/$defs/steps/$defs/approvers": close({
		// Users who are being allowed for the operation. Each entry
		// should be a valid v1 IAM Principal Identifier. Format for
		// these is documented at:
		// https://cloud.google.com/iam/docs/principal-identifiers#v1
		principals!: [...string]
	})

	_#defs: "/$defs/privileged_access/$defs/gcp_iam_access": close({
		role_bindings?: matchN(1, [_#defs."/$defs/privileged_access/$defs/gcp_iam_access/$defs/role_bindings", [_, ...] & [..._#defs."/$defs/privileged_access/$defs/gcp_iam_access/$defs/role_bindings"]])

		// Name of the resource.
		resource!: string

		// The type of this resource.
		resource_type!: string
	})

	_#defs: "/$defs/privileged_access/$defs/gcp_iam_access/$defs/role_bindings": close({
		// The expression field of the IAM condition to be associated with
		// the role. If specified, a user with an active grant for this
		// entitlement would be able to access the resource only if this
		// condition evaluates to true for their request.
		// https://cloud.google.com/iam/docs/conditions-overview#attributes.
		condition_expression?: string

		// IAM role to be granted.
		// https://cloud.google.com/iam/docs/roles-overview.
		role!: string
	})

	_#defs: "/$defs/requester_justification_config/$defs/not_mandatory": close({})

	_#defs: "/$defs/requester_justification_config/$defs/unstructured": close({})
}
