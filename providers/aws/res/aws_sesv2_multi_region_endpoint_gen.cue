package res

aws_sesv2_multi_region_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sesv2_multi_region_endpoint")
	close({
		details?: matchN(1, [#details, [...#details]])
		timeouts?: #timeouts
		arn?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		endpoint_id?:   string
		endpoint_name!: string
		routes?: [...close({
			region?: string
		})]
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#details: close({
		routes_details?: matchN(1, [_#defs."/$defs/details/$defs/routes_details", [..._#defs."/$defs/details/$defs/routes_details"]])
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
	})

	_#defs: "/$defs/details/$defs/routes_details": close({
		region!: string
	})
}
