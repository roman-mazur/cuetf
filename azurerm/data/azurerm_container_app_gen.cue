package data

#azurerm_container_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_container_app")
	close({
		container_app_environment_id?: string

		// The ID of the Custom Domain Verification for this Container
		// App.
		custom_domain_verification_id?: string
		dapr?: [...close({
			app_id?:       string
			app_port?:     number
			app_protocol?: string
		})]
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		ingress?: [...close({
			allow_insecure_connections?: bool
			client_certificate_mode?:    string
			cors?: [...close({
				allow_credentials_enabled?: bool
				allowed_headers?: [...string]
				allowed_methods?: [...string]
				allowed_origins?: [...string]
				exposed_headers?: [...string]
				max_age_in_seconds?: number
			})]
			custom_domain?: [...close({
				certificate_binding_type?: string
				certificate_id?:           string
				name?:                     string
			})]
			exposed_port?:     number
			external_enabled?: bool
			fqdn?:             string
			ip_security_restriction?: [...close({
				action?:           string
				description?:      string
				ip_address_range?: string
				name?:             string
			})]
			target_port?: number
			traffic_weight?: [...close({
				label?:           string
				latest_revision?: bool
				percentage?:      number
				revision_suffix?: string
			})]
			transport?: string
		})]

		// The fully qualified domain name of the latest Container App.
		latest_revision_fqdn?: string

		// The name of the latest Container Revision.
		latest_revision_name?:   string
		location?:               string
		max_inactive_revisions?: number
		name!:                   string
		outbound_ip_addresses?: [...string]
		read_secrets?: bool
		registry?: [...close({
			identity?:             string
			password_secret_name?: string
			server?:               string
			username?:             string
		})]
		resource_group_name!: string
		revision_mode?:       string
		secret?: [...close({
			identity?:            string
			key_vault_secret_id?: string
			name?:                string
			value?:               string
		})]
		tags?: [string]: string
		template?: [...close({
			azure_queue_scale_rule?: [...close({
				authentication?: [...close({
					secret_name?:       string
					trigger_parameter?: string
				})]
				name?:         string
				queue_length?: number
				queue_name?:   string
			})]
			container?: [...close({
				args?: [...string]
				command?: [...string]
				cpu?: number
				env?: [...close({
					name?:        string
					secret_name?: string
					value?:       string
				})]
				ephemeral_storage?: string
				image?:             string
				liveness_probe?: [...close({
					failure_count_threshold?: number
					header?: [...close({
						name?:  string
						value?: string
					})]
					host?:                             string
					initial_delay?:                    number
					interval_seconds?:                 number
					path?:                             string
					port?:                             number
					termination_grace_period_seconds?: number
					timeout?:                          number
					transport?:                        string
				})]
				memory?: string
				name?:   string
				readiness_probe?: [...close({
					failure_count_threshold?: number
					header?: [...close({
						name?:  string
						value?: string
					})]
					host?:                    string
					initial_delay?:           number
					interval_seconds?:        number
					path?:                    string
					port?:                    number
					success_count_threshold?: number
					timeout?:                 number
					transport?:               string
				})]
				startup_probe?: [...close({
					failure_count_threshold?: number
					header?: [...close({
						name?:  string
						value?: string
					})]
					host?:                             string
					initial_delay?:                    number
					interval_seconds?:                 number
					path?:                             string
					port?:                             number
					termination_grace_period_seconds?: number
					timeout?:                          number
					transport?:                        string
				})]
				volume_mounts?: [...close({
					name?:     string
					path?:     string
					sub_path?: string
				})]
			})]
			cooldown_period_in_seconds?: number
			custom_scale_rule?: [...close({
				authentication?: [...close({
					secret_name?:       string
					trigger_parameter?: string
				})]
				custom_rule_type?: string
				metadata?: [string]: string
				name?: string
			})]
			http_scale_rule?: [...close({
				authentication?: [...close({
					secret_name?:       string
					trigger_parameter?: string
				})]
				concurrent_requests?: string
				name?:                string
			})]
			init_container?: [...close({
				args?: [...string]
				command?: [...string]
				cpu?: number
				env?: [...close({
					name?:        string
					secret_name?: string
					value?:       string
				})]
				ephemeral_storage?: string
				image?:             string
				memory?:            string
				name?:              string
				volume_mounts?: [...close({
					name?:     string
					path?:     string
					sub_path?: string
				})]
			})]
			max_replicas?:                number
			min_replicas?:                number
			polling_interval_in_seconds?: number
			revision_suffix?:             string
			tcp_scale_rule?: [...close({
				authentication?: [...close({
					secret_name?:       string
					trigger_parameter?: string
				})]
				concurrent_requests?: string
				name?:                string
			})]
			termination_grace_period_seconds?: number
			volume?: [...close({
				mount_options?: string
				name?:          string
				storage_name?:  string
				storage_type?:  string
			})]
		})]
		workload_profile_name?: string
		timeouts?:              #timeouts
	})

	#timeouts: close({
		read?: string
	})
}
