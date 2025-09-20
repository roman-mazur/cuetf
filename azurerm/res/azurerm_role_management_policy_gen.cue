package res

import "list"

#azurerm_role_management_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_role_management_policy")
	close({
		// The Description of the policy
		description?: string
		id?:          string

		// The name of the policy
		name?: string

		// ID of the Azure Role to which this policy is assigned
		role_definition_id!: string
		activation_rules?: matchN(1, [#activation_rules, list.MaxItems(1) & [...#activation_rules]])
		active_assignment_rules?: matchN(1, [#active_assignment_rules, list.MaxItems(1) & [...#active_assignment_rules]])
		eligible_assignment_rules?: matchN(1, [#eligible_assignment_rules, list.MaxItems(1) & [...#eligible_assignment_rules]])

		// The scope of the role to which this policy will apply
		scope!: string
		notification_rules?: matchN(1, [#notification_rules, list.MaxItems(1) & [...#notification_rules]])
		timeouts?: #timeouts
	})

	#activation_rules: close({
		// The time after which the an activation can be valid for
		maximum_duration?: string

		// Whether an approval is required for activation
		require_approval?: bool

		// Whether a justification is required during activation
		require_justification?: bool

		// Whether multi-factor authentication is required during
		// activation
		require_multifactor_authentication?: bool

		// Whether ticket information is required during activation
		require_ticket_info?: bool

		// Whether a conditional access context is required during
		// activation
		required_conditional_access_authentication_context?: string
		approval_stage?: matchN(1, [_#defs."/$defs/activation_rules/$defs/approval_stage", list.MaxItems(1) & [..._#defs."/$defs/activation_rules/$defs/approval_stage"]])
	})

	#active_assignment_rules: close({
		// Must the assignment have an expiry date
		expiration_required?: bool

		// The duration after which assignments expire
		expire_after?: string

		// Whether a justification is required to make an assignment
		require_justification?: bool

		// Whether multi-factor authentication is required to make an
		// assignment
		require_multifactor_authentication?: bool

		// Whether ticket information is required to make an assignment
		require_ticket_info?: bool
	})

	#eligible_assignment_rules: close({
		// Must the assignment have an expiry date
		expiration_required?: bool

		// The duration after which assignments expire
		expire_after?: string
	})

	#notification_rules: close({
		active_assignments?: matchN(1, [_#defs."/$defs/notification_rules/$defs/active_assignments", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/active_assignments"]])
		eligible_activations?: matchN(1, [_#defs."/$defs/notification_rules/$defs/eligible_activations", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/eligible_activations"]])
		eligible_assignments?: matchN(1, [_#defs."/$defs/notification_rules/$defs/eligible_assignments", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/eligible_assignments"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/activation_rules/$defs/approval_stage": close({
		primary_approver?: matchN(1, [_#defs."/$defs/activation_rules/$defs/approval_stage/$defs/primary_approver", [_, ...] & [..._#defs."/$defs/activation_rules/$defs/approval_stage/$defs/primary_approver"]])
	})

	_#defs: "/$defs/activation_rules/$defs/approval_stage/$defs/primary_approver": close({
		// The ID of the object to act as an approver
		object_id!: string

		// The type of object acting as an approver
		type!: string
	})

	_#defs: "/$defs/notification_rules/$defs/active_assignments": close({
		admin_notifications?: matchN(1, [_#defs."/$defs/notification_rules/$defs/active_assignments/$defs/admin_notifications", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/active_assignments/$defs/admin_notifications"]])
		approver_notifications?: matchN(1, [_#defs."/$defs/notification_rules/$defs/active_assignments/$defs/approver_notifications", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/active_assignments/$defs/approver_notifications"]])
		assignee_notifications?: matchN(1, [_#defs."/$defs/notification_rules/$defs/active_assignments/$defs/assignee_notifications", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/active_assignments/$defs/assignee_notifications"]])
	})

	_#defs: "/$defs/notification_rules/$defs/active_assignments/$defs/admin_notifications": close({
		// The additional recipients to notify
		additional_recipients?: [...string]

		// Whether the default recipients are notified
		default_recipients!: bool

		// What level of notifications are sent
		notification_level!: string
	})

	_#defs: "/$defs/notification_rules/$defs/active_assignments/$defs/approver_notifications": close({
		// The additional recipients to notify
		additional_recipients?: [...string]

		// Whether the default recipients are notified
		default_recipients!: bool

		// What level of notifications are sent
		notification_level!: string
	})

	_#defs: "/$defs/notification_rules/$defs/active_assignments/$defs/assignee_notifications": close({
		// The additional recipients to notify
		additional_recipients?: [...string]

		// Whether the default recipients are notified
		default_recipients!: bool

		// What level of notifications are sent
		notification_level!: string
	})

	_#defs: "/$defs/notification_rules/$defs/eligible_activations": close({
		admin_notifications?: matchN(1, [_#defs."/$defs/notification_rules/$defs/eligible_activations/$defs/admin_notifications", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/eligible_activations/$defs/admin_notifications"]])
		approver_notifications?: matchN(1, [_#defs."/$defs/notification_rules/$defs/eligible_activations/$defs/approver_notifications", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/eligible_activations/$defs/approver_notifications"]])
		assignee_notifications?: matchN(1, [_#defs."/$defs/notification_rules/$defs/eligible_activations/$defs/assignee_notifications", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/eligible_activations/$defs/assignee_notifications"]])
	})

	_#defs: "/$defs/notification_rules/$defs/eligible_activations/$defs/admin_notifications": close({
		// The additional recipients to notify
		additional_recipients?: [...string]

		// Whether the default recipients are notified
		default_recipients!: bool

		// What level of notifications are sent
		notification_level!: string
	})

	_#defs: "/$defs/notification_rules/$defs/eligible_activations/$defs/approver_notifications": close({
		// The additional recipients to notify
		additional_recipients?: [...string]

		// Whether the default recipients are notified
		default_recipients!: bool

		// What level of notifications are sent
		notification_level!: string
	})

	_#defs: "/$defs/notification_rules/$defs/eligible_activations/$defs/assignee_notifications": close({
		// The additional recipients to notify
		additional_recipients?: [...string]

		// Whether the default recipients are notified
		default_recipients!: bool

		// What level of notifications are sent
		notification_level!: string
	})

	_#defs: "/$defs/notification_rules/$defs/eligible_assignments": close({
		admin_notifications?: matchN(1, [_#defs."/$defs/notification_rules/$defs/eligible_assignments/$defs/admin_notifications", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/eligible_assignments/$defs/admin_notifications"]])
		approver_notifications?: matchN(1, [_#defs."/$defs/notification_rules/$defs/eligible_assignments/$defs/approver_notifications", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/eligible_assignments/$defs/approver_notifications"]])
		assignee_notifications?: matchN(1, [_#defs."/$defs/notification_rules/$defs/eligible_assignments/$defs/assignee_notifications", list.MaxItems(1) & [..._#defs."/$defs/notification_rules/$defs/eligible_assignments/$defs/assignee_notifications"]])
	})

	_#defs: "/$defs/notification_rules/$defs/eligible_assignments/$defs/admin_notifications": close({
		// The additional recipients to notify
		additional_recipients?: [...string]

		// Whether the default recipients are notified
		default_recipients!: bool

		// What level of notifications are sent
		notification_level!: string
	})

	_#defs: "/$defs/notification_rules/$defs/eligible_assignments/$defs/approver_notifications": close({
		// The additional recipients to notify
		additional_recipients?: [...string]

		// Whether the default recipients are notified
		default_recipients!: bool

		// What level of notifications are sent
		notification_level!: string
	})

	_#defs: "/$defs/notification_rules/$defs/eligible_assignments/$defs/assignee_notifications": close({
		// The additional recipients to notify
		additional_recipients?: [...string]

		// Whether the default recipients are notified
		default_recipients!: bool

		// What level of notifications are sent
		notification_level!: string
	})
}
