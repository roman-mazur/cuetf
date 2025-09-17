package data

#aws_elasticsearch_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticsearch_domain")
	close({
		access_policies?: string
		advanced_options?: [string]: string
		advanced_security_options?: [...close({
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
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		cluster_config?: [...close({
			cold_storage_options?: [...close({
				enabled?: bool
			})]
			dedicated_master_count?:   number
			dedicated_master_enabled?: bool
			dedicated_master_type?:    string
			instance_count?:           number
			instance_type?:            string
			warm_count?:               number
			warm_enabled?:             bool
			warm_type?:                string
			zone_awareness_config?: [...close({
				availability_zone_count?: number
			})]
			zone_awareness_enabled?: bool
		})]
		cognito_options?: [...close({
			enabled?:          bool
			identity_pool_id?: string
			role_arn?:         string
			user_pool_id?:     string
		})]
		created?:     bool
		deleted?:     bool
		domain_id?:   string
		domain_name!: string
		ebs_options?: [...close({
			ebs_enabled?: bool
			iops?:        number
			throughput?:  number
			volume_size?: number
			volume_type?: string
		})]
		elasticsearch_version?: string
		encryption_at_rest?: [...close({
			enabled?:    bool
			kms_key_id?: string
		})]
		endpoint?:        string
		id?:              string
		kibana_endpoint?: string
		log_publishing_options?: [...close({
			cloudwatch_log_group_arn?: string
			enabled?:                  bool
			log_type?:                 string
		})]
		node_to_node_encryption?: [...close({
			enabled?: bool
		})]
		processing?: bool
		snapshot_options?: [...close({
			automated_snapshot_start_hour?: number
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
