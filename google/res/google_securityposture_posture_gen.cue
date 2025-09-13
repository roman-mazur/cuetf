package res

import "list"

#google_securityposture_posture: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_securityposture_posture")
	close({
		// Time the Posture was created in UTC.
		create_time?: string

		// Description of the posture.
		description?: string

		// For Resource freshness validation (https://google.aip.dev/154)
		etag?: string

		// Location of the resource, eg: global.
		location!: string
		id?:       string

		// Name of the posture.
		name?: string

		// The parent of the resource, an organization. Format should be
		// 'organizations/{organization_id}'.
		parent!: string

		// Id of the posture. It is an immutable field.
		posture_id!: string

		// If set, there are currently changes in flight to the posture.
		reconciling?: bool
		policy_sets?: matchN(1, [#policy_sets, [_, ...] & [...#policy_sets]])
		timeouts?: #timeouts

		// Revision_id of the posture.
		revision_id?: string

		// State of the posture. Update to state field should not be
		// triggered along with
		// with other field updates. Possible values: ["DEPRECATED",
		// "DRAFT", "ACTIVE"]
		state!: string

		// Time the Posture was updated in UTC.
		update_time?: string
	})

	#policy_sets: close({
		policies?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies", [_, ...] & [..._#defs."/$defs/policy_sets/$defs/policies"]])

		// Description of the policy set.
		description?: string

		// ID of the policy set.
		policy_set_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/policy_sets/$defs/policies": close({
		compliance_standards?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/compliance_standards", [..._#defs."/$defs/policy_sets/$defs/policies/$defs/compliance_standards"]])
		constraint?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint"]])

		// Description of the policy.
		description?: string

		// ID of the policy.
		policy_id!: string
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/compliance_standards": close({
		// Mapping of security controls for the policy.
		control?: string

		// Mapping of compliance standards for the policy.
		standard?: string
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint": close({
		org_policy_constraint?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint", list.MaxItems(1) & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint"]])
		org_policy_constraint_custom?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom", list.MaxItems(1) & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom"]])
		security_health_analytics_custom_module?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module", list.MaxItems(1) & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module"]])
		security_health_analytics_module?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_module", list.MaxItems(1) & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_module"]])
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint": close({
		policy_rules?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint/$defs/policy_rules", [_, ...] & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint/$defs/policy_rules"]])

		// Organization policy canned constraint Id
		canned_constraint_id!: string
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint/$defs/policy_rules": close({
		// Setting this to true means that all values are allowed. This
		// field can be set only in policies for list constraints.
		allow_all?: bool

		// Setting this to true means that all values are denied. This
		// field can be set only in policies for list constraints.
		deny_all?: bool
		condition?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint/$defs/policy_rules/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint/$defs/policy_rules/$defs/condition"]])

		// If 'true', then the policy is enforced. If 'false', then any
		// configuration is acceptable.
		// This field can be set only in policies for boolean constraints.
		enforce?: bool
		values?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint/$defs/policy_rules/$defs/values", list.MaxItems(1) & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint/$defs/policy_rules/$defs/values"]])
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint/$defs/policy_rules/$defs/condition": close({
		// Description of the expression
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting, e.g. a file name and a position in the file
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		title?: string
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint/$defs/policy_rules/$defs/values": close({
		// List of values allowed at this resource.
		allowed_values?: [...string]

		// List of values denied at this resource.
		denied_values?: [...string]
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom": close({
		custom_constraint?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/custom_constraint", list.MaxItems(1) & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/custom_constraint"]])
		policy_rules?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/policy_rules", [_, ...] & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/policy_rules"]])
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/custom_constraint": close({
		// The action to take if the condition is met. Possible values:
		// ["ALLOW", "DENY"]
		action_type!: string

		// A CEL condition that refers to a supported service resource,
		// for example 'resource.management.autoUpgrade == false'. For
		// details about CEL usage, see [Common Expression
		// Language](https://cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
		condition!: string

		// A human-friendly description of the constraint to display as an
		// error message when the policy is violated.
		description?: string

		// A human-friendly name for the constraint.
		display_name?: string

		// A list of RESTful methods for which to enforce the constraint.
		// Can be 'CREATE', 'UPDATE', or both. Not all Google Cloud
		// services support both methods. To see supported methods for
		// each service, find the service in [Supported
		// services](https://cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
		method_types!: [...string]

		// Immutable. The name of the custom constraint. This is unique
		// within the organization.
		name!: string

		// Immutable. The fully qualified name of the Google Cloud REST
		// resource containing the object and field you want to restrict.
		// For example, 'container.googleapis.com/NodePool'.
		resource_types!: [...string]
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/policy_rules": close({
		// Setting this to true means that all values are allowed. This
		// field can be set only in policies for list constraints.
		allow_all?: bool

		// Setting this to true means that all values are denied. This
		// field can be set only in policies for list constraints.
		deny_all?: bool
		condition?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/policy_rules/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/policy_rules/$defs/condition"]])

		// If 'true', then the policy is enforced. If 'false', then any
		// configuration is acceptable.
		// This field can be set only in policies for boolean constraints.
		enforce?: bool
		values?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/policy_rules/$defs/values", list.MaxItems(1) & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/policy_rules/$defs/values"]])
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/policy_rules/$defs/condition": close({
		// Description of the expression
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting, e.g. a file name and a position in the file
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		title?: string
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/org_policy_constraint_custom/$defs/policy_rules/$defs/values": close({
		// List of values allowed at this resource.
		allowed_values?: [...string]

		// List of values denied at this resource.
		denied_values?: [...string]
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module": close({
		// The display name of the Security Health Analytics custom
		// module. This
		// display name becomes the finding category for all findings that
		// are
		// returned by this custom module.
		display_name?: string
		config?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config"]])

		// A server generated id of custom module.
		id?: string

		// The state of enablement for the module at its level of the
		// resource hierarchy. Possible values:
		// ["ENABLEMENT_STATE_UNSPECIFIED", "ENABLED", "DISABLED"]
		module_enablement_state?: string
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config": close({
		// Text that describes the vulnerability or misconfiguration that
		// the custom
		// module detects.
		description?: string
		custom_output?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/custom_output", list.MaxItems(1) & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/custom_output"]])

		// An explanation of the recommended steps that security teams can
		// take to
		// resolve the detected issue
		recommendation?: string

		// The severity to assign to findings generated by the module.
		// Possible values: ["SEVERITY_UNSPECIFIED", "CRITICAL", "HIGH",
		// "MEDIUM", "LOW"]
		severity!: string
		predicate?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/predicate", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/predicate"]])
		resource_selector?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/resource_selector", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/resource_selector"]])
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/custom_output": close({
		properties?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/custom_output/$defs/properties", [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/custom_output/$defs/properties"]])
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/custom_output/$defs/properties": close({
		value_expression?: matchN(1, [_#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/custom_output/$defs/properties/$defs/value_expression", list.MaxItems(1) & [..._#defs."/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/custom_output/$defs/properties/$defs/value_expression"]])

		// Name of the property for the custom output.
		name!: string
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/custom_output/$defs/properties/$defs/value_expression": close({
		// Description of the expression
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting, e.g. a file name and a position in the file
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		title?: string
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/predicate": close({
		// Description of the expression
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting, e.g. a file name and a position in the file
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		title?: string
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_custom_module/$defs/config/$defs/resource_selector": close({
		// The resource types to run the detector on.
		resource_types!: [...string]
	})

	_#defs: "/$defs/policy_sets/$defs/policies/$defs/constraint/$defs/security_health_analytics_module": close({
		// The state of enablement for the module at its level of the
		// resource hierarchy. Possible values:
		// ["ENABLEMENT_STATE_UNSPECIFIED", "ENABLED", "DISABLED"]
		module_enablement_state?: string

		// The name of the module eg: BIGQUERY_TABLE_CMEK_DISABLED.
		module_name!: string
	})
}
