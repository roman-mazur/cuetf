package data

#google_privileged_access_manager_entitlement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_privileged_access_manager_entitlement")
	close({
		// AdditionalNotificationTargets includes email addresses to be
		// notified.
		additional_notification_targets?: [...close({
			admin_email_recipients?: [...string]
			requester_email_recipients?: [...string]
		})]

		// The approvals needed before access will be granted to a
		// requester.
		// No approvals will be needed if this field is null. Different
		// types of approval workflows that can be used to gate
		// privileged access granting.
		approval_workflow?: [...close({
			manual_approvals?: [...close({
				require_approver_justification?: bool
				steps?: [...close({
					approvals_needed?: number
					approver_email_recipients?: [...string]
					approvers?: [...close({
						principals?: [...string]
					})]
				})]
			})]
		})]

		// Output only. Create time stamp. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z"
		create_time?: string

		// Who can create Grants using Entitlement. This list should
		// contain at most one entry
		eligible_users?: [...close({
			principals?: [...string]
		})]

		// The ID to use for this Entitlement. This will become the last
		// part of the resource name.
		// This value should be 4-63 characters, and valid characters are
		// "[a-z]", "[0-9]", and "-". The first character should be from
		// [a-z].
		// This value should be unique among all other Entitlements under
		// the specified 'parent'.
		entitlement_id?: string

		// For Resource freshness validation (https://google.aip.dev/154)
		etag?: string

		// The region of the Entitlement resource.
		location?: string

		// The maximum amount of time for which access would be granted
		// for a request.
		// A requester can choose to ask for access for less than this
		// duration but never more.
		// Format: calculate the time in seconds and concatenate it with
		// 's' i.e. 2 hours = "7200s", 45 minutes = "2700s"
		max_request_duration?: string

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
		parent?: string
		id?:     string

		// Privileged access that this service can be used to gate.
		privileged_access?: [...close({
			gcp_iam_access?: [...close({
				resource?:      string
				resource_type?: string
				role_bindings?: [...close({
					condition_expression?: string
					role?:                 string
				})]
			})]
		})]

		// Defines the ways in which a requester should provide the
		// justification while requesting for access.
		requester_justification_config?: [...close({
			not_mandatory?: [...close({})]
			unstructured?: [...close({})]
		})]

		// Output only. The current state of the Entitlement.
		state?: string

		// Output only. Update time stamp. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})
}
