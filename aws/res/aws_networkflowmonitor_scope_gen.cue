package res

#aws_networkflowmonitor_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkflowmonitor_scope")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		scope_arn?: string
		scope_id?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
		target?: matchN(1, [#target, [...#target]])
		timeouts?: #timeouts
	})

	#target: close({
		target_identifier?: matchN(1, [_#defs."/$defs/target/$defs/target_identifier", [..._#defs."/$defs/target/$defs/target_identifier"]])
		region!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/target/$defs/target_identifier": close({
		target_id?: matchN(1, [_#defs."/$defs/target/$defs/target_identifier/$defs/target_id", [..._#defs."/$defs/target/$defs/target_identifier/$defs/target_id"]])
		target_type!: string
	})

	_#defs: "/$defs/target/$defs/target_identifier/$defs/target_id": close({
		account_id!: string
	})
}
