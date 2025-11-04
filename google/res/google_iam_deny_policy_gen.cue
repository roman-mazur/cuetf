package res

import "list"

#google_iam_deny_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_iam_deny_policy")
	close({
		// The display name of the rule.
		display_name?: string

		// The hash of the resource. Used internally during updates.
		etag?: string
		rules!: matchN(1, [#rules, [_, ...] & [...#rules]])

		// The name of the policy.
		name!:     string
		id?:       string
		timeouts?: #timeouts

		// The attachment point is identified by its URL-encoded full
		// resource name.
		parent!: string
	})

	#rules: close({
		deny_rule?: matchN(1, [_#defs."/$defs/rules/$defs/deny_rule", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/deny_rule"]])

		// The description of the rule.
		description?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rules/$defs/deny_rule": close({
		// The permissions that are explicitly denied by this rule. Each
		// permission uses the format '{service-fqdn}/{resource}.{verb}',
		// where '{service-fqdn}' is the fully qualified domain name for
		// the service. For example, 'iam.googleapis.com/roles.list'.
		denied_permissions?: [...string]

		// The identities that are prevented from using one or more
		// permissions on Google Cloud resources.
		denied_principals?: [...string]

		// Specifies the permissions that this rule excludes from the set
		// of denied permissions given by deniedPermissions.
		// If a permission appears in deniedPermissions and in
		// exceptionPermissions then it will not be denied.
		// The excluded permissions can be specified using the same syntax
		// as deniedPermissions.
		exception_permissions?: [...string]
		denial_condition?: matchN(1, [_#defs."/$defs/rules/$defs/deny_rule/$defs/denial_condition", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/deny_rule/$defs/denial_condition"]])

		// The identities that are excluded from the deny rule, even if
		// they are listed in the deniedPrincipals.
		// For example, you could add a Google group to the
		// deniedPrincipals, then exclude specific users who belong to
		// that group.
		exception_principals?: [...string]
	})

	_#defs: "/$defs/rules/$defs/deny_rule/$defs/denial_condition": close({
		// Description of the expression. This is a longer text which
		// describes the expression,
		// e.g. when hovered over it in a UI.
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting,
		// e.g. a file name and a position in the file.
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		// This can be used e.g. in UIs which allow to enter the
		// expression.
		title?: string
	})
}
