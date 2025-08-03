package res

import "list"

#aws_ecs_task_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_task_definition")
	close({
		arn?:                  string
		arn_without_revision?: string
		ephemeral_storage?: matchN(1, [#ephemeral_storage, list.MaxItems(1) & [...#ephemeral_storage]])
		placement_constraints?: matchN(1, [#placement_constraints, list.MaxItems(10) & [...#placement_constraints]])
		proxy_configuration?: matchN(1, [#proxy_configuration, list.MaxItems(1) & [...#proxy_configuration]])
		runtime_platform?: matchN(1, [#runtime_platform, list.MaxItems(1) & [...#runtime_platform]])
		volume?: matchN(1, [#volume, [...#volume]])
		container_definitions!:  string
		cpu?:                    string
		enable_fault_injection?: bool
		execution_role_arn?:     string
		family!:                 string
		id?:                     string
		ipc_mode?:               string
		memory?:                 string
		network_mode?:           string
		pid_mode?:               string
		region?:                 string
		requires_compatibilities?: [...string]
		revision?:     number
		skip_destroy?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
		task_role_arn?: string
		track_latest?:  bool
	})

	#ephemeral_storage: close({
		size_in_gib!: number
	})

	#placement_constraints: close({
		expression?: string
		type!:       string
	})

	#proxy_configuration: close({
		container_name!: string
		properties?: [string]: string
		type?: string
	})

	#runtime_platform: close({
		cpu_architecture?:        string
		operating_system_family?: string
	})

	#volume: close({
		configure_at_launch?: bool
		host_path?:           string
		name!:                string
		docker_volume_configuration?: matchN(1, [_#defs."/$defs/volume/$defs/docker_volume_configuration", list.MaxItems(1) & [..._#defs."/$defs/volume/$defs/docker_volume_configuration"]])
		efs_volume_configuration?: matchN(1, [_#defs."/$defs/volume/$defs/efs_volume_configuration", list.MaxItems(1) & [..._#defs."/$defs/volume/$defs/efs_volume_configuration"]])
		fsx_windows_file_server_volume_configuration?: matchN(1, [_#defs."/$defs/volume/$defs/fsx_windows_file_server_volume_configuration", list.MaxItems(1) & [..._#defs."/$defs/volume/$defs/fsx_windows_file_server_volume_configuration"]])
	})

	_#defs: "/$defs/volume/$defs/docker_volume_configuration": close({
		autoprovision?: bool
		driver?:        string
		driver_opts?: [string]: string
		labels?: [string]:      string
		scope?: string
	})

	_#defs: "/$defs/volume/$defs/efs_volume_configuration": close({
		file_system_id!:          string
		root_directory?:          string
		transit_encryption?:      string
		transit_encryption_port?: number
		authorization_config?: matchN(1, [_#defs."/$defs/volume/$defs/efs_volume_configuration/$defs/authorization_config", list.MaxItems(1) & [..._#defs."/$defs/volume/$defs/efs_volume_configuration/$defs/authorization_config"]])
	})

	_#defs: "/$defs/volume/$defs/efs_volume_configuration/$defs/authorization_config": close({
		access_point_id?: string
		iam?:             string
	})

	_#defs: "/$defs/volume/$defs/fsx_windows_file_server_volume_configuration": close({
		file_system_id!: string
		root_directory!: string
		authorization_config?: matchN(1, [_#defs."/$defs/volume/$defs/fsx_windows_file_server_volume_configuration/$defs/authorization_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/volume/$defs/fsx_windows_file_server_volume_configuration/$defs/authorization_config"]])
	})

	_#defs: "/$defs/volume/$defs/fsx_windows_file_server_volume_configuration/$defs/authorization_config": close({
		credentials_parameter!: string
		domain!:                string
	})
}
