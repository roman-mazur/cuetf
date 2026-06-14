package res

#aws_ecs_daemon_task_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ecs_daemon_task_definition")
	close({
		container_definition?: matchN(1, [#container_definition, [...#container_definition]])
		volume?: matchN(1, [#volume, [...#volume]])
		arn?:                string
		cpu?:                string
		execution_role_arn?: string
		family!:             string
		memory?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		revision?: number
		status?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		task_role_arn?: string
	})

	#container_definition: close({
		depends_on?: matchN(1, [_#defs."/$defs/container_definition/$defs/depends_on", [..._#defs."/$defs/container_definition/$defs/depends_on"]])
		environment?: matchN(1, [_#defs."/$defs/container_definition/$defs/environment", [..._#defs."/$defs/container_definition/$defs/environment"]])
		environment_file?: matchN(1, [_#defs."/$defs/container_definition/$defs/environment_file", [..._#defs."/$defs/container_definition/$defs/environment_file"]])
		firelens_configuration?: matchN(1, [_#defs."/$defs/container_definition/$defs/firelens_configuration", [..._#defs."/$defs/container_definition/$defs/firelens_configuration"]])
		health_check?: matchN(1, [_#defs."/$defs/container_definition/$defs/health_check", [..._#defs."/$defs/container_definition/$defs/health_check"]])
		linux_parameters?: matchN(1, [_#defs."/$defs/container_definition/$defs/linux_parameters", [..._#defs."/$defs/container_definition/$defs/linux_parameters"]])
		log_configuration?: matchN(1, [_#defs."/$defs/container_definition/$defs/log_configuration", [..._#defs."/$defs/container_definition/$defs/log_configuration"]])
		mount_point?: matchN(1, [_#defs."/$defs/container_definition/$defs/mount_point", [..._#defs."/$defs/container_definition/$defs/mount_point"]])
		repository_credentials?: matchN(1, [_#defs."/$defs/container_definition/$defs/repository_credentials", [..._#defs."/$defs/container_definition/$defs/repository_credentials"]])
		restart_policy?: matchN(1, [_#defs."/$defs/container_definition/$defs/restart_policy", [..._#defs."/$defs/container_definition/$defs/restart_policy"]])
		secret?: matchN(1, [_#defs."/$defs/container_definition/$defs/secret", [..._#defs."/$defs/container_definition/$defs/secret"]])
		system_control?: matchN(1, [_#defs."/$defs/container_definition/$defs/system_control", [..._#defs."/$defs/container_definition/$defs/system_control"]])
		ulimit?: matchN(1, [_#defs."/$defs/container_definition/$defs/ulimit", [..._#defs."/$defs/container_definition/$defs/ulimit"]])
		command?: [...string]
		cpu?: number
		entry_point?: [...string]
		essential?:                bool
		image!:                    string
		interactive?:              bool
		memory?:                   number
		memory_reservation?:       number
		name?:                     string
		privileged?:               bool
		pseudo_terminal?:          bool
		readonly_root_filesystem?: bool
		start_timeout?:            number
		stop_timeout?:             number
		user?:                     string
		working_directory?:        string
	})

	#volume: close({
		host?: matchN(1, [_#defs."/$defs/volume/$defs/host", [..._#defs."/$defs/volume/$defs/host"]])
		name!: string
	})

	_#defs: "/$defs/container_definition/$defs/depends_on": close({
		condition!:      string
		container_name!: string
	})

	_#defs: "/$defs/container_definition/$defs/environment": close({
		name?:  string
		value?: string
	})

	_#defs: "/$defs/container_definition/$defs/environment_file": close({
		type!:  string
		value!: string
	})

	_#defs: "/$defs/container_definition/$defs/firelens_configuration": close({
		options?: [string]: string
		type!: string
	})

	_#defs: "/$defs/container_definition/$defs/health_check": close({
		command!: [...string]
		interval?:     number
		retries?:      number
		start_period?: number
		timeout?:      number
	})

	_#defs: "/$defs/container_definition/$defs/linux_parameters": close({
		capabilities?: matchN(1, [_#defs."/$defs/container_definition/$defs/linux_parameters/$defs/capabilities", [..._#defs."/$defs/container_definition/$defs/linux_parameters/$defs/capabilities"]])
		device?: matchN(1, [_#defs."/$defs/container_definition/$defs/linux_parameters/$defs/device", [..._#defs."/$defs/container_definition/$defs/linux_parameters/$defs/device"]])
		tmpfs?: matchN(1, [_#defs."/$defs/container_definition/$defs/linux_parameters/$defs/tmpfs", [..._#defs."/$defs/container_definition/$defs/linux_parameters/$defs/tmpfs"]])
		init_process_enabled?: bool
	})

	_#defs: "/$defs/container_definition/$defs/linux_parameters/$defs/capabilities": close({
		add?: [...string]
		drop?: [...string]
	})

	_#defs: "/$defs/container_definition/$defs/linux_parameters/$defs/device": close({
		container_path?: string
		host_path!:      string
		permissions?: [...string]
	})

	_#defs: "/$defs/container_definition/$defs/linux_parameters/$defs/tmpfs": close({
		container_path!: string
		mount_options?: [...string]
		size!: number
	})

	_#defs: "/$defs/container_definition/$defs/log_configuration": close({
		secret_option?: matchN(1, [_#defs."/$defs/container_definition/$defs/log_configuration/$defs/secret_option", [..._#defs."/$defs/container_definition/$defs/log_configuration/$defs/secret_option"]])
		log_driver!: string
		options?: [string]: string
	})

	_#defs: "/$defs/container_definition/$defs/log_configuration/$defs/secret_option": close({
		name!:       string
		value_from!: string
	})

	_#defs: "/$defs/container_definition/$defs/mount_point": close({
		container_path?: string
		read_only?:      bool
		source_volume?:  string
	})

	_#defs: "/$defs/container_definition/$defs/repository_credentials": close({
		credentials_parameter!: string
	})

	_#defs: "/$defs/container_definition/$defs/restart_policy": close({
		enabled!: bool
		ignored_exit_codes?: [...number]
		restart_attempt_period?: number
	})

	_#defs: "/$defs/container_definition/$defs/secret": close({
		name!:       string
		value_from!: string
	})

	_#defs: "/$defs/container_definition/$defs/system_control": close({
		namespace?: string
		value?:     string
	})

	_#defs: "/$defs/container_definition/$defs/ulimit": close({
		hard_limit!: number
		name!:       string
		soft_limit!: number
	})

	_#defs: "/$defs/volume/$defs/host": close({
		source_path?: string
	})
}
