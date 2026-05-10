package res

#aws_outposts_capacity_task: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_outposts_capacity_task")
	close({
		instance_pool?: matchN(1, [#instance_pool, [...#instance_pool]])
		instances_to_exclude?: matchN(1, [#instances_to_exclude, [...#instances_to_exclude]])
		timeouts?:           #timeouts
		asset_id?:           string
		capacity_task_id?:   string
		completion_date?:    string
		creation_date?:      string
		failure_reason?:     string
		order_id?:           string
		outpost_identifier!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                            string
		status?:                            string
		task_action_on_blocking_instances?: string
	})

	#instance_pool: close({
		count!:         number
		instance_type!: string
	})

	#instances_to_exclude: close({
		instances!: [...string]
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
	})
}
