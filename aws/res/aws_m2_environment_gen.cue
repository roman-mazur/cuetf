package res

#aws_m2_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_m2_environment")
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
	name!:                                    string
	preferred_maintenance_window?:            string
	publicly_accessible?:                     bool
	security_group_ids?: [...string]
	subnet_ids?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	high_availability_config?: #high_availability_config | [...#high_availability_config]
	storage_configuration?: #storage_configuration | [...#storage_configuration]
	timeouts?: #timeouts

	#high_availability_config: desired_capacity!: number

	#storage_configuration: {
		efs?: #storage_configuration.#efs | [...#storage_configuration.#efs]
		fsx?: #storage_configuration.#fsx | [...#storage_configuration.#fsx]

		#efs: {
			file_system_id!: string
			mount_point!:    string
		}

		#fsx: {
			file_system_id!: string
			mount_point!:    string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
