package res

#aws_memorydb_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_memorydb_cluster")
	close({
		acl_name!:                   string
		arn?:                        string
		auto_minor_version_upgrade?: bool
		cluster_endpoint?: [...close({
			address?: string
			port?:    number
		})]
		data_tiering?:         bool
		description?:          string
		engine?:               string
		engine_patch_version?: string
		engine_version?:       string
		final_snapshot_name?:  string
		id?:                   string
		kms_key_arn?:          string
		maintenance_window?:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		multi_region_cluster_name?: string
		name?:                      string
		name_prefix?:               string
		timeouts?:                  #timeouts
		node_type!:                 string
		num_replicas_per_shard?:    number
		num_shards?:                number
		parameter_group_name?:      string
		port?:                      number
		security_group_ids?: [...string]
		shards?: [...close({
			name?: string
			nodes?: [...close({
				availability_zone?: string
				create_time?:       string
				endpoint?: [...close({
					address?: string
					port?:    number
				})]
				name?: string
			})]
			num_nodes?: number
			slots?:     string
		})]
		snapshot_arns?: [...string]
		snapshot_name?:            string
		snapshot_retention_limit?: number
		snapshot_window?:          string
		sns_topic_arn?:            string
		subnet_group_name?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		tls_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
