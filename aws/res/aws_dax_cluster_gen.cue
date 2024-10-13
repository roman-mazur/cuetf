package res

import "list"

#aws_dax_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dax_cluster")
	arn?: string
	availability_zones?: [...string]
	cluster_address?:                  string
	cluster_endpoint_encryption_type?: string
	cluster_name!:                     string
	configuration_endpoint?:           string
	description?:                      string
	iam_role_arn!:                     string
	id?:                               string
	maintenance_window?:               string
	node_type!:                        string
	nodes?: [...{
		address?:           string
		availability_zone?: string
		id?:                string
		port?:              number
	}]
	notification_topic_arn?: string
	parameter_group_name?:   string
	port?:                   number
	replication_factor!:     number
	security_group_ids?: [...string]
	subnet_group_name?: string
	tags?: [string]: string
	tags_all?: [string]: string
	server_side_encryption?: #server_side_encryption | list.MaxItems(1) & [...#server_side_encryption]
	timeouts?: #timeouts

	#server_side_encryption: enabled?: bool

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
