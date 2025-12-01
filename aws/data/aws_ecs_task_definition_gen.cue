package data

#aws_ecs_task_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ecs_task_definition")
	close({
		arn?:                    string
		arn_without_revision?:   string
		container_definitions?:  string
		cpu?:                    string
		enable_fault_injection?: bool
		ephemeral_storage?: [...close({
			size_in_gib?: number
		})]
		execution_role_arn?: string
		family?:             string
		id?:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		ipc_mode?:     string
		memory?:       string
		network_mode?: string
		pid_mode?:     string
		placement_constraints?: [...close({
			expression?: string
			type?:       string
		})]
		proxy_configuration?: [...close({
			container_name?: string
			properties?: [string]: string
			type?: string
		})]
		requires_compatibilities?: [...string]
		revision?: number
		runtime_platform?: [...close({
			cpu_architecture?:        string
			operating_system_family?: string
		})]
		status?:          string
		task_definition!: string
		task_role_arn?:   string
		volume?: [...close({
			configure_at_launch?: bool
			docker_volume_configuration?: [...close({
				autoprovision?: bool
				driver?:        string
				driver_opts?: [string]: string
				labels?: [string]:      string
				scope?: string
			})]
			efs_volume_configuration?: [...close({
				authorization_config?: [...close({
					access_point_id?: string
					iam?:             string
				})]
				file_system_id?:          string
				root_directory?:          string
				transit_encryption?:      string
				transit_encryption_port?: number
			})]
			fsx_windows_file_server_volume_configuration?: [...close({
				authorization_config?: [...close({
					credentials_parameter?: string
					domain?:                string
				})]
				file_system_id?: string
				root_directory?: string
			})]
			host_path?: string
			name?:      string
		})]
	})
}
