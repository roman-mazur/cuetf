package res

#aws_m2_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_m2_environment")
	close({
		apply_changes_during_maintenance_window?: bool
		arn?:                                     string
		description?:                             string
		engine_type!:                             string
		engine_version?:                          string
		environment_id?:                          string
		force_update?:                            bool
		id?:                                      string
		instance_type!:                           string
		kms_key_id?:                              string
		load_balancer_arn?:                       string
		high_availability_config?: matchN(1, [#high_availability_config, [...#high_availability_config]])
		storage_configuration?: matchN(1, [#storage_configuration, [...#storage_configuration]])
		name!:                         string
		preferred_maintenance_window?: string
		publicly_accessible?:          bool
		region?:                       string
		security_group_ids?: [...string]
		subnet_ids?: [...string]
		tags?: [string]: string
		timeouts?: #timeouts
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
		create?: string
		delete?: string
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
