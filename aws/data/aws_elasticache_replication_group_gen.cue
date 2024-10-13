package data

#aws_elasticache_replication_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_elasticache_replication_group")
	arn?:                            string
	auth_token_enabled?:             bool
	automatic_failover_enabled?:     bool
	cluster_mode?:                   string
	configuration_endpoint_address?: string
	description?:                    string
	id?:                             string
	log_delivery_configuration?: [...{
		destination?:      string
		destination_type?: string
		log_format?:       string
		log_type?:         string
	}]
	member_clusters?: [...string]
	multi_az_enabled?:         bool
	node_type?:                string
	num_cache_clusters?:       number
	num_node_groups?:          number
	port?:                     number
	primary_endpoint_address?: string
	reader_endpoint_address?:  string
	replicas_per_node_group?:  number
	replication_group_id!:     string
	snapshot_retention_limit?: number
	snapshot_window?:          string
}
