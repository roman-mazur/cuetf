package data

#aws_opensearch_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearch_domain")
	close({
		access_policies?: string
		advanced_options?: [string]: string
		advanced_security_options?: [...close({
			anonymous_auth_enabled?:         bool
			enabled?:                        bool
			internal_user_database_enabled?: bool
		})]
		arn?: string
		auto_tune_options?: [...close({
			desired_state?: string
			maintenance_schedule?: [...close({
				cron_expression_for_recurrence?: string
				duration?: [...close({
					unit?:  string
					value?: number
				})]
				start_at?: string
			})]
			rollback_on_disable?: string
			use_off_peak_window?: bool
		})]
		cluster_config?: [...close({
			cold_storage_options?: [...close({
				enabled?: bool
			})]
			dedicated_master_count?:        number
			dedicated_master_enabled?:      bool
			dedicated_master_type?:         string
			instance_count?:                number
			instance_type?:                 string
			multi_az_with_standby_enabled?: bool
			node_options?: [...close({
				node_config?: [...close({
					count?:   number
					enabled?: bool
					type?:    string
				})]
				node_type?: string
			})]
			warm_count?:   number
			warm_enabled?: bool
			warm_type?:    string
			zone_awareness_config?: [...close({
				availability_zone_count?: number
			})]
			zone_awareness_enabled?: bool
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		cognito_options?: [...close({
			enabled?:          bool
			identity_pool_id?: string
			role_arn?:         string
			user_pool_id?:     string
		})]
		created?:                           bool
		dashboard_endpoint?:                string
		dashboard_endpoint_v2?:             string
		deleted?:                           bool
		domain_endpoint_v2_hosted_zone_id?: string
		domain_id?:                         string
		domain_name!:                       string
		ebs_options?: [...close({
			ebs_enabled?: bool
			iops?:        number
			throughput?:  number
			volume_size?: number
			volume_type?: string
		})]
		encryption_at_rest?: [...close({
			enabled?:    bool
			kms_key_id?: string
		})]
		endpoint?:       string
		endpoint_v2?:    string
		engine_version?: string
		id?:             string
		identity_center_options?: [...close({
			enabled_api_access?:           bool
			identity_center_instance_arn?: string
			roles_key?:                    string
			subject_key?:                  string
		})]
		ip_address_type?: string
		log_publishing_options?: [...close({
			cloudwatch_log_group_arn?: string
			enabled?:                  bool
			log_type?:                 string
		})]
		node_to_node_encryption?: [...close({
			enabled?: bool
		})]
		off_peak_window_options?: [...close({
			enabled?: bool
			off_peak_window?: [...close({
				window_start_time?: [...close({
					hours?:   number
					minutes?: number
				})]
			})]
		})]
		processing?: bool
		snapshot_options?: [...close({
			automated_snapshot_start_hour?: number
		})]
		software_update_options?: [...close({
			auto_software_update_enabled?: bool
		})]
		tags?: [string]: string
		vpc_options?: [...close({
			availability_zones?: [...string]
			security_group_ids?: [...string]
			subnet_ids?: [...string]
			vpc_id?: string
		})]
	})
}
