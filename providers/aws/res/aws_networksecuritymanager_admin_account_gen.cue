package res

aws_networksecuritymanager_admin_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networksecuritymanager_admin_account")
	close({
		admin_scope?: matchN(1, [#admin_scope, [...#admin_scope]])
		timeouts?:   #timeouts
		account_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		priority!: number
		status?:   string
	})

	#admin_scope: close({
		firewall_type_scope?: matchN(1, [_#defs."/$defs/admin_scope/$defs/firewall_type_scope", [..._#defs."/$defs/admin_scope/$defs/firewall_type_scope"]])
		scope_filter?: matchN(1, [_#defs."/$defs/admin_scope/$defs/scope_filter", [..._#defs."/$defs/admin_scope/$defs/scope_filter"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/admin_scope/$defs/firewall_type_scope": close({
		all_firewall_types_enabled?: bool
		firewall_types?: [...string]
	})

	_#defs: "/$defs/admin_scope/$defs/scope_filter": close({
		exclude_only?: matchN(1, [_#defs."/$defs/admin_scope/$defs/scope_filter/$defs/exclude_only", [..._#defs."/$defs/admin_scope/$defs/scope_filter/$defs/exclude_only"]])
		include_only?: matchN(1, [_#defs."/$defs/admin_scope/$defs/scope_filter/$defs/include_only", [..._#defs."/$defs/admin_scope/$defs/scope_filter/$defs/include_only"]])
		include_all?: bool
	})

	_#defs: "/$defs/admin_scope/$defs/scope_filter/$defs/exclude_only": close({
		accounts?: [...string]
		organizational_units?: [...string]
	})

	_#defs: "/$defs/admin_scope/$defs/scope_filter/$defs/include_only": close({
		accounts?: [...string]
		organizational_units?: [...string]
	})
}
