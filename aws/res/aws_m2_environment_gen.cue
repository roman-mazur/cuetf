package res

#aws_m2_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_m2_environment")
	close({
		apply_changes_during_maintenance_window?: bool
		high_availability_config?: matchN(1, [#high_availability_config, [...#high_availability_config]])
		arn?:            string
		description?:    string
		engine_type!:    string
		engine_version?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		environment_id?: string
		force_update?:   bool
		id?:             string
		instance_type!:  string
		kms_key_id?:     string
		storage_configuration?: matchN(1, [#storage_configuration, [...#storage_configuration]])
		load_balancer_arn?:            string
		name!:                         string
		timeouts?:                     #timeouts
		preferred_maintenance_window?: string
		publicly_accessible?:          bool
		security_group_ids?: [...string]
		subnet_ids?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#high_availability_config: close({
		desired_capacity!: number
	})

	#storage_configuration: close({
		efs?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/efs", [..._#defs."/$defs/storage_configuration/$defs/efs"]])
		fsx?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/fsx", [..._#defs."/$defs/storage_configuration/$defs/fsx"]])
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

	_#defs: "/$defs/storage_configuration/$defs/efs": close({
		file_system_id!: string
		mount_point!:    string
	})

	_#defs: "/$defs/storage_configuration/$defs/fsx": close({
		file_system_id!: string
		mount_point!:    string
	})
}
