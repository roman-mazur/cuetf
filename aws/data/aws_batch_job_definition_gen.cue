package data

#aws_batch_job_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_batch_job_definition")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                       string
		arn_prefix?:                   string
		container_orchestration_type?: string
		eks_properties?: [...close({
			pod_properties?: [...close({
				containers?: [...close({
					args?: [...string]
					command?: [...string]
					env?: [...close({
						name?:  string
						value?: string
					})]
					image?:             string
					image_pull_policy?: string
					name?:              string
					resources?: [...close({
						limits?: [string]:   string
						requests?: [string]: string
					})]
					security_context?: [...close({
						privileged?:                 bool
						read_only_root_file_system?: bool
						run_as_group?:               number
						run_as_non_root?:            bool
						run_as_user?:                number
					})]
					volume_mounts?: [...close({
						mount_path?: string
						name?:       string
						read_only?:  bool
					})]
				})]
				dns_policy?:   string
				host_network?: bool
				image_pull_secrets?: [...close({
					name?: string
				})]
				init_containers?: [...close({
					args?: [...string]
					command?: [...string]
					env?: [...close({
						name?:  string
						value?: string
					})]
					image?:             string
					image_pull_policy?: string
					name?:              string
					resources?: [...close({
						limits?: [string]:   string
						requests?: [string]: string
					})]
					security_context?: [...close({
						privileged?:                 bool
						read_only_root_file_system?: bool
						run_as_group?:               number
						run_as_non_root?:            bool
						run_as_user?:                number
					})]
					volume_mounts?: [...close({
						mount_path?: string
						name?:       string
						read_only?:  bool
					})]
				})]
				metadata?: [...close({
					labels?: [string]: string
				})]
				service_account_name?:    string
				share_process_namespace?: bool
				volumes?: [...close({
					empty_dir?: [...close({
						medium?:     string
						size_limit?: string
					})]
					host_path?: [...close({
						path?: string
					})]
					name?: string
					secret?: [...close({
						optional?:    bool
						secret_name?: string
					})]
				})]
			})]
		})]
		id?:   string
		name?: string
		node_properties?: [...close({
			main_node?: number
			node_range_properties?: [...close({
				container?: [...close({
					command?: [...string]
					environment?: [...close({
						name?:  string
						value?: string
					})]
					ephemeral_storage?: [...close({
						size_in_gib?: number
					})]
					execution_role_arn?: string
					fargate_platform_configuration?: [...close({
						platform_version?: string
					})]
					image?:         string
					instance_type?: string
					job_role_arn?:  string
					linux_parameters?: [...close({
						devices?: [...close({
							container_path?: string
							host_path?:      string
							permissions?: [...string]
						})]
						init_process_enabled?: bool
						max_swap?:             number
						shared_memory_size?:   number
						swappiness?:           number
						tmpfs?: [...close({
							container_path?: string
							mount_options?: [...string]
							size?: number
						})]
					})]
					log_configuration?: [...close({
						log_driver?: string
						options?: [string]: string
						secret_options?: [...close({
							name?:       string
							value_from?: string
						})]
					})]
					mount_points?: [...close({
						container_path?: string
						read_only?:      bool
						source_volume?:  string
					})]
					network_configuration?: [...close({
						assign_public_ip?: bool
					})]
					privileged?:               bool
					readonly_root_filesystem?: bool
					resource_requirements?: [...close({
						type?:  string
						value?: string
					})]
					runtime_platform?: [...close({
						cpu_architecture?:        string
						operating_system_family?: string
					})]
					secrets?: [...close({
						name?:       string
						value_from?: string
					})]
					ulimits?: [...close({
						hard_limit?: number
						name?:       string
						soft_limit?: number
					})]
					user?: string
					volumes?: [...close({
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
						host?: [...close({
							source_path?: string
						})]
						name?: string
					})]
				})]
				target_nodes?: string
			})]
			num_nodes?: number
		})]
		retry_strategy?: [...close({
			attempts?: number
			evaluate_on_exit?: [...close({
				action?:           string
				on_exit_code?:     string
				on_reason?:        string
				on_status_reason?: string
			})]
		})]
		revision?:            number
		scheduling_priority?: number
		status?:              string
		tags?: [string]: string
		timeout?: [...close({
			attempt_duration_seconds?: number
		})]
		type?: string
	})
}
