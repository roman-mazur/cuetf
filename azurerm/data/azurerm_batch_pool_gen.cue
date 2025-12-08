package data

#azurerm_batch_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_batch_pool")
	close({
		account_name!: string
		auto_scale?: [...close({
			evaluation_interval?: string
			formula?:             string
		})]
		certificate?: [...close({
			id?:             string
			store_location?: string
			store_name?:     string
			visibility?: [...string]
		})]
		container_configuration?: [...close({
			container_image_names?: [...string]
			container_registries?: [...close({
				password?:                  string
				registry_server?:           string
				user_assigned_identity_id?: string
				user_name?:                 string
			})]
			type?: string
		})]
		data_disks?: [...close({
			caching?:              string
			disk_size_gb?:         number
			lun?:                  number
			storage_account_type?: string
		})]
		disk_encryption?: [...close({
			disk_encryption_target?: string
		})]
		display_name?: string
		extensions?: [...close({
			auto_upgrade_minor_version?: bool
			name?:                       string
			protected_settings?:         string
			provision_after_extensions?: [...string]
			publisher?:            string
			settings_json?:        string
			type?:                 string
			type_handler_version?: string
		})]
		fixed_scale?: [...close({
			resize_timeout?:            string
			target_dedicated_nodes?:    number
			target_low_priority_nodes?: number
		})]
		id?:                       string
		inter_node_communication?: string
		license_type?:             string
		max_tasks_per_node?:       number
		metadata?: [string]: string
		mount?: [...close({
			azure_blob_file_system?: [...close({
				account_key?:         string
				account_name?:        string
				blobfuse_options?:    string
				container_name?:      string
				identity_id?:         string
				relative_mount_path?: string
				sas_key?:             string
			})]
			azure_file_share?: [...close({
				account_key?:         string
				account_name?:        string
				azure_file_url?:      string
				mount_options?:       string
				relative_mount_path?: string
			})]
			cifs_mount?: [...close({
				mount_options?:       string
				password?:            string
				relative_mount_path?: string
				source?:              string
				user_name?:           string
			})]
			nfs_mount?: [...close({
				mount_options?:       string
				relative_mount_path?: string
				source?:              string
			})]
		})]
		name!: string
		network_configuration?: [...close({
			accelerated_networking_enabled?: bool
			dynamic_vnet_assignment_scope?:  string
			endpoint_configuration?: [...close({
				backend_port?:        number
				frontend_port_range?: string
				name?:                string
				network_security_group_rules?: [...close({
					access?:                string
					priority?:              number
					source_address_prefix?: string
					source_port_ranges?: [...string]
				})]
				protocol?: string
			})]
			public_address_provisioning_type?: string
			public_ips?: [...string]
			subnet_id?: string
		})]
		node_agent_sku_id?: string
		node_placement?: [...close({
			policy?: string
		})]
		os_disk_placement?:   string
		resource_group_name!: string
		timeouts?:            #timeouts
		start_task?: [...close({
			command_line?: string
			common_environment_properties?: [string]: string
			container?: [...close({
				image_name?: string
				registry?: [...close({
					password?:                  string
					registry_server?:           string
					user_assigned_identity_id?: string
					user_name?:                 string
				})]
				run_options?:       string
				working_directory?: string
			})]
			resource_file?: [...close({
				auto_storage_container_name?: string
				blob_prefix?:                 string
				file_mode?:                   string
				file_path?:                   string
				http_url?:                    string
				storage_container_url?:       string
				user_assigned_identity_id?:   string
			})]
			task_retry_maximum?: number
			user_identity?: [...close({
				auto_user?: [...close({
					elevation_level?: string
					scope?:           string
				})]
				user_name?: string
			})]
			wait_for_success?: bool
		})]
		storage_image_reference?: [...close({
			id?:        string
			offer?:     string
			publisher?: string
			sku?:       string
			version?:   string
		})]
		task_scheduling_policy?: [...close({
			node_fill_type?: string
		})]
		user_accounts?: [...close({
			elevation_level?: string
			linux_user_configuration?: [...close({
				gid?:             number
				ssh_private_key?: string
				uid?:             number
			})]
			name?:     string
			password?: string
			windows_user_configuration?: [...close({
				login_mode?: string
			})]
		})]
		vm_size?: string
		windows?: [...close({
			enable_automatic_updates?: bool
		})]
	})

	#timeouts: close({
		read?: string
	})
}
