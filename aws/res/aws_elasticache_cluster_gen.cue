package res

import "list"

#aws_elasticache_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_elasticache_cluster")
	close({
		apply_immediately?:          bool
		arn?:                        string
		auto_minor_version_upgrade?: string
		availability_zone?:          string
		az_mode?:                    string
		cache_nodes?: [...close({
			address?:           string
			availability_zone?: string
			id?:                string
			outpost_arn?:       string
			port?:              number
		})]
		cluster_address?:        string
		cluster_id!:             string
		configuration_endpoint?: string
		engine?:                 string
		engine_version?:         string
		engine_version_actual?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		final_snapshot_identifier?: string
		id?:                        string
		ip_discovery?:              string
		maintenance_window?:        string
		network_type?:              string
		node_type?:                 string
		log_delivery_configuration?: matchN(1, [#log_delivery_configuration, list.MaxItems(2) & [...#log_delivery_configuration]])
		timeouts?:               #timeouts
		notification_topic_arn?: string
		num_cache_nodes?:        number
		outpost_mode?:           string
		parameter_group_name?:   string
		port?:                   number
		preferred_availability_zones?: [...string]
		preferred_outpost_arn?: string
		replication_group_id?:  string
		security_group_ids?: [...string]
		snapshot_arns?: [...string]
		snapshot_name?:            string
		snapshot_retention_limit?: number
		snapshot_window?:          string
		subnet_group_name?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		transit_encryption_enabled?: bool
	})

	#log_delivery_configuration: close({
		destination!:      string
		destination_type!: string
		log_format!:       string
		log_type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
