package res

#aws_shield_drt_access_role_arn_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_shield_drt_access_role_arn_association")
	close({
		timeouts?: #timeouts
		id?:       string
		role_arn!: string
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
}
