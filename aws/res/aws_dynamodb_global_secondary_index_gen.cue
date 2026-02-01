package res

#aws_dynamodb_global_secondary_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dynamodb_global_secondary_index")
	close({
		key_schema?: matchN(1, [#key_schema, [...#key_schema]])
		arn?:        string
		index_name!: string
		on_demand_throughput?: matchN(1, [#on_demand_throughput, [...#on_demand_throughput]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		table_name!: string
		warm_throughput?: close({
			read_units_per_second?:  number
			write_units_per_second?: number
		})
		projection?: matchN(1, [#projection, [...#projection]])
		provisioned_throughput?: matchN(1, [#provisioned_throughput, [...#provisioned_throughput]])
		timeouts?: #timeouts
	})

	#key_schema: close({
		attribute_name!: string
		attribute_type!: string
		key_type!:       string
	})

	#on_demand_throughput: close({
		max_read_request_units?:  number
		max_write_request_units?: number
	})

	#projection: close({
		non_key_attributes?: [...string]
		projection_type!: string
	})

	#provisioned_throughput: close({
		read_capacity_units?:  number
		write_capacity_units?: number
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
