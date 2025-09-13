package res

#aws_prometheus_scraper: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prometheus_scraper")
	close({
		alias?: string
		destination?: matchN(1, [#destination, [...#destination]])
		arn?: string
		id?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		role_arn?: string
		role_configuration?: matchN(1, [#role_configuration, [...#role_configuration]])
		scrape_configuration!: string
		tags?: [string]: string
		source?: matchN(1, [#source, [...#source]])
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#destination: close({
		amp?: matchN(1, [_#defs."/$defs/destination/$defs/amp", [..._#defs."/$defs/destination/$defs/amp"]])
	})

	#role_configuration: close({
		source_role_arn?: string
		target_role_arn?: string
	})

	#source: close({
		eks?: matchN(1, [_#defs."/$defs/source/$defs/eks", [..._#defs."/$defs/source/$defs/eks"]])
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

	_#defs: "/$defs/destination/$defs/amp": close({
		workspace_arn!: string
	})

	_#defs: "/$defs/source/$defs/eks": close({
		cluster_arn!: string
		security_group_ids?: [...string]
		subnet_ids!: [...string]
	})
}
