package res

import "list"

#aws_elasticache_replication_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_replication_group")
	apply_immediately?:              bool
	arn?:                            string
	at_rest_encryption_enabled?:     bool
	auth_token?:                     string
	auth_token_update_strategy?:     string
	auto_minor_version_upgrade?:     string
	automatic_failover_enabled?:     bool
	cluster_enabled?:                bool
	cluster_mode?:                   string
	configuration_endpoint_address?: string
	data_tiering_enabled?:           bool
	description!:                    string
	engine?:                         string
	engine_version?:                 string
	engine_version_actual?:          string
	final_snapshot_identifier?:      string
	global_replication_group_id?:    string
	id?:                             string
	ip_discovery?:                   string
	kms_key_id?:                     string
	maintenance_window?:             string
	member_clusters?: [...string]
	multi_az_enabled?:       bool
	network_type?:           string
	node_type?:              string
	notification_topic_arn?: string
	num_cache_clusters?:     number
	num_node_groups?:        number
	parameter_group_name?:   string
	port?:                   number
	preferred_cache_cluster_azs?: [...string]
	primary_endpoint_address?: string
	reader_endpoint_address?:  string
	replicas_per_node_group?:  number
	replication_group_id!:     string
	security_group_ids?: [...string]
	security_group_names?: [...string]
	snapshot_arns?: [...string]
	snapshot_name?:            string
	snapshot_retention_limit?: number
	snapshot_window?:          string
	subnet_group_name?:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	transit_encryption_enabled?: bool
	transit_encryption_mode?:    string
	user_group_ids?: [...string]
	log_delivery_configuration?: #log_delivery_configuration | list.MaxItems(2) & [...#log_delivery_configuration]
	timeouts?: #timeouts

	#log_delivery_configuration: {
		destination!:      string
		destination_type!: string
		log_format!:       string
		log_type!:         string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
