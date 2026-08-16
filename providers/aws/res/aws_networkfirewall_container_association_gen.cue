package res

aws_networkfirewall_container_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkfirewall_container_association")
	close({
		container_monitoring_configuration?: matchN(1, [#container_monitoring_configuration, [...#container_monitoring_configuration]])
		timeouts?:                  #timeouts
		container_association_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		container_association_name!: string
		description?:                string
		resolved_cidr_count?:        number
		tags?: [string]:     string
		tags_all?: [string]: string
		type!:         string
		update_token?: string
	})

	#container_monitoring_configuration: close({
		attribute_filter?: matchN(1, [_#defs."/$defs/container_monitoring_configuration/$defs/attribute_filter", [..._#defs."/$defs/container_monitoring_configuration/$defs/attribute_filter"]])
		cluster_arn!: string
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

	_#defs: "/$defs/container_monitoring_configuration/$defs/attribute_filter": close({
		key!:   string
		value!: string
	})
}
